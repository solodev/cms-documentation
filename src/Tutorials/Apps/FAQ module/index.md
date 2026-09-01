# FAQ modules

Soldev gives users the power to create a module to draft and publish FAQ entries to keep their customers up to date with the most recent company FAQs. This tutorial shows users how to create a FAQ module in Solodev where they can add entries with no coding knowledge. This module requires an index page and a detail page. The index page contains the repeater template and the detail page contains the detail template. 

## Pre-requisites

Users should be familiar with:

* Using shortcodes
* Mapping pages to modules

## Step 1 - Installing a FAQs module

* On the Solodev dashboard click **Modules**.
* Click **Add Modules** on the next page.
* On the **FAQs** card click **Install**. 
* In the modal window Enter the Name of the module. 
* Click **Browse** and select the **web files -> managers** folder. 
* Click **Choose**. 
* Click **Submit**. 

## Step 2 – Creating a repeater template

* Expand the **web files -> content** folders and open the faqs folder (Create one in the content folder if it has not been created). 
* In the faqs folder, click **Add File**. 
* Enter the **Name** (faqs.tpl) and **Title** of the file. 
* Set the File Type to **Code**. 
* Click **Submit**. 
* The user is directed to the open file. 
* In the text box, enter the code provided below: 
```js
<div class="row">
	[repeater id='##'  pages="22" order="start_time desc" display_type="faqs"]
		<div class="col-sm-6 col-lg-4 mt-4">
			<div class="bg-light-gray bg-hover-light-gray-dark pointer box-sizing h-100" onclick="location.href='{{path}}'">
				<img alt="{{event_title}}" src="[get_asset_file_url id='{{faqs}}']" class="img-fluid h-200p cover w-100">
				<div class="p-3 p-lg-4">					
					[entry_categories_repeat id="{{calendar_entry_id}}"]
						<a class="btn btn-outline-secondary rounded-0 p-1 px-3" href="/faqs/{{{name}}}">{{{title}}}</a>
					[/entry_categories_repeat]
					
					<h2 class="h4 mt-4 post-intro">
						[is_set value="{{heading_title}}"]
							<a class="text-secondary" href="{{path}}">{{heading_title}}</a>
						[/is_set]
						[is_empty value="{{heading_title}}"]
							<a class="text-secondary" href="{{path}}">{{event_title}}</a>
						[/is_empty]
					</h2>
					
					<p class="text-muted small">
						[print_date format="F d, Y" timestamp="{{start_time}}"]
					</p>
					<p class="post-intro">{{post_intro}}</p>					
				</div>
			</div>
		</div>
	[/repeater]
</div>
```
* Click **Publish**. 

*Note: The id value in the repeater should match the id value of the module.*

## Step 3 – Creating a detail template

* Open the faqs folder located in web files -> content folder. 
* Click Add File. 
* Enter the Name (faqs-detail.tpl) and Title of the file. 
* Set the File Type to Code. 
* Click Submit. 
* The user is directed to the open file. 
* In the text box, enter the code provided below: 
```js
[entry]
	[is_set value={{post_intro}}]
		<h2 class="mb-0 h3">{{post_intro}}</h2>
	[/is_set]

	<img alt="{{event_title}} Image" class="img-fluid my-5" src="[get_asset_file_url id={{faqs_image}}]">
	{{post_content}}
[/entry]
```
* Click Publish. 

## Step 4 – Creating a page to house the repeater template

* Open the **www** folder. 
* Click **Add Folder**.
* Enter the **Name** (faqs), **Title**, and **Description** of the folder. 
* Click **Submit**. 
* Open the **faqs** folder. 
* Click **Add Page**.
* Enter the **Name** (index.stml), **Title** and **Description** of the page.
* Choose a template.
* Click **Submit**. 
* The user is directed to the **index.stml** page.
* Select an empty DynamicDiv on the page.
* Select the **faqs-repeater.tpl** file located in the **web files -> content -> faqs** folder to insert it into the dynamic div.
* Click **Publish**. 

## Step 5 – Creating a page to house the detail template

* With the **www -> faqs** folder open, click **Add Page**.
* Enter the **Name** (detail.stml), **Title** and **Description** of the page.
* Choose a template.
* Click **Submit**. 
* The user is directed to the **detail.stml** page.
* Select an empty DynamicDiv on the page.
* Select the **faqs-detail.tpl** file located in the **web files -> content -> faqs** folder to insert it into the dynamic div.
* Click **Publish**. 

## Step 6 – Mapping the detail.stml page to the team module

* Expand the **web files -> managers -> FAQs** folders. 
* Open the **FAQs** module. 
* Click **Modify**. 
* Expand the **Website Properties** accordion.
* Click **Browse** next to the Detail Template textbox. 
* Select the **detail.stml** page located in the **www -> faqs** folder. 
* Click Browse next to the Detail Folder Location text box. 
* Select the folder **(www ->faqs)** that contains the **detail.stml** file.
* Click Submit.

## Step 7 – Adding an Entry

* Expand the **web files -> managers -> FAQs** folders. 
* Open the FAQs module. 
* Click **Add Entry**.
* Enter the Name. 
* Select a Status.
* Populate the Content and Intro/Excerpt.
* Upload a Featured Image.
* Set the categories 
* Click **Submit**. 
