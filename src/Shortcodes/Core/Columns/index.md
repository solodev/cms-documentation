Splits content into columns. Use the `_last` variant on the final column in each row to clear the float.

**Shortcodes:**

**Shortcode** | **Description**
:--- | ---
```[one_half]``` / ```[one_half_last]``` | Two-column split (50/50).
```[one_third]``` / ```[one_third_last]``` | Three-column split (33/33/33).
```[two_thirds]``` / ```[two_thirds_last]``` | Use with `one_third` for a 33/66 split.
```[one_fourth]``` / ```[one_fourth_last]``` | Four-column split (25/25/25/25).
```[three_fourths]``` / ```[three_fourths_last]``` | Use with `one_fourth` for a 25/75 split.
```[one_fifth]``` / ```[one_fifth_last]``` | Five-column split (20/20/20/20/20).
```[two_fifth]``` / ```[two_fifth_last]``` | Use with other fifths for a 40% column.
```[three_fifth]``` / ```[three_fifth_last]``` | Use with other fifths for a 60% column.
```[four_fifth]``` / ```[four_fifth_last]``` | Use with `one_fifth` for a 20/80 split.
```[one_sixth]``` / ```[one_sixth_last]``` | Six-column split.
```[five_sixth]``` / ```[five_sixth_last]``` | Use with `one_sixth` for a 16/84 split.

**Code Example:**

```js
[one_third]Left column content[/one_third]
[two_thirds_last]Right column content[/two_thirds_last]
```

**Output:**

````
| Left column content | Right column content            |
`````

!!!Note:
These shortcodes have no attributes.
!!!