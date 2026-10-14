Returns a start and end date formatted according to [PHP's date](https://www.php.net/manual/en/function.date.php) function. It works like Print Date, but for a date range. When both dates fall in the same year, month, or day, you can set a shorter format with `same_year_format`, `same_month_format`, or `same_day_format`. For all-day events, use `all_day_format`. This keeps ranges like "October 13–15, 2026" clean and easy to read.

**Shortcode:**

```js
[print_date_range]
``` 

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[format]``` | **(Required)** The default PHP date format, such as `M j, Y`. It's used for both dates unless one of the alternate formats below applies.
```[start_timestamp]``` | **(Required)** The start date as a Unix epoch timestamp.
```[end_timestamp]``` | **(Optional)** The end date as a Unix epoch timestamp. If omitted, only the start date is shown, using `format`.
```[same_year_format]``` | **(Optional)** The format used for both dates when they fall in the same year.
```[same_month_format]``` | **(Optional)** The format used for the end date when both dates fall in the same month. The start date still uses `format`. For example, `format="M j"` with `same_month_format="j, Y"` gives "Jan 5 - 9, 2026".
```[same_day_format]``` | **(Optional)** The format used for the end date when both dates fall on the same day. The start date still uses `format`. For example, `same_day_format="g:i a"` shows only the end time.
```[all_day_format]``` | **(Optional)** The format used when the start and end share the same date, hour, and minute. The date is shown once, with no delimiter.
```[delimiter]``` | **(Optional)** The text placed between the start and end dates. Default: `" - "`.

**Code Examples:**

Basic range:

```js
[print_date_range format="F d, Y g:ia" start_timestamp="{{start_time}}" end_timestamp="{{end_time}}"]
``` 

Output: March 05, 2026 9:00am - March 07, 2026 5:00pm

Same-day event, showing the date once and only the end time:

```js
[print_date_range format="F d, Y g:ia" start_timestamp="{{start_time}}" end_timestamp="{{end_time}}" same_day_format="g:ia"]
``` 

Output: March 05, 2026 9:00am - 5:00pm

Multi-day event in the same month, with a custom delimiter:

```js
[print_date_range format="F j" start_timestamp="{{start_time}}" end_timestamp="{{end_time}}" same_month_format="j, Y" delimiter="–"]
``` 

Output: March 5–7, 2026

Start date only (leave out end_timestamp):

```js
[print_date_range format="F d, Y g:ia" start_timestamp="{{start_time}}"]
``` 

Output: March 05, 2026 9:00am

<!-- {{{start_time}}} -->