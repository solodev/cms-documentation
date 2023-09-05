# How to create a module in your CMS

A <a href="/workspace/modules/">module</a> can be added to any website in Solodev. In this article, you will learn how to install a module, how to add both a repeater and detail template, and how to map a detail page to your module.

## Prerequisites 

-	You will need to <a href="/tutorials/add-website/">add a website</a> to your Solodev CMS.
-	You will need to <a href="/workspace/websites/manage-folder/add-page/">add a page</a>.
-	You will need to be familiar with using <a href="/shortcodes/">shortcodes</a>.

## Install Module

**Step 1**.	Click **Modules** located under the Workspace section of the Solodev Dashboard and click the **Add Module** in the top right corner.

**Step 2**.	Fill out the Add Module form.

<img src="../../../images/add-module.png" alt="base template" style="display: block"></a>

**Name** | **Description**
:--- | ---
Name | Enter the name of your module.
Type | Choose between Calendar, Datatable (form), or upload a Package (.zip).
Location | Select location you wish to save your form.
Form Template | Upload the .tpl file to build your module.
Add | Click **Add** to apply your changes.

!!! **Note:**
Solodev recommends installing modules into the **web files -> managers folder**. Below is a sample code for a basic blog module.
!!!

```js
<div class="mb-3">
  <label class="control-label mt-2" for="post_author">Blog Author</label>
  <p class="card-subtitle">(Optional) The author of the blog.</p>
  <input type="text" class="form-control" name="post_author" id="post_author">
</div>
<div class="row mb-3">
  <div class="col-md-6">
    <label class="control-label" for="post_image">Listing Image</label>
    <p class="card-subtitle mt-0">(Required) The image that appears in the post and normal blogroll feed. Dimensions: 951px by 561px.</p>
    <input type="file" class="file_upload" name="post_image" id="post_image">
  </div>
  <div class="col-md-6">
    <label class="control-label" for="post_image_alt">Listing Image Alt Tag</label>
    <p class="card-subtitle mt-0">(Optional) The image's alt tag used for ADA compliance.</p>
    <input type="text" class="form-control" name="post_image_alt" id="post_image_alt">
  </div>
</div>
<div class="mb-3">
  <label class="control-label" for="post_content">Content</label>
  <p class="card-subtitle">(Required) The main content section for an article.</p>
  <textarea class="wysiwyg form-control" name="post_content" id="post_content"></textarea>
</div>
```


## Repeater Template

The repeater template, although optional, displays all entries in the module used. The repeater is written in Solodev shortcodes and refers to the user interface template, printing fields in the form of PHP variables through an $item array.

**Step 1:** Add a folder called **blog** under **web files > content**.

**Step 2:**  On that folder, add a file for the module repeater called **index.tpl**.

**Step 3:** Add the code below for the blog repeater. For more information on shortcodes, please <a href="/shortcodes/shortcodes-for-modules/">click here</a>.

```js
<div class="my-5">
  <div class="container">
    <div class="text-center">
      <h2 class="display-5 fw-bolder"><strong>Blog</strong></h2>
      <p>Learn what's happening on the final frontier</p>
    </div>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-5 mt-4">
      [repeater id='' display_type="news"]
        <div class="col mt-4">
          <div class="card rounded-5 shadow">
            [is_set value={{post_image_alt}}]
              <img alt="{{post_image_alt}}" src="[get_asset_file_url id='{{post_image}}']" class="img-fluid rounded-top-5">
            [/is_set]
            [is_empty value={{post_image_alt}}]
              <img alt="{{event_title}}" src="[get_asset_file_url id='{{post_image}}']" class="img-fluid rounded-top-5">
            [/is_empty]
            <div class="card-body p-4">
              <p class="pt-1">[print_date format="F d, Y" timestamp="{{start_time}}"]</p>
              <h3 class="mt-3 fw-bolder"><strong>{{event_title}}</strong></h3>
              <a href="{{path}}" class="btn fs-6 btn-danger text-white my-3"><strong>Learn More</strong></a>
            </div>
          </div>
        </div>
      [/repeater] 
    </div>
  </div>
</div>
```

!!! **Note:**
The repeater id is the id of the module located on the module table view.
!!!

**Step 4:** Under **www** add a folder called **blog** and add a page called **index.stml**.

**Step 5:** Add the **index.tpl** to the **index.stml**.

**Step 6:** **Publish** your page.

<img src="../../../images/blog-spacejet.jpg" alt="base template" style="display: block"></a>

## Detail Template

The detail template shows the specifics of an individual entry from a repeater template. An example would be clicking on an individual blog entry from a list of entries to see the entire blog post. The detail page is a subpage of its parent page on the repeater template.

**Step 1:** Under the **blog** folder in **web files > content** add a file for the module detail called **detail.tpl**.

**Step 2:** Add the code below for the blog detail. For more information on shortcodes, please <a href="/shortcodes/shortcodes-for-modules/">click here</a>.

```js
[entry]
  <h1><strong>{{{event_title}}}</strong></h1>

  <div class="d-flex align-items-center justify-content-between">
    <p class="mb-0 mt-3">
      <span class="text-primary"><strong>[is_set value={{post_author}}]By David Smith[/is_set]</strong> [is_set value={{post_author}}]</span>
      <span class="ps-2">[/is_set][print_date format="F d, Y" timestamp="{{start_time}}"][is_set value={{post_author}}]</span>[/is_set]
    </p>
    <ul class="list-unstyled d-flex justify-content-end mb-0">
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-brands me-2 fa-twitter"></span><span class="sr-only">Twitter</span></a></li>
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-brands me-2 fa-facebook-f"></span><span class="sr-only">Facebook</span></a></li>
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-brands me-2 fa-linkedin-in"></span><span class="sr-only">Linkedin</span></a></li>
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-regular fa-envelope"></span><span class="sr-only">Email</span></a></li>
    </ul>
  </div>

  <div class="mt-3">

    [is_set value={{post_image_alt}}]
      <img alt="{{post_image_alt}}" src="[get_asset_file_url id='{{post_image}}']" class="w-100 my-4">
    [/is_set]
    [is_empty value={{post_image_alt}}]
      <img alt="{{event_title}}" src="[get_asset_file_url id='{{post_image}}']" class="w-100 my-4">
    [/is_empty]

    {{post_content}}

  </div>
[/entry]
```

**Step 3:** Under **www > blog** add a page called **detail.stml**.

**Step 4:** Add the **detail.tpl** to the **detail.stml**.

**Step 5:** **Publish** your page.

<img src="../../../images/detail-spacejet.jpg" alt="detail space jet" style="display: block"></a>

## Mapping the detail page to the module

**Step 1**.	Go to the module and click modify.

<img src="../../../images/modify-calendar.png" alt="base template" style="display: block"></a>

**Step 2**.	On the **Website Properties** accordion, under **Detail Page Template**, click **Browse**, select the detail page you want the entries to show on.

**Step 3**.	On **Detail Folder Location**, from the tree select the folder your detail page is on and click **Submit**.

<img src="../../../images/modify-detail.png" alt="base template" style="display: block"></a>
