# Solodev CMS Documentation

Source for the [Solodev CMS](https://www.solodev.com) documentation site, built with [Retype](https://retype.com) and published to **[cms.solodev.net](https://cms.solodev.net/)**.

## Browse the docs

| Section | What's there |
| --- | --- |
| [Quickstart](https://cms.solodev.net/quickstart/) | Deployment guides for CMS Micro, Pro, Enterprise, and CMS for EKS |
| [Websites](https://cms.solodev.net/websites/) | Adding a website, managing files/folders/pages, website settings |
| [Modules](https://cms.solodev.net/modules/) | The prebuilt module catalog (Blog, Calendar, Datatable, and more) and building your own |
| [Forms](https://cms.solodev.net/forms/) | Contact forms and custom Module Forms |
| [Documents](https://cms.solodev.net/documents/) | The standalone file repository, separate from any website |
| [Engage](https://cms.solodev.net/engage/) | Segments, File Groups, Scheduler, Experiments |
| [Organization](https://cms.solodev.net/organization/) | Users, Groups, Contacts, Agents |
| [Admin](https://cms.solodev.net/admin/) | Settings, APIs, and platform-wide configuration |
| [Providers](https://cms.solodev.net/providers/) | Connecting the CMS to outside services (Git hosts, SSL, CDN, CRM, and more) |
| [Shortcodes](https://cms.solodev.net/shortcodes/) | The full shortcode reference |
| [Support](https://cms.solodev.net/support/) | Tasks and other support tooling |
| [Release Notes](https://cms.solodev.net/release-notes/) | Version history |

## Working on the docs locally

```bash
npm install
npx retype start
```

Serves a live preview (URL printed in the terminal -- pass `--port <number>` to pin one) with hot reload on save. A [Retype key](https://retype.com/purchase/) is required to preview past the 100-page free limit -- add yours to a local `.env` as `RETYPE_KEY=...` (never commit it; it's already git-ignored), or register it once with:

```bash
npx retype wallet --add YOUR_KEY
```

## Deploying

Deployment is handled by [`.github/workflows/workflow.yml`](.github/workflows/workflow.yml) -- it builds with Retype and syncs the static output to the `cms-documentation` S3 bucket. It only runs on **version tags** (`v*`), not on every push to `master`. To ship a change that's already on `master`:

```bash
git tag v11.9
git push origin v11.9
```

## Content structure

Each page is a folder under `src/` containing an `index.md` (content) and `index.yml` (nav order, icon, and title). Folder nesting mirrors the left nav exactly -- a subfolder becomes a child page. See any existing page for the conventions in use (image paths, tables, `!!! Note:` / `!!! Tip:` callouts, `{% tabs %}` blocks).
