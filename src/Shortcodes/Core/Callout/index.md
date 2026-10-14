Displays the enclosed content in a styled callout box.

**Shortcode:**

```js
[callout]
```

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[width]``` | **(Optional)** The width of the callout box in pixels. Enter a number only, such as 300; px is added automatically. Percentages and other units are not supported.
```[align]``` | **(Optional)** The position of the callout box. Accepts left, right, or center. left and right float the box to that side. center only centers the box when width is also set.

**Code Example:**

```js
[callout width="300" align="right"]Registration closes Friday.[/callout]
```

**Output:**

```
<div style="width:300px;float:right;">
  Registration closes Friday.
</div>
<div class="clear"></div>
```

!!!Note:
The callout's appearance, including the border, depends on the website's styles. The CMS doesn't include any styling for this class.
!!!