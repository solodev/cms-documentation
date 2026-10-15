Displays a search box + submit button. 

**Shortcode:**

```js
[search_filter]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[id]` | (Optional) The ID of the search box, which the label also points to. Default: `table_filter`.
`[class]` | (Optional) The CSS class of the search box. It replaces the default class rather than adding to it. Default: `form-control`.
`[button_id]` | (Optional) The ID of the search button. Default: `search_btn`.
`[button_class]` | (Optional) The CSS class of the search button. It replaces the default classes rather than adding to them. Default: `btn btn-primary`.
`[button_text]` | (Optional) The text on the search button. Default: `Search`.
`[label]` | (Optional) The label text. Default: `Search`. If you set it to an empty value, the label is hidden visually and still says "Search" for screen readers.
`[show_label]` | (Optional) Set to `0` or `false` to hide the label visually and keep it for screen readers. Default: `1` (shown).
`[bootstrap_version]` | (Optional) Picks the class used to hide the label: `visually-hidden` for `5` and above, `sr-only` below that. Default: `5`.

**Code Example:**

```js
[search_filter id="event_search" button_text="Find" show_label="false"]
```

**Output:**

```html
<form method="get" action="">
  <label class="visually-hidden" for="event_search">Search</label>
  <div class="input-group">
    <input class="form-control" id="event_search" name="search" type="text" value="">
    <div class="input-group-btn">
      <button class="btn btn-primary" id="search_btn" type="submit">Find</button>
    </div>
  </div>
</form>
```

!!!Note:
The form reloads the current page with `?search=` and the entered text added to the URL, and the box is pre-filled with that search on the next load. For example, after searching "festival", the box shows value="festival".
!!!