Adds a horizontal line and clears floated columns, so the content after it starts on a new line.

**Shortcode:**

```js
[clearline]
```

**Code Example:**

```js
[one_half]Left column content[/one_half]
[one_half_last]Right column content[/one_half_last]
[clearline]
<p>This paragraph starts below both columns.</p>
```

**Output:**

```
| Left column content | Right column content |
────────────────────────────────────────────────
This paragraph starts below both columns.
```

!!!Note:
This shortcode has no attributes.
!!!