Retrieves and displays the relevant tags associated with a particular item or entry. This allows users to view the related tags without manually coding them, making it easier to present categorized or labeled content efficiently.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[id]```| (Required) id of the manager where the data is pulling from.
```[type]```| (Optional) Specifies what type of manager the data is pulling from (default: calendar).

**Shortcode:**
 
```js
[entry_tags_repeat]
```

**Code Example:**

```js
[entry_tags_repeat id="{{calendar_entry_id}}"]
  <a class="text-capitalize" href="/blog/tags/{{{name}}}.stml"><u>{{{title}}}</u></a>
[/entry_tags_repeat]
```