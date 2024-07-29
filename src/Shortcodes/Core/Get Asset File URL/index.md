This self-closing shortcode returns the URL path to the specified asset file in the database. Typically, this shortcode is used to display an image within an entry or repeater shortcode.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[id]``` | **(Required)** The file's asset file ID. The ID refers to the name attribute of the image field on a module.

**Shortcode:**

```js
[get_asset_file_url id=]
```

**Code Example:**

```js
<img alt="Article image" class="img-fluid" src="[get_asset_file_url id={{blog_image}}]" />
```
<!-- {{{blog_image}}} -->