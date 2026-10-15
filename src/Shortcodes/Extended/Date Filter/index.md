Displays a dropdown of date ranges that visitors can use to filter content by date. By default it lists preset ranges such as Today, Last 7 Days and This Year. You can also add one option per year.

**Shortcode:**

```js
[date_filter]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[id]` | **(Optional)** The ID applied to the dropdown. Default: `date_filter`.
`[class]` | **(Optional)** The CSS class applied to the dropdown. Default: `form-control date-filter`.
`[label]` | **(Optional)** The text of the dropdown's label. Default: `Date`. If left empty, the label reads `Date` and is visually hidden.
`[show_label]` | **(Optional)** Set to `0` or `false` to visually hide the label. The label stays available to screen readers. Default: `1`.
`[bootstrap_version]` | **(Optional)** The Bootstrap version used to hide the label: `visually-hidden` for version 5 and higher, `sr-only` for lower versions. Default: `5`.
`[show_all_option]` | **(Optional)** Set to `0` to remove the "All Dates" option. Default: `1`.
`[all_value]` | **(Optional)** The value of the "All Dates" option. Default: empty.
`[default_filters]` | **(Optional)** Set to `0` to remove the preset date ranges. Default: `1`.
`[years]` | **(Optional)** Adds one option per year. Use a comma-separated list (`2021,2023,2025`) or a range of two years separated by a dash (`2020-2025`). To add a single year, use a range such as `2025-2025`.
`[year_format]` | **(Optional)** The value format of the year options: `range` (for example `01/01/2025-12/31/2025`) or `simple` (for example `2025`). Default: `range`.

**Preset date ranges:**

**Label** | **Value**
:--- | ---
Today | `today`
Yesterday | `yesterday`
Last 7 Days | `week`
Last 30 Days | `month`
Last 90 Days | `quarter`
This Year | `year`
Last Year | `last_year`

!!!
For calendar content, an entry matches when its start time falls in the selected range, or when the event is still running at the end of the range. For other content, the entry's last modified date is used, or its date added if it has never been modified.
!!!

**Code Example:**

```js
[date_filter id="news-date" class="form-select" label="Published" default_filters="0" years="2023-2025"]
```

**Output:**

```html
<label for="news-date">Published</label>
<select class="form-select" id="news-date">
  <option selected value="">All Dates</option>
  <option value="01/01/2023-12/31/2023">2023</option>
  <option value="01/01/2024-12/31/2024">2024</option>
  <option value="01/01/2025-12/31/2025">2025</option>
</select>
```