Displays a styled button that links to a page or URL.

**Shortcode:**

```js
[button]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
```[link]``` | **(Required)** The URL the button links to.
```[size]``` | **(Optional)** The size of the button, added as a CSS class (for example, small, medium, large). Default: `medium`.
```[color]``` | **(Optional)** The color of the button, added as a CSS class on the link (for example, blue).
```[target]``` | **(Optional)** Where the link opens. Use `_blank` for a new tab. Default: `_self`.
```[caption]``` | **(Optional)** Smaller text shown on a second line under the button text.
```[align]``` | **(Optional)** The position of the button, added as a CSS class. Use `left`, `right`, or `center`. Default: `right`.


**Code Example:**

```js
[button link="/register" color="blue" align="center" caption="Closes Friday"]Register Now[/button]
```

**Output:**

```
<div class="button medium center">
  <a target="_self" class="button blue" href="/register">
    Register Now<br />
    <span class="btn_caption">Closes Friday</span>
  </a>
</div>
```

!!!Note:
The `size`, `color`, and `align` attributes only take effect if the website's CSS defines styles for them.
!!!