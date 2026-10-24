This self-closing shortcode returns the URL path to the specified asset file in the database. Typically, this shortcode is used within an entry or repeater shortcode.

**Shortcode:**

```js
[get_asset_file_url]
```

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[id]``` | (Required) The file's asset file ID. The ID refers to the name attribute of the image field on a module.

**Code Example:**

```js
<img alt="[get_asset_file_name id={{blog_image}}]" class="img-fluid" src="/image/blog.png" />
```
<!-- {{{blog_image}}} -->