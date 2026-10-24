The Layouts Library is a browsable set of seeded page layouts and reusable components used by the Add Page flow. It is organized into **System Layouts**, **Custom Layouts**, and **Page Components**.

**Name** | **Description**
:--- | ---
[System Layouts](/admin/settings/layouts/#system-layouts) | Starter page shells seeded by the CMS.
[Custom Layouts](/admin/settings/layouts/#custom-layouts) | Reusable layouts saved from real pages.
[Page Components](/admin/settings/layouts/#page-components) | Section-level building blocks.

!!! Note
Layouts are a browse-and-copy library, not a full CRUD screen &mdash; there's no in-place Edit or Delete for a layout here. **Preview** and **Copy** are the two available actions.
!!!

**Name** | **Description**
:--- | ---
Name / Title / Description | Identify the layout. Name is required. When you start from "Use as Base," these are pre-filled from the source layout (with "Copy" appended to Name and Title) — change them before saving.
Status | Active, Draft, or Disabled.
Framework | Bootstrap, Tailwind, Foundation, Bulma, or Custom.
Display Rank | Sort order in the library.
Key | A short identifier, saved as a lowercase hyphenated slug. Leave it blank to generate one from the Name.
Base Template | Optionally nest this layout inside another one — if selected, it's inserted into the first empty dynamic div of the chosen base.
Preview HTML | A lighter markup snippet for a cleaner card preview than the full Layout HTML.
Layout HTML | The full layout markup, edited as raw HTML. It becomes the page's backing content file when someone creates a page from this layout.

## System Layouts

System layouts include the Base, Homepage, Sectional, and Content templates. They are read-only. Use them as-is or copy one as a starting point.

<p><img src="../../../images/admin/settings/layouts/layouts-library.png" alt="System Layouts" class="border"></p>

## Custom Layouts

Custom layouts are reusable layouts saved from existing pages. This list is empty until a layout has been saved.

To add a custom layout, open the `.stml` file and enable **Save as Layout** in the [Update modal](/websites/page-overview/update-page/#advanced).

<p><img src="../../../images/admin/settings/layouts/custom-layouts.png" alt="Custom Layouts" class="border"></p>

## Page Components

Smaller, section-level building blocks (hero banners, promo tiles, overview grids) meant to be dropped into a layout's body regions rather than used as a full page shell on their own.

<p><img src="../../../images/admin/settings/layouts/page-components.png" alt="Page Components library, showing Hero Classic, Sectional Tile, and Overview Section" class="border"></p>

