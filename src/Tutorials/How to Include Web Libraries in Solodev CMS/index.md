# How to Include Web Libraries in Solodev CMS

Category pages allow your organization to optimize SEO and enhance overall user experience. In Solodev developers can attach category pages to modules by attaching them to category collections and attaching their collection of categories to the module itself. This tutorial shows users how to create category pages for their module. 

## Pre-requisites

Prior to this tutorial users should have: 

* Installed their module of choice. 
* Created a detail page.
* Mapped the detail page and folder to their module.
* Created a collection.
* Added categories and subcategories to that collection. 

This example adds a category page for the news module created in <a href="https://help.solodev.com/en/articles/3727527-creating-a-news-module">this tutorial</a> .

## Step 1 – Create a repeater template

* Open the **web files -> content -> news** folder. 
* In the news folder, click **Add File**. 
* Enter the Name **(category-repeater.tpl)** and Title of the file. 
* Set the File Type to **Code**. 
* Click **Submit**. 
* The user is directed to the open file. 
* In the text box, enter the code provided below:
```js
<div class="row">
	[repeater id='##'  pages="22" order="start_time desc" display_type="news"]
		<div class="col-sm-6 col-lg-4 mt-4">
			<div class="bg-light-gray bg-hover-light-gray-dark pointer box-sizing h-100" onclick="location.href='{{path}}'">
				<img alt="{{event_title}}" src="[get_asset_file_url id='{{news_image}}']" class="img-fluid">
				<div class="p-3 p-lg-4">					
					[entry_categories_repeat id="{{calendar_entry_id}}"]
						<a class="btn btn-outline-secondary rounded-0 p-1 px-3" href="/news/{{{name}}}">{{{title}}}</a>
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
* Click **Publish** 

***Note: The id value in the repeater should match the id value of the module.***

## Step 2 – Create a category page to house the repeater

* Open the **www -> news** folder. 
* Click **Add Page**. 
* Enter the **Name**, **Title** and **Description** of the page. 
* Choose a template.
* Click **Submit**. 
* The user is directed to the category.stml page. 
* Select an empty DynamicDiv on the page.
* Select the **category-repeater.tpl** file located in the **web files -> content -> news** folder to insert it into the DynamicDiv.
* Click **Publish**.

## Step 3 – Map the category page to the collection of news categories

* Expand the **www -> managers -> News** folder. 
* Open the **News Categories** collection
* Click **Modify**. 
* In the modal window expand the **Settings** accordion.
* Click **Browse**.
* Select the **category.stml** page located in the **www -> news** folder.
* Click **Choose**. 
* Click **Submit**. 

## Step 4 – Map the collection to the News module 

* Open the **News Module**.
* Click **Modify**. 
* In the Modify modal expand the **Website Properties**.
* Under the Categories section click **Browse** under the **Datatable Category Group**. 
* Select the newly created collection. 
* Click **Choose**. 
* Click **Submit**. 

## Step 5 – Add categories to each entry

* Open the **News** module 
* Click the **Add Entry** button. 
* Populate the fields. 
* Scroll down to the **Categories** section and select the appropriate categories created. 
* If the category is not listed, the user can create them in the modal. 
* Click **Submit**. 
