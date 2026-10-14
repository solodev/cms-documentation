Core shortcodes for admin and frontend gating, asset files, strings, dates, error reporting, and layout and formatting.

## Utility

**Shortcode** | **Description**
:--- | ---
[Admin](/shortcodes/core/admin/) | Use `[admin_only]` to show content only in the backend, and `[non_admin_only]` to show it only on the live site.
[Report Errors](/shortcodes/extended/report-errors/) | Turns on PHP error display and warnings for the rest of the request.
[Get Asset File Name](/shortcodes/core/get-asset-file-name/) | Returns the file name for an `id` (asset_file_id).
[Get Asset File URL](/shortcodes/core/get-asset-file-url/) | Returns the URL path for an `id` (asset_file_id).
[Lower Case](/shortcodes/core/lower-case/) | Lowercases the enclosed content.
[No Spaces](/shortcodes/core/no-spaces/) | Strips spaces from the enclosed content.
[Print Date](/shortcodes/core/print-date/) | Formats a date using PHP's `date()` syntax.
[Print Date Range](/shortcodes/core/print-date-range/) | Formats a start and end date as a range.
[Month List](/shortcodes/core/month-list/) | Loops through the months of the year starting with current month.
[Strip Tags](/shortcodes/core/strip-tags/) | Strips HTML tags from the enclosed content.
[Code](/shortcodes/core/code/) | Outputs the enclosed content as an escaped code block.
[Random](/shortcodes/core/random/) (alias `rand`) | Returns a random integer between `min` (default 0) and `max` (default 50000).
[URL Variable](/shortcodes/core/url-variable/) | Returns the `$_REQUEST` value named by the required `name` attribute &mdash; useful for populating a confirmation page with the query string that led to it.
[Value Is Set](/shortcodes/core/value-is-set/) | Returns the `override` value if it's set. Otherwise, returns the `default` value.
[Create JS Now Time](/shortcodes/core/create-js-now-time/) | Outputs the current time for use in inline JavaScript.
[Solo Comment](/shortcodes/core/solo-comment/) | Wraps content in a real comment of the given type, stripping any comment markers already inside it.

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
