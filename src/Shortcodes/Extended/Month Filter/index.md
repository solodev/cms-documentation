Displays a dropdown of months that visitors can use to filter content by month.

**Shortcode:**

```js
[month_filter]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[id]` | (Optional) The ID of the dropdown, which the label also points to. Default: `month_filter`.
`[class]`	| (Optional) The CSS class of the dropdown. It replaces the default class rather than adding to it. Default: `month_filter`.
`[label]`	| (Optional) The label text. Default: `Month`. If you set it to an empty value, the label is hidden visually and still says "Month" for screen readers.
`[show_label]` | (Optional) Set to 0 or false to hide the label visually and keep it for screen readers. Default: `1 (shown)`.
`[bootstrap_version]`	| (Optional) Picks the class used to hide the label: visually-hidden for 5 and above, sr-only below that. Default: `5`.


**Code Example:**

```js
[month_filter id="event_month" class="form-select" show_label="false"]
```

**Output:**

```html
<label class="visually-hidden" for="event_month">Month</label>
<select class="form-select" id="event_month">
  <option value="1">January</option>
  <option value="2">February</option>
  ...
  <option value="12">December</option>
</select>
```