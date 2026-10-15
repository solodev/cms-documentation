Shows the enclosed content only if `value` is set and not empty. If it isn't, nothing is shown, or the content after `[else]` is shown when there is one. A value of `0` counts as set.

`[if_set]` works the same as `[is_set]`. To nest a check inside another `[is_set]`, use `[sub_is_set]`, which also works the same way.

**Shortcode:**

```js
[is_set]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[value]` | **(Required)** The value to check. Accepts a `{{field}}` token, the output of another shortcode, or any text.

**Code Example:**

```js
[is_set value="{{phone}}"]Call us at {{phone}}.[/is_set]
```

**Output:**

If `{{phone}}` is "555-0123":

```
Call us at 555-0123.
```

If `{{phone}}` is empty, nothing is shown.

**Else Example:**

Module templates are the most common place to use `[is_set]`, since `{{field}}` tokens are filled in before the shortcode runs.

```js
[is_set value="{{photo}}"]<img src="{{photo}}" alt="{{title}}">[else]<img src="/_/images/placeholder.jpg" alt="Placeholder">[/is_set]
```

**Output:**

If `{{photo}}` is empty:

```html
<img src="/_/images/placeholder.jpg" alt="Placeholder">
```

<!-- {{{phone}}} -->