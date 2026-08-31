# Extended

Conditionals, filters, and add-on integrations.

## Conditionals

**Shortcode** | **Description**
:--- | ---
`cond` (aliases `if_cond`, `sub_cond`) | `[cond type="is|is_not|greater_than|less_than" subject="..." value="..."]...[else]...[/cond]` &mdash; an if/else block. `sub_cond` is the same function, just meant for nesting inside another `[cond]`.
`is_set` (alias `if_set`) | `[is_set value="{{field}}"]...[/is_set]` &mdash; renders the enclosed content only if `value` is set/non-empty.
`is_empty` (alias `if_empty`) | `[is_empty value="{{field}}"]...[/is_empty]` &mdash; renders the enclosed content only if `value` is empty.
`repeater_entries_exists` | `[repeater_entries_exists id="..." type="does|does_not"]...[/repeater_entries_exists]` &mdash; renders the enclosed content based on whether a [repeater](/shortcodes/module/) with the same attributes would return any entries.

## Filters

Each renders a `<select>` or `<input>` that a page's JS pairs with [js_pager](/shortcodes/module/) to filter a repeater without a full page reload.

**Shortcode** | **Description**
:--- | ---
`category_filter` | Category dropdown. Requires `calendar_id` or `category_group_id`; optional `input_class`, `input_id`, `all_value`, `all_text`, `parent_category`.
`date_filter` | Date-range dropdown (Today, Last 7 Days, This Year, etc., plus optional explicit `years`). Optional `class`, `id`, `label`, `show_all_option`, `all_value`, `default_filters`.
`month_filter` | Month dropdown (January&ndash;December). Optional `id`, `class`, `label`.
`tag_filter` | Tag dropdown. Optional `id`, `class`.
`search_filter` | A search box + submit button. Optional `id`, `class`, `button_id`, `button_class`, `button_text`, `label`, `show_label`, `bootstrap_version`.
`page_filter` | Rows-per-page dropdown. Optional `list_values` (comma-separated options, e.g. `5,10,20,25`).

## Google & other integrations

**Shortcode** | **Description**
:--- | ---
[Google Search](/shortcodes/extended/google-search/) | Embeds Google Custom Search (with ads) for the given `google_cse_id`.
`google_website_search` | Embeds Google Custom Search without ads &mdash; a full search box + results page, styled by your site. Requires `google_cse_id`; optional `google_api_key`/`google_maps_key`, `placeholder`, `page_location`.
[Report Errors](/shortcodes/extended/report-errors/) | Turns on PHP error display and warnings.
[YouTube Embed](/shortcodes/extended/youtube-embed/) | Embeds a YouTube video by its video ID.
`google_calendar_url` | Returns a "add to Google Calendar" URL for the current Calendar entry.
`ics_url` | Returns an `.ics` (iCal) download URL for the current Calendar entry.
`netresults_landing_connector` | Submits the current form's posted fields to a net-results.com contact list via their API. Requires `netresults_list`, `username`, `password`.
`privacy_banner` | Renders a cookie-consent/privacy banner.
`social_share_img` / `social_share_fa` | Social share links (Facebook/Twitter/LinkedIn) using image icons or Font Awesome respectively. Both require `domain`, `protocol`, `facebook`, `twitter`, `linkedin`; the image variant also needs `image_location` and `image_extension`.
