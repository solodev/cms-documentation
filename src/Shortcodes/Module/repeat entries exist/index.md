This function checks for the existence of specific entries within a dataset. By verifying whether the requested items are present, it ensures that subsequent operations can be performed accurately, such as displaying relevant content or triggering appropriate actions based on the availability of those entries.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[id]``` | (Required) id of the manager where the data is pulling from.
```[type]```| (Optional) Specifies what type of manager the data is pulling from (default: calendar).
```[order]```| (Optional) Specifies how the repeater will organize the data such as by "start_time desc" which will organize entries by the latest start time first. 
```[display_type]```| (Optional) Changes the date filter (Options: “news”, “events”).
```[category_filter]```| (Optional) Filter list of entries by category.
```[tag_filter]```| (Optional) Filter list of entries by tags selected in a textbox.
```[pages]```| (Optional) Paginate list of entries.
```[offset]```| (Optional) Skip entries at the start of the query. (For example, offset = “5” skips the first five entries in the list).
```[where]```| (Optional) Perform a SQL query on the database.
```[website_filter]```| (Optional) Filter list of news items by website.

Insert the name of your HTML fields inside curly braces to print out the corresponding variable. Refer to the `field_name` in your Table Schema to identify the correct field.

```js
{{ field_name }}
```

**Shortcode:**
 
```js
[repeater_entries_exists]
```

**Code Example:**
 
```js
[repeater_entries_exists id="1"]
```