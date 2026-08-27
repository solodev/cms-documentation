# Website Branches and Version Control

Solodev CMS supports Git-backed branching for websites and the structured content that belongs to them. A branch is not a full copy of the site &mdash; it is a sparse overlay that only stores what changed on that branch. This keeps branching fast even on large sites, and it means creating a branch does not duplicate every file, module entry, or record in the database.

!!! Note
This is a CMS-level, developer-facing capability. Routine content editing does not require understanding branch internals &mdash; but administrators managing a Git-connected site, and anyone approving merges, should understand how it behaves.
!!!

## How overlays work

When you create a branch, the CMS does **not** copy every SQL row or every file for that site. Instead:

- File and folder changes are stored as branch-local overrides in the asset map. If a branch has no override for a given file, it inherits the file from the live branch.
- Structured "virtual entities" (see below) are stored as branch-local pointers. If a branch has no pointer for an entry, it inherits the live-branch version.
- Deleting an object on a non-live branch does not physically delete it. It writes a tombstone &mdash; the object still exists in the shared database, but is marked deleted for that branch only. The file content is removed from that branch's checked-out working tree and committed normally.
- Deleting on the live branch keeps the CMS's normal, permanent deletion behavior.
- Only the active branch's changed row is written when you create, edit, or delete something. Nothing else is touched.
- Merging copies the source branch's changed overrides onto the target branch. Merging into the live branch publishes the source branch's staged version.

Branch visibility is enforced directly in SQL (correlated `EXISTS`/`NOT EXISTS` checks against branch/object indexes) before sorting and pagination happen, not by filtering results in PHP afterward. That is what keeps list views and grids fast even with many branches active.

## What is branch-versioned

Not everything in the CMS is branch-aware. Content and structure that can differ per branch ("virtual entities") currently includes:

- Calendars and Calendar entries
- Datatables and Datatable entries
- Forms
- Segments
- Schedulers
- Experiments
- File Groups
- Page Layouts and Page Components

Organization and runtime records &mdash; **Users, Groups, Contacts, Agents, and Tasks** &mdash; are branch-global. They are the same everywhere regardless of which branch is checked out, because they represent people and system state, not published content.

## Branch roles

A fresh installation only needs one branch:

- **main** &mdash; the production/live branch. This is what the public site serves.
- **develop** (optional) &mdash; an integration/staging branch, useful when a team wants a release gate before content reaches `main`.
- **Developer-created branches** &mdash; isolated, sparse branches for a specific change, normally merged upward through a pull request.

You do not need to pre-create `develop` or any Gitflow-style branch set. The sparse overlay model works with just `main` until a team actually needs more structure.

## Deleting a branch

Deleting the Git branch itself is a separate lifecycle event from deleting content on a branch. The CMS only removes a branch's registry row, its sparse asset-map rows, and its virtual-entity pointers after a pruned fetch confirms the branch's ref no longer exists on the remote. A stale local ref is never treated as authoritative on its own, so a failed fetch cannot accidentally trigger cleanup, and a branch that was only deleted locally will not silently disappear from the CMS branch picker.

## Working with Git providers

Branch overlays sit on top of the CMS's Git provider support:

- **Git Local** is the CMS-hosted provider. It can bootstrap a bare repository and working tree, seed the initial commit from the current filesystem, and expose an authenticated clone/push endpoint at `/git/cms.git`.
- **GitHub** and **Bitbucket** can be configured as remote providers for the main CMS repository, with support for a repo URL, branch, remote name, and either a token or SSH key.
- Git HTTP access authenticates against real CMS users &mdash; either a CMS username with a profile API token, or a CMS username with the CMS password. The recommended credential is the profile API token.
- A push to the CMS-hosted repository runs a post-receive hook that calls the CMS's Git sync command with the authenticated Git user's identity, so changes land in the CMS attributed to the person who pushed them.

Website-level provider mapping (`local_git`, `github`, or `bitbucket` per website) is available today from Add Website and Update Website. Fully automatic per-website repositories or submodules under `Websites/` are still on the roadmap.

!!! Note
A CMS git push only reaches the live database through the CMS's own post-receive hook. Committing inside a checkout that was not cloned from the CMS's authenticated Git endpoint does not sync anything back.
!!!
