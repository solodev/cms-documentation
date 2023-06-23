# How to Create Tags for Modules

## Tags Overview

In contrast to categories which are meant for broad grouping of posts, tags describe specific details of individual posts. Tags are analogous to an index list. Tags are not hierarchical. The steps for adding tags to modules are provided below.

## Step 1 - Create a repeater template file

* Open the desired folder that will contain the repeater file
* Click **Add File** and enter the **Name**, **Title**, and **Description**.
* Select **Code** for the **File Type**
* Click **Submit**
* In the file enter the following code"
```js
[repeater id="##" limit="0,2"]

<h2>{{event_title}}</h2>

<p>{{blog_intro}}</p>

<a href="{{path}}">{{event_title}}</a>

[/repeater]
```

* Click **Publish**

***Note:* The id value in the repeater should match the id value of the module.**

## Step - 2 Create a detail template file

* Open the desired folder that will contain the detail file.
* Click **Add File** and enter the **Name**, **Title**, and **Description**.
* Select **Code** for the **File Type**
* Click **Submit**
* In the file enter the code:
```js
[entry]

<h1>{{name}}</h1>

<p>{{blog_content}}</p>

[/entry]
```
* Click **Publish**

## Step 3 - Create a page to house the repeater template

* Extend the **www** folder and open the folder that will contain the repeater page
* Click **Add Page**
* In the Add Page modal and enter the **Name**, **Title**, and **Description** for the page
* Open the page and click the dropzone that will contain the repeater template file.
* Select the repeater template to insert into the dropzone
* Click **Publish**

## Step 4 - Create a page to house the detail template

* Expand the ***www** folder and open the folder that will contain the detail page.
* Click **Add Page** 
* In the Add Page modal and enter the **Name**, **Title**, and **Description** for the page
* Open the page and click the dropzone that will contain the detail template file
* Select the detail template to inset into the dropzone
* Click **Publish**

## Step 5 - Mapping the Repeater Template and the detail template to the Module

* Expand the folder that houses the module and open the module. 
* Click **Modify** 
* In the modify modal window expand the **Website Properties** section
* To the right of the **Detail Page Template** text-box, click **Browse** and choose the page that contains the detail template for the blog tags.
* To the right of the **Detail Folder** text-box, click **Browse** and choose the folder that contains the detail page.
* To the right of the **Tag Template** text-box, click **Browse** and choose the page that contains the repeater template.
* Click **Submit**

## Step 6 - Adding Tags to an Entry

* Open the module
* Click **Add Entry** button
* Enter the name, choose the status and images, populate the heading, intro and content
* Choose a category
* In the **Tags** text-box, enter the desired tags pressing tav after adding each one.
* Click **Submit**