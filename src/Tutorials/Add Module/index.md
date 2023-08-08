# Add Module

A <a href="/workspace/modules/">module</a> can be added to any website in Solodev. In this article, you will learn how to install a module, how to add both a repeater and detail template, and how to map a detail page to your module.

## Types of Modules

The Solodev module system offers two types of modules:

- **Calendar**: Create date-based applications such as events, blogs, landing pages, and other custom experiences. 

- **Data table**: Build database-dependent applications such as schemas, publish data table information to external channels, expose data to channels via RESTful API, and more.

## Prerequisites 

-	You will need to <a href="/tutorials/add-website/">add a website</a> to your Solodev CMS.
-	You will need to <a href="/workspace/websites/manage-website/add-page//">add a page</a>.
-	You will need to be familiar with using <a href="/shortcodes/">shortcodes</a>.

## Install Module

1.	Click **Modules** located under the Workspace section of the Solodev Dashboard and click the **Add Module** in the top right corner.

2.	Fill out the Add Module form.

<img src="../../../images/add-module.png" alt="base template" style="display: block"></a>

**Name** | **Description**
:--- | ---
Name | Enter the name of your module.
Type | Choose between Calendar, Datatable (form), or upload a Package (.zip).
Location | Select location you wish to save your form.
Form Template | Upload the .tpl file to build your module.
Add | Click **Add** to apply your changes.

!!! **Note:**
Solodev recommends installing modules into the **web files -> managers folder**. Below is a sample code for a basic module.

```js
<label class="control-label" for="post_intro">Intro</label>
<textarea class="form-control" name="post_intro" id="post_intro"></textarea>

<label class="control-label" for="post_image">Image</label>
<input type="file" class="file_upload" name="post_image" id="post_image">

<label class="control-label" for="post_content">Content</label>
<textarea class="wysiwyg-basic form-control" name="post_content" id="post_content"></textarea>
```
!!!

## Repeater Template

The repeater template, although optional, displays all entries in the module used. The repeater is written in Solodev shortcodes and refers to the user interface template, printing fields in the form of PHP variables through an $item array.

1.	<a href="/workspace/websites/manage-website/addfile/">Add a file</a> for the module repeater.
2.	Link the repeater to the page you would like your module to be.

Provided below is a sample of a simple repeater code. For more information on shortcodes, please <a href="/shortcodes/shortcodes-for-modules/">click here</a>.

```js
[repeater id="##"]

  <h2>{{{event_title}}}</h2>

  <img src="[get_asset_file_url id='{{post_image}}']" alt="{{event_title}}" class="img-fluid">

  <p>{{post_intro}}</p>

  <a href="{{path}}">Learn More</a>

[/repeater]
```

!!! **Note:**
The repeater id is the id of the module located on the module table view.
!!!

## Detail Template

The display template shows the specifics of an individual entry from a repeater template. An example would be clicking on an individual blog entry from a list of entries to see the entire blog post. The detail page is a subpage of its parent page on the repeater template.

1.	<a href="/workspace/websites/manage-website/addfile/">Add a file</a> for the module detail.
2.	Link the detail to the page you would like your module to be.

Provided below is a sample of a detail code. For more information on shortcodes, please <a href="/shortcodes/shortcodes-for-modules/">click here</a>.

```js
[entry]
  <img src="[get_asset_file_url id='{{post_image}}']" alt="{{event_title}}" class="img-fluid mb-5">

  {{post_content}}
[/entry]
```

## Mapping the detail page to the module

1.	Go to the module and click modify.

<img src="../../../images/modify-calendar.png" alt="base template" style="display: block"></a>

2.	On the **Website Properties** accordion, under **Detail Page Template**, click **Browse**, select the detail page you want the entries to show on.

3.	On **Detail Folder Location**, from the tree select the folder your detail page is on and click **Submit**.

<img src="../../../images/modify-detail.png" alt="base template" style="display: block"></a>
