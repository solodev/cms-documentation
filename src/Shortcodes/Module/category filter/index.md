A category filter allows users to narrow down displayed content by selecting specific categories. It helps organize and refine search results or listings, making it easier to find relevant items based on chosen criteria.

**Attributes: **

**Attributes** | **Description** 
:--- | ---
```[id](required)``` | Used to query a specific entry.
```[category_group_id]```(required) | Specifies the ID of the datatable category group from which to pull the module’s categories.
```[calendar_id]```(optional) | Specifies the ID of the calendar from which to pull its categories.
```[all_value]```(optional) | Enables Bootstrap Selectize to function, improving the UI of the category dropdown. When set to “ ” it uses the first option in the select box as the all value.
```[all_text]```(optional) | Sets the All value.
```[input_class]```(optional) | Adds classes to the category filter.
```[input_id]```(optional) | Adds an ID to the category filter.

**Shortcode:**

```js
[category_filter]
```

**Code Example:**

```js
[category_filter category_group_id="32" all_value=" "]
```