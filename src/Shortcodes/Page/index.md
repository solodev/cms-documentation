# Page

Page and folder metadata &mdash; titles, descriptions, navigation, breadcrumbs.

**Shortcode** | **Description**
:--- | ---
[Page Title](/shortcodes/page/page-title/) | The current page's title.
[Page Description](/shortcodes/page/page-description/) | The current page's meta description.
[Parent Folder Title](/shortcodes/page/parent-folder-title/) | The current page's parent folder's title.
`parent_description` | The current page's parent folder's description.
`section_title` | Same as Parent Folder Title, but falls back to the page's own title if the parent folder is the site root (`www`).
`section_description` | Same as `parent_description`, but falls back to the page's own description if the parent folder is the site root.
`category_name` | Looks up a Datatable category's name by its `id`.
`category_description` | Looks up a Datatable category's description by its `id`.
`page_path` | The current request's URL path (`$_SERVER['REQUEST_URI']`).
`breadcrumb` | The formatted breadcrumb trail up to the site root. Optional `delimiter` (default `\|`) and `home_overwrite` (replace the word "Home", e.g. with an icon).
`parent_nav` | The current navigation items of the parent folder.
`solodev_nav` | Renders the folder tree as navigation markup. Requires `parent_category_id` (the folder to start from); optional `levels` (how deep) and `nav_class`.
`print_event_end` | Like [Print Date](/shortcodes/core/print-date/), formatted for a Calendar entry's end time &mdash; typically paired with `print_date` for the start time. Requires `format`; optional `separator`.
