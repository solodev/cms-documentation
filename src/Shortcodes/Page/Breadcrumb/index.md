Displays the breadcrumb trail for the current page, from the site root to the current page. Every level is a link. The current page appears as plain text at the end.

The labels come from each folder's **Menu** value. If a folder has no Menu value, its **Title** is used, and if it has no Title, its folder name is used. The current page uses its own Menu value or Title. When the current page is an index page (`index.stml`), its folder does not appear separately, so the page's label is not listed twice.

On Calendar and Datatable detail pages, the trail also includes the entry's category path.

**Shortcode:**

```js
[breadcrumb]
```

**Attributes:**

| Attribute | Description |
| --- | --- |
| `[delimiter]` | **(Optional)** The character or markup placed between each level of the trail. Default is `\|`. |
| `[home_overwrite]` | **(Optional)** Replaces the word "Home" on the first link, for example with different text or an icon. Default is `Home`. |

**Code Example:**

```html
<nav aria-label="breadcrumb">
    [breadcrumb]
</nav>
```

**Output:**

```html
<nav aria-label="breadcrumb">
    <a aria-label="Home" class="fileTrail" href="/">Home</a> <span class="fileTrailDividers">|</span>
    <a aria-label="About Us" class="fileTrail" href="/about-us/">About Us</a> <span class="fileTrailDividers">|</span>
    <span class="fileTrailCurrent">Our Team</span>
</nav>
```

**Code Example (custom delimiter and home icon):**

```html
<nav aria-label="breadcrumb">
    [breadcrumb delimiter="/" home_overwrite="<i class='fa fa-home'></i>"]
</nav>
```

**Output:**

```html
<nav aria-label="breadcrumb">
    <a aria-label="Home" class="fileTrail" href="/"><i class='fa fa-home'></i></a> <span class="fileTrailDividers">/</span>
    <a aria-label="About Us" class="fileTrail" href="/about-us/">About Us</a> <span class="fileTrailDividers">/</span>
    <span class="fileTrailCurrent">Our Team</span>
</nav>
```

!!!
Style the trail with these classes: `.fileTrail` for the links, `.fileTrailDividers` for the delimiters and `.fileTrailCurrent` for the current page.
!!!

!!!warning
Use single quotes inside `home_overwrite` and `delimiter` values, as in the icon example above. A double quote ends the attribute value early.
!!!
