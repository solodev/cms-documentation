# Creating a Team Module

Showcasing your staff members on your website adds a human element to your brand. This tutorial covers the basics of creating a team page using Solodev Modules and Shortcodes. 

## Pre-requisites

Users must be familiar with the following:

* Shortcodes
* Mapping pages to modules

## Step 1 - Installing a team module

* On the Solodev dashboard click **Modules**.
* Click **Add Modules** on the next page.
* On the **Team** card click Install. 
* In the modal window Enter the Name of the module. 
* Click **Browse** and select the **web files -> managers** folder. 
* Click **Choose**. 
* Click **Submit**. 

## Step 2 - Creating a Repeater Template

* Expand the **web files -> content** folders and open the **about-us** folder. 
* Click **Add Folder**. 
* Enter the **Name (team)**, **Title**, and **Description** of the folder. 
* Click **Submit**. 
* Open the **team** folder. 
* Click **Add File**. 
* Enter the **Name (team-repeater.tpl)** and **Title** of the file. 
* Set the File Type to **Code**. 
* Click **Submit**. 
* The user is directed to the open file. 
* In the text box, enter the code provided below: 
```js
<div class="row py-5">
	<div class="text-center col-md-8 mx-auto">
		<h2 class="text-uppercase">Seeing the World Anew</h2>
		<p>Meet the team of talented people that are leading our low earth orbit tours.</p>
	</div>
</div>
  
<div class="row pb-5">
	[repeater id='##'  pages="22" order="start_time desc" display_type="news"]
		<div class="col-md-6 col-lg-3 mt-3">
			<a href="{{path}}">
				<div class="position-relative bg-secondary bg-hover-secondary-dark">
					<img alt="Team Image" src="[get_asset_file_url id='{{team_member_image}}']" class="w-100 img-fluid">
					<div class="text-white text-center border-top border-white w-100 p-2">
						<h2 class="mb-0 h6 text-uppercase">
							[is_set value="{{heading_title}}"]
								{{heading_title}}
							[/is_set]
							[is_empty value="{{heading_title}}"]
								{{event_title}}
							[/is_empty]
						</h2>
						<p class="mb-0"><small>{{team_member_pos}}</small></p>
					</div>
				</div>
			</a>
		</div>
	[/repeater]
</div>
```
* Click **Publish**. 

***Note: The id value in the repeater should match the id value of the module.***

## Step 3 - Creating a detail template

* Open the team folder located in **web files -> content -> about-us** folder. 
* Click **Add File**. 
* Enter the **Name (team-detail.tpl)** and **Title** of the file. 
* Set the File Type to **Code**. 
* Click **Submit**. 
* The user is directed to the open file. 
* In the text box, enter the code provided below: 
```js
[entry]
	<div class="row align-items-center mb-lg-5">
		<div class="col-md-3 text-lg-center text-left">
			<img alt="Image Title" class="w-225p img-fluid rounded-circle" src="[get_asset_file_url id='{{team_member_image}}']">
		</div>
		<div class="col-md-9 mt-lg-0 mt-5">
			[is_set value="{{team_member_pos}}"]
				<h2 class="text-uppercase">{{team_member_pos}}</h2>
			[/is_set]

			<hr class="my-4">
      
			<div class="row">
				<div class="col-md-6">
					<p><i class="w-25p far fa-envelope pr-2"></i> <a href="mailto:{{team_member_email}}">{{team_member_email}}</a></p>
					<p><i class="w-25p fas fa-mobile-alt pr-2"></i> <a href="tel:{{team_member_phone}}">{{team_member_phone}}</a></p>
				</div>
				<div class="col-md-6">
					<p><i class="w-25p fas fa-map-marker-alt pr-2"></i>{{team_member_location}}</p>
					<p><i class="w-25p far fa-clock pr-2"></i>{{team_member_hours}}</p>
				</div>
			</div>
		</div>
  </div>
  <hr>
  <div class="row pt-4">
		<div class="col-sm-12">
			{{post_content}}
		</div>
  </div>
[/entry]
``` 
* Click **Publish**. 

## Step 4 - Creating a page to house the repeater template

* Open the **www** folder. 
* Click **Add** Folder.
* Enter the **Name (team)**, **Title**, and **Description** of the folder. 
* Click **Submit**. 
* Open the **team** folder. 
* Click **Add Page**.
* Enter the **Name (index.stml)**, **Title** and **Description** of the page.
* Choose a template.
* Click **Submit**. 
* The user is directed to the **index.stml** page.
* Select an empty DynamicDiv on the page.
* Select the **team-repeater.tpl** file located in the **web files -> content -> about-us -> team** folder to insert it into the dynamic div.
* Click **Publish**. 

## Step 5 - Creating a page to house the detail template

* With the **www -> team** folder open, click **Add Page**.
* Enter the **Name (detail.stml)**, **Title** and **Description** of the page.
* Choose a template.
* Click **Submit**. 
* The user is directed to the **detail.stml** page.
* Select an empty DynamicDiv on the page.
* Select the **team-detail.tpl** file located in the **web files -> content -> about-us -> team** folder to insert it into the dynamic div.
* Click **Publish**.

##  Step 6 – Mapping the detail.stml page to the team module

* Expand the **web files -> managers -> Staff** folders. 
* Open the **Staff** module. 
* Click **Modify**. 
* Expand the **Website Properties** accordion.
* Click Browse next to the Detail Template textbox. 
* Select the **detail.stml** page located in the **www -> team** folder. 
* Click Browse next to the Detail Folder Location text box. 
* Select the folder **(www ->team)** that contains the detail.stml file.
* Click **Submit**.

## Step 7 - Add an Entry

* Expand the **web files-> managers -> Staff** folders.
* Open the **Team** module.
* Click **Add Entry**
* Set the Status to *Publish**
* Enter the Content
* Choose a Featured Image.
* Click **Submit**.
