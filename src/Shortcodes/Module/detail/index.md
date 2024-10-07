A detail template is a layout designed to display comprehensive information about a single data item or entry from a module, showcasing all relevant fields or properties in an organized format.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[id]``` | (Optional) Used to reference a specific entry or map the list of repeater entries to detail page entries.

**Shortcode:**

```js
[entry]
```

**Code Example:**

```js
[entry]
  <h1>{{ event_title }}</h1>
  <p>{{ blog_content }}</p>
[/entry]
```
<!-- {{{blog_content}}} -->