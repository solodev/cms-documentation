# Create an image gallery

Users can leverage an image gallery to display photos in an organized way, separating them by categories. This document shows the user how to create an image gallery module. 

## Getting Started

Solodev recommends building an image gallery using custom module. Before starting user should be able to:

* Create a custom HTML form a for a module
* Upload their custom form to a module
* Understand the relations between forms and table schemas
* Understand and use shortcodes

## Step 1 -- Install a custom module

* From the Solodev workspace click **Modules**.
* Click **Add Module**.
* In the **Custom Builder** card, click **Install**.
* Enter a **Name**. 
* Select **Calendar** for the **Type** and **Photos** for the **Display**.
* Click **Browse** and install the module in the **web files -> managers** folder of the website. 
* Click **Submit**. 


## Step 2 – Configuring the module as an image gallery

* Open the module.
* Click **Modify**.
* Click the **arrow** to expand the **Advanced Options** section. 
* Click **Upload Form**.
* Choose the appropriate form. 
* Below the Post Processing textbox, click the checkbox to **Enable Attachments/Gallery**.
* Click **Submit**. 

***Note: Solodev recommends uploading forms instead of modifying the .tpl file folder located in the Assets Folder. Uploading forms will automatically update the table schema. The code for the image gallery is provided below: ***

 
```js
<div class="row">
  <div class="col-md-12 form-group">
    <label class="control-label" for="featured_image">Featured Image</label>
    <p class="card-subtitle mb-2">(Required) The image that appears in the post and normal photo gallery roll feed. <strong>Minimun Required Dimensions:</strong> 350px by 200px.</p>
    <input class="file_upload" id="featured_image" name="featured_image" type="file" />
  </div>
</div>
<div class="row">
  <div class="col-md-12 form-group">
    <label class="control-label" for="photo_album_intro">Album Intro</label>
    <p class="card-subtitle">(Required) Content that appears before the body content and the introductory paragraph on the photo gallery roll.</p>
    <textarea name="photo_album_intro" id="photo_album_intro" class="form-control wysiwyg-basic"></textarea>
  </div>
</div>

<div id="accordionMetaData">
  <section class="card mt-2">
    <header id="status" class="card-header" id="headingMetaData" data-toggle="collapse" data-target="#collapseMetaData" aria-expanded="true" aria-controls="collapseMetaData">
      <h2 class="card-title">Meta Data</h2>
      <div class="panel-actions">
        <a href="#" class="panel-action panel-action-toggle"></a>
      </div>
    </header>
    <div id="collapseMetaData" class="collapse" aria-labelledby="headingMetaData" data-parent="#accordionMetaData">
      <div class="card-body">
        <div class="row">
          <div class="col-md-12 form-group">
            <label class="control-label" for="meta_title">Meta Title</label>
            <p class="card-subtitle mt-0">(Optional) Include a custom META Title that will show in your browser tab and in the page's source code.</p>
            <input type="text" class="form-control" name="meta_title" id="meta_title">
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 form-group form-group">
            <label class="control-label" for="heading_title">Heading Title</label>
            <p class="card-subtitle mt-0">(Optional) If specified, this will overwrite the article's title and become the main heading.</p>
            <input type="text" class="form-control" name="heading_title" id="heading_title">
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 form-group">
            <label class="control-label" for="meta_description">Meta Description</label>
            <p class="card-subtitle mt-0">(Optional) Include a custom META Description that search engines will index. 50-160 Characters</p>
            <textarea class="form-control" id="meta_description" name="meta_description"></textarea>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 form-group">
            <label class="control-label" for="meta_keywords">Meta Keywords</label>
            <p class="card-subtitle mt-0">(Optional) Include the main keywords of the blog article.</p>
            <textarea class="form-control" id="meta_keywords" name="meta_keywords"></textarea>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
```

## Step 3 – Adding a photo gallery

* Open the module.
* Click **Add Entry**. 
* Enter a Name in the textbox.
* Set the Status to **Publish**. 
* Upload a **Featured Image**. Click **Browse** to upload an image from Solodev CMS. Click **Upload** to upload an image from your local machine. 
* Enter the **Meta Data**.
* Set the **Schedule**.
* Assign the entry to groups if needed. 
* Click **Submit**. 
* The user is automatically directed to the newly created entry.
* In the entry click the arrow to the right to expand the **Attachments/Gallery** section.
* Click **Upload**. 
* In the modal window that appears, click **Browse**.
* Choose the images and click **Submit**.
* Click **Save** button at the top the page. 

## Step 4 – Creating a Repeater Template

* Open the desired folder that will contain the repeater file. 
* Click **Add File** and enter the **Name**, **Title**, and **Description**. 
* Select **Code** for the **File Type**.
* Click **Submit**.
* In the file enter the following lines of code:
```js
<div class="row pt-3">
	<div class="col-md-8 mx-auto text-md-center">
		<p>The cosmos is full of knowledge and our satellites are recording it. Browse our products.</p>
	</div>
</div>
<div class="row py-5">
	[repeater id='##'  pages="5" order="start_time desc" display_type="news"]
		<div class="col-sm-6 col-md-4 mt-3 mt-sm-0">
			<div class="bg-light-gray bg-hover-light-gray-dark pointer box-sizing h-100">
				<a href="{{path}}" class="text-black">
					<img class="w-100 h-200p cover img-fluid" alt="{{heading_title}} Gallery" src="[get_asset_file_url id={{featured_image}}]">
					<div class="p-3 p-lg-4">
						<h2 class="h3 mt-2 text-secondary">
							[is_set value="{{heading_title}}"]
								{{heading_title}}
							[/is_set]
							[is_empty value="{{heading_title}}"]
								{{event_title}}
							[/is_empty]
						</h2>
						<p class="post-intro lead-sm">{{photo_album_intro}}</p>
						<p class="text-primary small"><strong>[print_date format="F d, Y" timestamp="{{start_time}}"]</strong></p>
					</div>
				</a>
			</div>
		</div>
	[/repeater]
</div> 
```
* Click **Publish**.

***Note: The id value in the repeater should match the id value of the module. & The opening repeater tag's id number must match the ID number of the module. In the example below, the ID of the module is 20 so the repeater id should be set to 20. *** 

```js
[repeater id='20'  pages="5" order="start_time desc" display_type="news"][/repeater]
```

## Step 5 – Creating a  repeater page and adding a repeater template

* Expand the **www** folder and open the folder that will contain the repeater page. 
* Click **Add Page**. 
* In the **Add Page** modal and enter the **Name**, **Title**, and **Description** for the page. 
* Open the page and click the dropzone that will contain the repeater template file. 
* Select the repeater template to insert into the dropzone. 
* Click **Publish**.

## Step 6 -- Creating a detail template

* Open the desired folder that will contain the detail file. 
* Click **Add File** and enter the **Name**, **Title**, and **Description**. 
* Select Code for the **File Type**.
* Click **Submit**.
* In the file enter the code: 
```js
[entry]
	<p>{{photo_album_intro}}</p>
	<div class="row mt-5 bag-gallery">
		[calendar_entry_attachments_repeat id="{{calendar_entry_id}}"]
			<div class="col-sm-6 col-md-4 mt-3">
				<a aria-label="Image {{{asset_file_id}}} Link" href="[get_asset_file_url id='{{{asset_file_id}}}']" data-caption="{{{description}}}">
					<img class="img-fluid" src="[get_asset_file_url id='{{{asset_file_id}}}']" alt="Image {{{asset_file_id}}} Link">
				</a>
			</div>
		[/calendar_entry_attachments_repeat] 
	</div>
[/entry]
```
* Click **Publish**.

## Step 7 -- Creating a detail page and adding the detail template

* Expand the **www** folder and open the folder that will contain the detail page. 
* Click **Add Page**. 
* In the **Add Page** modal and enter the **Name**, Title, and Description for the page. 
* Open the page and click the dropzone that will contain the detail template file. 
* Select the detail template to insert into the dropzone. 
* Click **Publish**. 

## Step 8 -- Linking the repeater page to the detail page

* Open the module.
* Click **Modify**. 
* In the modal window click the arrow located to the right of **Website Properties**. 
* Click **Browse** in the **Detail Page Template** section. 
* Select the detail.stml page. 
* Click **Choose**.
* Click **Browse** in the **Detail Folder Location**. 
* Select the folder that contains the gallery detail page. 
* Click **Submit**. 

## Step 9 -- Re-save the entries

* Open the module
* Click the **pen and paper icon** beside the entry in the datatable. 
* Click the **Save** button near the top of the module entry page. 
* Users can bring up the image gallery on the front page. 