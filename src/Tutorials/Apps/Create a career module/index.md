# Create a career module

Solodev provides a Career Portal module that allows organizations to attract the best labour talent by listing their open positions. This tutorial shows Solodev users how to create Careers modules in Solodev where users are able to add open positions without any coding knowledge. This module requires an index page and a detail page. 

## Prerequisites

Users should be familiar with: 

* Using shortcodes. 
* Mapping pages to modules. 

## Step 1 -- Installing a career portal module

* On the Solodev dashboard, click **Modules**.
* Click **Add Module** on the next page. 
* On the **Career Portal** card, click **Install**. 
* In the modal window enter the name of the module. 
* Click **Browse** and select the **web files -> managers** folder. 
* Click **Choose**. 
* Click **Submit**. 

## Step 2 – Creating a repeater template

* Expand the **web files -> content** folders and open the careers folder (Create one in the content folder if it has not been created). 
* In the careers folder, click **Add File**. 
* Enter the **Name (careers-repeater.tpl)** and **Title** of the file. 
* Set the File Type to **Code**. 
* Click **Submit**. 
* The user is directed to the open file. 
* In the text box, enter the code provided below: 
```js
<div class="row py-5">
    <div class="text-center col-md-8 mx-auto">
    	<div class="dynamicDiv"></div>
  	</div>
</div>

<div class="row pb-5">
	[repeater id='38'  pages="22" order="start_time desc" display_type="news"]
		<div class="col-md-6 mt-2 mt-md-0 p-2">
			<div class="d-flex p-3 bg-light-gray align-items-center justify-content-between">
				<div class="p-1">
        			[is_set value="{{heading_title}}"]
        				<h3 class="h4 mt-3 text-uppercase">{{heading_title}}</h3>
        			[/is_set]
        			[is_empty value="{{heading_title}}"]
        				<h3 class="h4 mt-3 text-uppercase">{{event_title}}</h3>
        			[/is_empty]
        			<p class="mt-3">{{career_intro}}</p>
				</div>
				<div class="p-1">
					<a href="{{path}}" class="btn btn-primary btn-md">Apply</a>
				</div>
			</div>
		</div>
	[/repeater]
</div>
```
* Click **Publish**. 

***Note:* The id value in the repeater should match the id value of the module.**

## Step 3 – Creating a detail template

* Open the careers folder located in **web files -> content** folder. 
* Click **Add File**. 
* Enter the **Name (careers-detail.tpl)** and **Title** of the file. 
* Set the File Type to **Code**. 
* Click **Submit**. 
* The user is directed to the open file. 
* In the text box, enter the code provided below: 
```js
[entry]
	[is_set value="{{career_intro}}"]
		<h2>{{career_intro}}</h2>
	[/is_set]

	{{post_content}}
[/entry]
```
* Click **Publish**. 

## Step 4 – Creating a page to house the repeater template

* Open the **www** folder. 
* Click **Add Folder**.
* Enter the **Name (careers)**, **Title**, and **Description** of the folder. 
* Click **Submit**. 
* Open the **careers** folder. 
* Click **Add Page**.
* Enter the **Name (index.stml)**, **Title** and **Description** of the page.
* Choose a template.
* Click **Submit**. 
* The user is directed to the index.stml page.
* Select an empty DynamicDiv on the page.
* Select the **careers-repeater.tpl** file located in the **web files -> content -> careers** folder to insert it into the dynamic div.
* Click **Publish**. 

## Step 5 – Creating a page to house the detail template

* With the **www -> careers** folder open, click **Add Page**.
* Enter the **Name (detail.stml)**, **Title** and **Description** of the page.
* Choose a template.
* Click **Submit**. 
* The user is directed to the detail.stml page.
* Select an empty DynamicDiv on the page.
* Select the **careers-detail.tpl** file located in the **web files -> content -> careers** folder to insert it into the dynamic div.
* Click **Publish**. 

## Step 6 – Mapping the detail.stml page to the careers module

* Expand the **web files -> managers -> Career Portal** folders. 
* Open the **Career Portal** module. 
* Click **Modify**. 
* Expand the **Website Properties** accordion.
* Click **Browse** next to the Detail Template textbox. 
* Select the **detail.stml** page located in the **www -> careers** folder. 
* Click **Browse** next to the Detail Folder Location text box. 
* Select the folder **(www ->careers)** that contains the **detail.stml** file.
* Click **Submit**.

## Step 7 – Adding an Entry

* Expand the **web files -> managers -> Career Portal** folders. 
* Open the **Career Portal** module. 
* Click **Add Entry**.
* Enter the Name and Select a Status
* Enter the Career Information for the entry. 
* Enter the Career Content for the entry.
* Set the Start and Stop Schedule. 
* Click **Submit**.