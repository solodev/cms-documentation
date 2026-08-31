# Layouts

The Layouts Library is a browsable set of seeded page layouts and reusable components used by the Add Page flow. It lives under Settings > Layouts, organized into **System Layouts**, **Custom Layouts**, and **Page Components**.

<p><img src="../../../images/admin/settings/layouts/layouts-library.png" alt="Layouts Library, listing System Layouts and Page Components"></p>

**Name** | **Description**
:--- | ---
System Layouts | Starter page shells seeded by the CMS -- Base Template, Homepage Template, Sectional Template, and Content Template today, with more added over time. Read-only; use them directly or copy one to start from.
Custom Layouts | Reusable layouts saved from real pages, tracked here as they're used through the layout library flow. Empty until a page has saved one.
Page Components | Smaller, section-level building blocks (hero banners, promo tiles, overview grids) meant to be dropped into a layout's body regions rather than used as a full page shell on their own.

<p><img src="../../../images/admin/settings/layouts/page-components.png" alt="Page Components library, showing Hero Classic, Sectional Tile, and Overview Section"></p>

!!! Note
Layouts are a browse-and-copy library, not a full CRUD screen -- there's no in-place Edit or Delete for a layout here. **Preview** and **Copy** are the two available actions.
!!!

## Preview

Click **Preview** on any layout or component to open its real rendered markup in a new tab -- header, footer, and any sample content it ships with, exactly as a page built from it would start out.

<p><img src="../../../images/admin/settings/layouts/layout-preview.png" alt="Full-page preview of the Base Template system layout"></p>

## Copy

Click **Copy** on a layout to open the same builder used when adding a page, pre-filled with that layout's markup, framework, and description as a starting point.

<p><img src="../../../images/admin/settings/layouts/add-layout-form.png" alt="Add Layout form, pre-filled from Base Template, with a live preview panel"></p>

**Name** | **Description**
:--- | ---
Name / Title / Description | Identify your copy. Pre-filled from the source layout -- change them before saving.
Status | Active, Draft, or Disabled.
Framework | Bootstrap, Tailwind, Foundation, Bulma, or Custom.
Display Rank | Sort order in the library.
Key | A unique key for the layout.
Base Template | Optionally nest this layout inside another one -- if selected, it's inserted into the first dynamic div of the chosen base.
Preview HTML | A lighter markup snippet for a cleaner card preview than the full Layout HTML.
Layout HTML | The full markup, editable in a rich-text editor with a Source view for raw HTML.

The **Preview** panel on the right updates live as you edit. Click **Save Layout** when you're ready, or **Cancel** to discard it.
