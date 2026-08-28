# Page Layouts

Page Layouts are a branch-versioned way to compose a page's structure from reusable Page Components, separate from a website's file-based templates. They live under Admin > Settings > Layouts.

## Creating a Page Layout

1. Go to Admin > Settings > Layouts and add a new layout.
2. Build it from Page Components. Each component can be previewed on its own before it's used in a layout.
3. Save. Preview the full layout before it's used on a live page.

## Editing and Deleting

- Update a layout from its own settings page. Since a layout can be reused across pages, a change here can affect every page built from it &mdash; preview before publishing.
- Deleting a layout is a structural change, the same caution as deleting a template: confirm nothing live still depends on it first.

Page Layouts and Page Components are branch-versioned, so changes made on a non-live branch stay isolated until merged &mdash; see [Website Branches and Version Control](/tutorials/advanced-development/website-branches-and-version-control/).
