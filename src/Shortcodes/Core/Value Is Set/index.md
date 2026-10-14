Returns the `override` value if it's set. Otherwise, returns the `default` value.

**Shortcode:**

`````js
[value_isset]
`````

**Attributes:**

**Attributes** | **Description**
:--- | ---
```[override]``` | **(Required)** The value to return if it's set.
```[default]``` | **(Optional)** The value to return if `override` is empty.

**Code Example:**

```js
[value_isset override="{{custom_title}}" default="{{title}}"]
```

**Output:**

If `{{custom_title}}` is empty and `{{title}}` is "About Us":

````
About Us
`````

<!-- {{{custom_title}}} -->