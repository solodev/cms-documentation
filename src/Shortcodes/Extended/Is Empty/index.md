Shows the enclosed content only if `value` is empty or left out. If it isn't, nothing is shown, or the content after `[else]` is shown when there is one. A value of `0` doesn't count as empty.

`[if_empty]` works the same as `[is_empty]`. To nest a check inside another `[is_empty]`, use `[sub_is_empty]`, which also works the same way.

**Shortcode:**

```js
[is_empty]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[value]` | **(Required)** The value to check. Accepts a `{{field}}` token, the output of another shortcode, or any text.

**Code Example:**

```js
[is_empty value="{{phone}}"]Phone number coming soon.[/is_empty]
```

**Output:**

If `{{phone}}` is empty:

```
Phone number coming soon.
```

If `{{phone}}` has a value, nothing is shown.

**Else Example:**

Module templates are the most common place to use `[is_empty]`, since `{{field}}` tokens are filled in before the shortcode runs.

```js
[is_empty value="{{photo}}"]<img src="/_/images/placeholder.jpg" alt="Placeholder">[else]<img src="{{photo}}" alt="{{title}}">[/is_empty]
```

**Output:**

If `{{photo}}` is empty:

```html
<img src="/_/images/placeholder.jpg" alt="Placeholder">
```

<!-- {{{photo}}} -->