Displays a dropdown of categories that visitors can use to filter calendar content. Set `category_group_id` (or `id`) to choose which category group is listed.

**Shortcode:**

```js
[category_filter]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[category_group_id]` | **(Required)** The ID of the category group whose categories are listed. You can use `id` instead.
`[id]` | **(Optional)** Another name for `category_group_id`. If both are set, `category_group_id` is used.
`[class]` | **(Optional)** The CSS class applied to the dropdown. Default: `form-control`.
`[parent_category_id]` | **(Optional)** The ID of a parent category. Only its sub-categories are listed. Default: `0` (top-level categories).
`[sort]` | **(Optional)** The sort order of the top-level categories. Default: `title asc`. Sub-categories are always sorted by title.

!!!
The dropdown always uses the ID and name `category_filter`, so only one category filter works on each page. Up to four levels of sub-categories are listed. Each level is marked with a `-` prefix and indented further than the level above it. When the selection changes, the calendar on the page refreshes its events. This requires jQuery.
!!!

**Code Example:**

```js
[category_filter category_group_id="5" class="form-select"]
```

**Output:**

```html
Category <select class="form-select" id="category_filter" name="category_filter">
  <option value="">All</option>
  <option value="3" class="font-weight-bold">Community</option>
  <option value="7">- Volunteering</option>
  <option value="4" class="font-weight-bold">Workshops</option>
</select>
```

<!-- {{{title}}} -->