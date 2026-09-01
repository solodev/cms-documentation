Gathers the attachments of a module and prints them, much like a repeater, onto a single web page. This is used in the photo gallery modules and document share.

!!!Note: 
The photo gallery option must be activated on the module. The steps to do so are outlined below:
!!!

## Activating Photo Gallery

1. Open the specific module.
2. Click **Modify**.
3. Click the arrow in the Advanced accordion in the modal window to expand it.
4. Scroll down and click the checkbox beside Enable Attachments / Gallery.
5. Click **Submit**. 
 
**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[id]```| (Required) ID of the module from which the data pulling.

**Shortcode:**

```js
[calendar_entry_attachments_repeat]
```

**Code Example:**
 
```js
[calendar_entry_attachments_repeat id={{calendar_entry_id}}]
  <a href="{{{attachment_url}}}">
    <img src="{{{attachment_url}}}" />
  </a>
[/calendar_entry_attachments_repeat]
```