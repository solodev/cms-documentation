Dynamically retrieves the title to display based on various conditions and request parameters, excluding specific titles based on the exclude attribute, and then processes and returns the final title content.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[exclude]``` | **(Optional)** When this option is enabled, the function will skip searching for the specified title.

**Shortcode:**
 
```js
  [page_title]
```

**Code Example:**

```js
<h1>[page_title]</h1>
```