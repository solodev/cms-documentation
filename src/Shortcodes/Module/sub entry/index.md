Queries a specific entry within a detail page to retrieve and display the full set of data related to that item, allowing users to view or interact with all its associated details.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[id]``` | (Required) Used to query a specific entry.

**Shortcode:**
 
```js
[sub_entry]
``` 

**Code Examples:**

```js
[entry]
  <h1>{{ event_title }}</h1>
  [sub_entry id="1"]
    <p>{{ blog_entry }} - {{ blog_content }}</p>
  [/sub_entry]
[/entry]
```
<!-- {{{blog_content}}} -->