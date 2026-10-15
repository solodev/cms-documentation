Displays a dropdown of tags that visitors can use to filter content by tags.

**Shortcode:**

```js
[tag_filter]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[id]` | (Optional) The ID of the dropdown, which the label also points to. Default: `tag_select`.
`[class]`	| (Optional) The CSS class of the dropdown. It replaces the default class rather than adding to it. Default: `tag_select`.

**Code Example:**

```js
[tag_filter id="tag_select" class="form-select"]
```

**Output:**

```html
<label class="visually-hidden" for="tag_select">Tags</label>
<select class="form-select" id="tag_select">
  <option value="community">Community</option>
  <option value="departments">Departments</option>
  ...
  <option value="social">Social</option>
</select>
```