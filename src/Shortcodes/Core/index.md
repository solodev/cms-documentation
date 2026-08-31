# Core

Fundamentals: admin/frontend gating, asset files, string helpers, dates, error reporting, and layout/formatting helpers.

## Utility

**Shortcode** | **Description**
:--- | ---
[Admin](/shortcodes/core/admin/) | `[admin_only]...[/admin_only]` shows content only on the backend; `[non_admin_only]...[/non_admin_only]` shows it only on the live frontend.
[Report Errors](/shortcodes/core/report-errors/) | Turns on PHP error display and warnings for the rest of the request.
[Get Asset File Name](/shortcodes/core/get-asset-file-name/) | Returns the file name for an `id` (asset_file_id).
[Get Asset File URL](/shortcodes/core/get-asset-file-url/) | Returns the URL path for an `id` (asset_file_id).
[Lower Case](/shortcodes/core/lower-case/) | `[lower_case]...[/lower_case]` &mdash; lowercases the enclosed content.
[No Spaces](/shortcodes/core/no-spaces/) | `[no_spaces]...[/no_spaces]` &mdash; strips spaces from the enclosed content.
[Print Date](/shortcodes/core/print-date/) | Formats a date using PHP's `date()` syntax.
`print_date_range` | Like Print Date, but for a start/end pair &mdash; accepts `same_year_format`, `same_month_format`, `same_day_format`, and `all_day_format` to shorten the output when both ends fall in the same period.
`month_list` | Loops the twelve months starting from `start_month`/`start_year` (default: current), exposing `{{name}}`, `{{abbr}}`, `{{number}}`, `{{id}}`, `{{year}}` per iteration.
`striptags` | `[striptags]...[/striptags]` &mdash; strips HTML tags from the enclosed content.
`code` | `[code]...[/code]` &mdash; outputs the enclosed content as an escaped code block.
`random` (alias `rand`) | Returns a random integer between `min` (default 0) and `max` (default 50000).
`url_var` | Returns the `$_REQUEST` value named by the required `name` attribute &mdash; useful for populating a confirmation page with the query string that led to it.
`value_isset` | Returns `override` if set, otherwise `default`.
`createJSNowTime` | Outputs the current time for use in inline JavaScript.
`solo_comment` | `[solo_comment type="php|html"]...[/solo_comment]` &mdash; wraps content in a real comment of the given type, stripping any comment markers already inside it.

## Layout & Formatting

Bootstrap-era column and content-block helpers. Each is an enclosing shortcode: `[one_half]...[/one_half]`.

**Shortcode** | **Description**
:--- | ---
`one_half` / `one_half_last` | Two-column split (50/50). Use the `_last` variant on the final column in a row to clear the float.
`one_third` / `one_third_last`, `two_thirds` / `two_thirds_last` | Three-column split (33/33/33, or 33/66).
`one_fourth` / `one_fourth_last`, `three_fourths` / `three_fourths_last` | Four-column split (25/25/25/25, or 25/75).
`one_fifth`, `two_fifth`, `three_fifth`, `four_fifth` (each with a `_last` variant) | Five-column split.
`one_sixth` / `one_sixth_last`, `five_sixth` / `five_sixth_last` | Six-column split (one-sixth, or one-sixth/five-sixths).
`clear` | Self-closing &mdash; clears floated columns.
`clearline` | Self-closing &mdash; a horizontal rule followed by a clear.
`callout` | `[callout width="" align="left|right|center"]...[/callout]` &mdash; a styled callout box.
`button` | `[button link="" size="medium" color="" target="_self" caption="" align="right"]Label[/button]` &mdash; a styled button/link.
`tabgroup` / `tab` | `[tabgroup]` wraps one or more `[tab title="..." id="..."]...[/tab]` blocks into a tabbed interface.
`toggle` | `[toggle title="..." style="list"]...[/toggle]` &mdash; a collapsible content block.

!!! Note:
These layout helpers only supply markup and CSS class names (`one_half`, `callout`, and so on) &mdash; your website's own CSS/JS needs to style and, for tabs/toggle, wire up the interaction.
!!!
