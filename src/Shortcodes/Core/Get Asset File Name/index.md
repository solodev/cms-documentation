This self-closing shortcode returns the URL path to the specified asset file in the database. Typically, this shortcode is used within an entry or repeater shortcode.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[id]``` | (Required) The file's asset file ID. The ID refers to the name attribute of the image field on a module.

**Shortcode:**

```js
[get_asset_file_url]
```

**Code Example:**

```js
<img alt="[get_asset_file_name id={{article_image}}]" class="img-fluid" src="[get_asset_file_url id={{blog_image}}]" />
```
<!-- {{{article_image}}} -->