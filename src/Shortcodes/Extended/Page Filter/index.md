Rows-per-page dropdown.

**Shortcode:**

```js
[page_filter]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[id]` | **(Optional)** The ID of the dropdown, which the label also points to. Default: `page_filter`.
`[class]` | **(Optional)** The CSS class of the dropdown. It replaces the default class rather than adding to it. Default: `page_filter`.
`[list_values]` | **(Optional)** A comma-separated list of page sizes to offer, such as 5, 10, 20, 25. Default: `4, 8, 16, 32, 64, with 8 selected`.

**Code Example:**

```js
[page_filter list_values="8,16,32"]
```

**Output:**

```html
<label class="visually-hidden" for="event_month">Month</label>
<select class="form-select" id="event_month">
  <option selected value="8">8</option>
  <option value="16">16</option>
  <option value="32">32</option>
</select>
```