# Module

Pull and filter entries from a <a href="/modules/">Datatable or Calendar module</a>: repeaters, detail pages, categories, tags, and pagination.

## Repeaters (lists of entries)

**Shortcode** | **Description**
:--- | ---
`repeater` | The general-purpose list shortcode &mdash; dispatches to `datatable_repeat` or `cal_repeat` based on `type`. Requires `id` (the module's id); optional `type` (`datatable` or `calendar`, default `calendar`), `limit` (e.g. `0,4`), `order`, `where`, `display_type` (`news` or `events`, adjusts the default date filter), `category_filter`, `tag_filter`, `pages` (paginate), `offset`, `website_filter`. Use `{{field_name}}` inside to print an entry's fields &mdash; field names come from the module's Table Schema.
`cal_repeat` (alias `calendar_repeat`) | The Calendar-specific version of `repeater`. Same attributes, minus `type`.
`datatable_repeat` | The Datatable-specific version of `repeater`. Requires `id`; optional `limit`, `order`, `where`.
`repeater_entries_exists` | Renders its enclosed content only if a `repeater` with the same attributes would return entries (or, with `type="does_not"`, only if it wouldn't).
`cat_repeat` | Lists a Datatable category group's categories. Requires `id`; optional `parent_id` (list sub-categories of a category instead), `order`.

## Entry detail

**Shortcode** | **Description**
:--- | ---
`entry` | Renders a single entry's detail fields. Auto-detects Calendar vs. Datatable from context, or set `id` and `type="datatable"`/`calendar` explicitly. Automatically hides draft/expired entries.
`sub_entry` | Like `entry`, but for referencing a second, related entry nested inside an outer `[entry]` block. Requires `id`.
`datatable_detail` | The Datatable-specific version of `entry`.
`entry_url` | The URL to an entry's detail page.
`entry_mapping` | Renders a UI for mapping one entry to another (creates `Datatable_Object_Map` rows) &mdash; used to build "related entries" pickers in the editor. Requires `id` (the source module) and `type`.

## Categories & tags

**Shortcode** | **Description**
:--- | ---
`entry_categories_repeat` | Lists the categories assigned to an entry. Requires `id`; optional `type` (default `calendar`), `limit`.
`entry_tags_repeat` | Lists the tags assigned to an entry. Requires `id`; optional `type` (default `calendar`).
`category_list` | Lists a module's top-level categories.
`sub_category_list` | Lists a category's immediate sub-categories.
`sub_sub_category_list` | Lists a third level of nested categories.
`categories_exist` | Renders its enclosed content only if the module has any categories.
`sub_categories_exist` | Renders its enclosed content only if a given category has sub-categories.
`calendar_entry_attachments_repeat` | Lists an entry's attachments (photo gallery / document share). Requires `id`. The module's **Enable Attachments / Gallery** option (Modify > Advanced) must be turned on first.

## Pagination & full calendar

**Shortcode** | **Description**
:--- | ---
`js_pager_includes` | Self-closing &mdash; loads the JS libraries `js_pager`/`js_pager_controls` depend on. Include once near the top of the page.
`js_pager` | Wires a `repeater`'s output up to AJAX paging/sorting/filtering. Requires `data_source_id`; optional `data_source` (`calendar` or `datatable`), `rows`, `sort`, `order`, plus IDs to bind to any filter shortcodes already on the page (`category_filter_input_id`, `date_filter_input_id`, `table_filter_input_id`, and so on).
`js_pager_controls` | Renders the Previous/Next/page-number control template `js_pager` targets. Optional `control_id`, `callback_function`.
`js_pager_total` | Renders a template showing the total result count.
`pager_controls` | A simpler, non-AJAX Previous/Next control pair for a plain paginated `repeater`.
`js_full_calendar_includes` | Self-closing &mdash; loads the FullCalendar.io JS/CSS libraries. Required alongside `js_full_calendar`.
`js_full_calendar` | Renders an interactive month/week/day calendar view of a Calendar module's entries. Requires `calendar_id`.
`template_repeater` | Like `repeater`, but renders an Underscore.js `<script type="text/template">` block (`<%=e.field%>` syntax) for client-side re-rendering instead of server-side HTML.
`template_print_date` | Like [Print Date](/shortcodes/core/print-date/), but for use inside a `template_repeater`/`template_cond` block (Underscore template syntax).
`template_cond` (alias `template_sub_cond`) | Like [cond](/shortcodes/extended/), but for use inside a `template_repeater` block.
`template_value_isset` / `template_value_isset_assignment` | Like `value_isset`, but for use inside a `template_repeater` block; the `_assignment` variant assigns a default instead of just checking.

## Filters & archive navigation

Pair these with a `repeater` and `js_pager` to build a filterable, paginated list without a page reload — each filter shortcode registers its own input's id in a global that `js_pager` binds to automatically.

**Shortcode** | **Description**
:--- | ---
`category_filter` | Renders a dropdown of a module's categories. Requires `calendar_id` or `category_group_id`; optional `input_id` (defaults to `category_filter`, binds to `js_pager`'s `category_filter_input_id`), `input_class`, `order`, `all_text`, `all_value`, `parent_category` (list sub-categories of one category only).
`date_filter` | Renders a dropdown of date-range presets (Today, Last 7 Days, This Year, etc.), plus optional specific years. Optional `id` (binds to `js_pager`'s `date_filter_input_id`), `class`, `label`, `years` (comma list, e.g. `2023,2024`, or a range like `2020-2024`), `year_format` (`range` or `simple`), `show_all_option`, `default_filters`.
`search_filter` | Renders a keyword search box with a submit button. Optional `id` (binds to `js_pager`'s `table_filter_input_id`), `class`, `label`, `show_label`, `button_id`, `button_class`, `button_text`, `bootstrap_version`.
`tag_filter` | Renders a dropdown of tag values. Optional `id`, `class`, `tag_values` (comma-separated list — shows four placeholder tags if omitted).
`month_list` | Renders a rolling 12-month archive navigator starting from a given month/year — the pattern behind a "browse by month" blog/news sidebar. Optional `start_year`, `start_month` (default: current month/year). Inside the block, use `{{name}}`/`{{month}}` (full month name), `{{abbr}}` (abbreviated), `{{number}}`/`{{id}}` (month number), `{{year}}`.

## Forms backed by a module

**Shortcode** | **Description**
:--- | ---
`form` | Renders a Datatable's own configured form (its Form Template). Requires `id` (the Datatable's id).
`solodev_form` | Wraps `$content` in a `<form>` that submits directly to a Datatable, without a separate form template. Requires `datatable_id`, `dynamic_id`; optional `action`, `method` (default `post`).
`landing_page_form` | Renders a Datatable's form for use on a Calendar entry (landing page/blog post), including honeypot spam protection and re-population on validation error.
`form_repeater_search` | A simple search box that submits to the current page (pairs with a `repeater`'s built-in `table_filter` support).
`captcha` | Renders a CAPTCHA image + input for a form, when not viewing as an admin.
`recaptcha` | Renders Google reCAPTCHA v3 for a form, if a site-wide reCAPTCHA key is configured.
