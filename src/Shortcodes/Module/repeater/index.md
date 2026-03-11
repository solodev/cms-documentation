A repeater template is a structure used to dynamically display repeating content, such as lists or grids, by iterating through data items. It's often used for rendering multiple items (e.g., blog posts or products) from a data source into the same layout.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[id]``` | (Required) ID of the module from which the data is pulling. 
```[type]``` | (Required only for datatables) The type of module (default: calendar - option: "datatable").
```[limit]``` | (Optional) 0 starting at the first entry and the second integer specifying the number of entries to display on the page.
```[order]``` | (Optional) Specifies how the repeater will organize the data such as by “start_time desc” which will organize entries by the latest start time first.
```[display_type]``` | (Optional) Specifies the type of manager that provides the data (default: calendar - options: “news”, “events”).
```[category_filter]``` | (Optional) Filter list of entries by category.
```[tag_filter]``` | (Optional) Filter list of entries by tags selected in a textbox.
```[pages]``` | (Optional) Paginate list of entries.
```[offset]``` | (Optional) Skip entries at the start of the query. For example, offset=“5” skips the first five entries in the list.
```[where]``` | (Optional) Perform a SQL query on the database.
```[website_filter]``` | (Optional) Filter list of news items by website.

Insert the name of your HTML fields inside curly braces to print out the corresponding variable. Refer to the `field_name` in your Table Schema to identify the correct field.

```js
{{ field_name }}
```

**Shortcode:**

```js
[repeater]
```

**Code Example:**

```js
[repeater id="23" limit="0,4" order="start_time asc" display_type="news"]
  <h2>{{ event_title }}</h2>
  <p>{{ blog_intro }}</p>
[/repeater]
```

!!!warning Important!
When using a repeater shortcode with a datatable module, you must specify the module type by adding `type="datatable"` as an attribute to ensure proper functionality.
`Example: [repeater type="datatable"]`
!!!

<!-- {{{ field_name }}} -->