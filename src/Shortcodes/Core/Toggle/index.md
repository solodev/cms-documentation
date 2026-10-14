Displays a collapsible content block. Click the title to show or hide the content.

**Shortcode:**

```js
[toggle]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[title]` | **(Optional)** The clickable title that shows or hides the content.
`[style]` | **(Optional)** The CSS class applied to the toggle wrapper. Default: `list`.

**Code Example:**

```js
[toggle title="Office Hours"]Monday to Friday, 8 AM to 5 PM.[/toggle]
```

**Output:**

```html
<div class="list">
  <p class="trigger"><a href="#">Office Hours</a></p>
  <div class="toggle_container">
    <div class="block">Monday to Friday, 8 AM to 5 PM.</div>
  </div>
</div>
```

!!!Note:
The toggle's appearance and show/hide behavior depend on the website's styles and scripts for the `.trigger` and `.toggle_container` classes.
!!!