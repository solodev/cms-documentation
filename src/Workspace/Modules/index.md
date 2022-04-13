
# Solodev Modules

*Manage content effectively with modules.*

---

## What are modules? 

What do image galleries, blogs, calendars, forms have in common? They all store data such as images, blog entries, dates and contact information. In Solodev, modules are leveraged to manage this data. Modules allow the user to manage any type of data. Modules are one of the most powerful objects in Solodev CMS; they can be as simple or complex as necessary. They can be used to power:

- Web Forms

- Contact Lists

- Employee Listings

- News or Blog Feeds

- Events Calendars

- Photo Galleries

- Landing Pages for Marketing Purposes

- And More!

**There are two types of Modules:**

- Calendars – a type of module that can be modified to create date-based customer facing applications. Calendars can be used to build an unlimited number of custom web and mobile applications to manage content. 

- Datatables – are database dependent applications that can be formatted for display in a variety of ways on several devices. 


**With Datatables, users can build:** 

- User Interface - Build custom user interfaces to interact with your data.

- Database Schemas - Define fields and Solodev CMS builds tables to store data.

- Categorization - Create a system of relationships and categorization for your data.

- RESTful APIs - Utilize a built-in API to expose datatable information to external publishing channels such as websites, mobile apps, intranets and other API enabled technologies.



**Solodev supports the following Calendar Types:**  

- Events – A calendar that shows events that have a specific start and end date.

- Blog -- The blog is suited for article feeds, news entries, and other sets of data where end dates are optional. 

- Photos – A photo calendar is great for displaying photos or creating a gallery. 

- Landing Page – Create landing pages for marketing purposes. 

- Custom – a custom calendar gives users the ability to tailor a calendar type to their needs – using some or all the of functionality in the aforementioned calendar types. 

---

## Managing your content with modules

The previous chapter provided the user with an overview of Modules and the web applications the user can build with them. This article will provide the user with a high-level overview of leveraging modules to manage their content. 

### Step 1: Creating a module

- Click Modules located in the Workspace section of the Solodev Dashboard.

- Click Add Module.

- The user is taken to a page with a list of modules.

- Click the Install button on the Blog Module to bring up the Module Window.

- Enter the Name of the module and click Browse to set the installation location.

- Solodev recommends installing modules into web files -> managers folder.

- Click Submit.

- The module can be found in the web files -> managers -> Blog Module folder.


Note: The module folder reflects the name of the module. 

### Step 2: Adding a module entry
- Open the web files -> managers -> Blog Module folder. 

- Click on the Blog Module to open it. 


- Click the Add Entry button to bring up the Add Entry Blog Module. 


- Enter the Name and choose the Status of the Blog. 

- Under the Image Uploads section, select the Image Type and upload the appropriate the Listing Image.

- Enter the title, introductory paragraph and blog content in the Heading Overwrite, Intro/Subtitle and Body Content fields located in the Post Content Section. 

- Under the META Data section, enter the Meta Title, Meta Description, and Meta Keywords. 

- Under the Advanced section, enter any custom JavaScript

- Enter a Start and End Date for publication. 

- Select the predefined categories or create a custom category for the post.  

- Select the Groups that can access the entry.

- Click Submit. 


**Note:** To save the blog entry without publishing it to the front end click Draft. To save the changes and make them publicly available on the front end click Publish. 

**Note:** Leaving the End Date blank makes the blog post permanent. Leaving the End Date blank on an event based calendar removes the event 24 hours after the Start Date. 

### Step 3: Viewing entry details

- Open the Blog Module folder and click Blog Module to open it.

- Click on the pen and paper icon to open the entry in a new tab.

### Step 4: Exporting module entries

- Open the Blog Module folder and click Blog Module or the name of the module to open it. 

- Click the checkbox to the left of the Status column to select all entries or the checkbox next to each entry to select specific entries. 

- Click Export.

- A .csv  file with all the entries and their corresponding columns will be downloaded to the user’s machine.


Note: Users can export up to 250 entries at once. Click the select box below all the entries and choose the desired number entries per page before selecting all entries.  


### Step 5: Deleting module entries

- Open the Blog Module folder and click Blog Module to open it.

- Click the checkbox to select the desired entry.

- Click Delete to bring up the Delete window for the module.

- Review the warning and click Submit. 


### Step 6: Modifying a module 

- Open the Blog Module folder and click Blog Module to open it.

- Click Modify to bring up the module window.

- Users are given the ability to hide columns from the module schema, define advanced options, modify the table schema, or change the name and type of module. 

- After making the desired changes click Submit.


### Step 7: Delete a module

- Open the folder that contains the module. 

- Click the checkbox to select the Blog Module. 

- Click the Delete to bring up the Delete modal window. 

- Click Submit. 

---

## Managing your content with modules part II 

The chapter titled Managing your content with modules showed users how to create and modify blog modules and their entries. This article shows the user how to add blog modules to a page. 

Solodev recommends using short codes to add Modules to pages. This document will use the blog from the previous example. Before adding the Blog Module to a page, the user must create a repeater and detail files. 

### Step 1: Creating a repeater template

The repeater template, although optional, displays all entries in the module used. The repeater is written in Solodev Short codes and refers to the user interface template, printing fields in the form of PHP variables through an `$item` array.

**Shortcode**

 `[repeater]`

| Attributes (att$) | Description |
| ----------- | ----------- |
| [id] (required) | ID of the module from which the data is pulling |
| [limit] (required) | 0 starting at the first entry and the second integer specifiying the number of entries to display on the page |
| [order] (optional) | Specifies how repeater will organize the data such as by "start_time_desc" which will organize entries by the latest start time first |
| [type] (optional) | Specifies the type of manager that provides the data (default: calendar) |
| {{field_name}} | Insert the names of your HTML fields in side these curly brces to print out the appropriate variable. You can find the field_name on your Table Schema | 

- Open the desired folder that will contain the repeater file. 

- Click Add File and enter the Name, Title, and Description. 

- Select Code for the File Type.

- Click Submit.

- In the file enter the following code: 

```html
[repeater id="##" limit="0,2"]

<h2>{{event_title}}</h2>

<p>{{blog_intro}}</p>

<a href="{{path}}">{{event_title}}</a>

[/repeater]

```

- Click Publish.

### Step 2: Creating a detail template

The display template shows the specifics of an individual entry from a repeater template. An example would be clicking on an individual blog entry from a list of entries to see the entire blog post. The detail page is a subpage of its parent page on the repeater template. 

 

**Shortcode:**

` [entry] `

- Open the desired folder that will contain the detail file. 

- Click Add File and enter the Name, Title, and Description. 

- Select Code for the File Type.

- Click Submit.

- In the file enter the code: 

```html 
[entry]

<h1>{{name}}</h1>

<p>{{blog_content}}</p>

[/entry] 
```
- Click Publish


### Step 3: Create a page to house the repeater template

- Expand the www folder and open the folder that will contain the repeater page. 

- Click Add Page. 

- In the Add Page modal and enter the Name, Title, and Description for the page. 

- Click Submit.

- Open the page and click the dropzone that will contain the repeater template file. 

- Select the repeater template to insert into the dropzone.

- Click Publish.

### Step 4: Create a page to house the detail template

- Expand the www folder and open the folder that will contain the detail page. 

- Click Add Page. 

- In the Add Page modal and enter the Name, Title, and Description for the page. 

- Click Submit.

- Open the page and click the dropzone that will contain the detail template file. 

- Select the detail template to insert into the dropzone. 

- Click Publish. 

### Step 5: Linking the repeater page to the detail page

- Open the Blog Module located in the web files -> managers -> Blog Module folder.

- Click Modify. 

- In the Modify Blog modal click the arrow located to the right of Website Properties. 

- Click Browse in the Detail Page Template section. 

- Select the .stml page that contains the detail template. 

- Click Choose.

- Click Browse in the Detail Folder Location. 

- Click Choose to select the folder that contains the news detail page. 

- Click Submit. 

**Note:** Solodev recommends creating the detail and repeater templates and pages before adding entries to the blog. If the user had added entries before doing so, the user must open and save each entry for the linking process to take effect. 

---

## Creating a career module

Solodev provides a Career Portal module that allows organizations to attract the best labour talent by listing their open positions. Learn how to create Careers modules in Solodev where users are able to add open positions without any coding knowledge. This module requires an index page and a detail page. 

Users should be familiar with: 

- Using shortcodes. 

- Mapping pages to modules. 

### Step 1: Installing a career portal module

- On the Solodev dashboard, click Modules.

- Click Add Module on the next page. 

- On the Career Portal card, click Install. 

- In the modal window enter the name of the module. 

- Click Browse and select the web files -> managers folder. 

- Click Choose. 

- Click Submit.

### Step 2: Creating a repeater template

- Expand the web files -> content folders and open the careers folder (Create one in the content folder if it has not been created). 

- In the careers folder, click Add File. 

- Enter the Name (careers-repeater.tpl) and Title of the file. 

- Set the File Type to Code. 

- Click Submit. 

- The user is directed to the open file. 

- In the text box, enter the code provided below: 

```html 

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

- Click Publish.

**Note:** The id value in the repeater should match the id value of the module. 

### Step 3: Creating a detail template

- Open the careers folder located in web files -> content folder. 

- Click Add File. 

- Enter the Name (careers-detail.tpl) and Title of the file. 

- Set the File Type to Code. 

- Click Submit. 

- The user is directed to the open file. 

- In the text box, enter the code provided below: 

```html
[entry]
	[is_set value="{{career_intro}}"]
		<h2>{{career_intro}}</h2>
	[/is_set]

	{{post_content}}
[/entry]

```

### Step 4: Creating a page to house the repeater template

- Open the www folder. 

- Click Add Folder.

- Enter the Name (careers), Title, and Description of the folder. 

- Click Submit. 

- Open the careers folder. 

- Click Add Page.

- Enter the Name (index.stml), Title and Description of the page.

- Choose a template.

- Click Submit. 

- The user is directed to the index.stml page.

- Select an empty DynamicDiv on the page.

- Select the careers-repeater.tpl file located in the web files -> content -> careers folder to insert it into the dynamic div.

- Click Publish. 

### Step 5: Creating a page to house the detail template

- With the www -> careers folder open, click Add Page.

- Enter the Name (detail.stml), Title and Description of the page.

- Choose a template.

- Click Submit. 

- The user is directed to the detail.stml page.

- Select an empty DynamicDiv on the page.

- Select the careers-detail.tpl file located in the web files -> content -> careers folder to insert it into the dynamic div.

- Click Publish. 

### Step 6: Mapping the detail.stml page to the careers module

- Expand the web files -> managers -> Career Portal folders. 

- Open the Career Portal module. 

- Click Modify. 

- Expand the Website Properties accordion.

- Click Browse next to the Detail Template textbox. 

- Select the detail.stml page located in the www -> careers folder. 

- Click Browse next to the Detail Folder Location text box. 

- Select the folder (www ->careers) that contains the detail.stml file.

- Click Submit.

### Step 7: Adding an Entry

- Expand the web files -> managers -> Career Portal folders. 

- Open the Career Portal module. 

- Click Add Entry.

- Enter the Name and Select a Status

- Enter the Career Information for the entry. 

- Enter the Career Content for the entry.

- Set the Start and Stop Schedule. 

- Click Submit.

---

## Creating a news module 


Soldev gives users the power to create a module to draft and publish news entries to keep their customers up to date with the most recent company news. This tutorial shows users how to create a news module in Solodev where they can add entries with no coding knowledge. This module requires an index page and a detail page. The index page contains the repeater template and the detail page contains the detail template. 

Users should be familiar with: 

- Using shortcodes. 

- Mapping pages to modules.

### Step 1: Installing a news module

- On the Solodev dashboard, click Modules.

- Click Add Module on the next page. 

- On the News Desk card, click Install. 

- In the modal window enter the name of the module. 

- Click Browse and select the web files -> managers folder. 

- Click Choose. 

- Click Submit. 


### Step 2: Creating a repeater template

- Expand the web files -> content folders and open the news folder (Create one in the content folder if it has not been created). 

- In the news folder, click Add File. 

- Enter the Name (news-repeater.tpl) and Title of the file. 

- Set the File Type to Code. 

- Click Submit. 

- The user is directed to the open file. 

- In the text box, enter the code provided below: 

```html
<div class="row">
	[repeater id='##'  pages="22" order="start_time desc" display_type="news"]
		<div class="col-sm-6 col-lg-4 mt-4">
			<div class="bg-light-gray bg-hover-light-gray-dark pointer box-sizing h-100" onclick="location.href='{{path}}'">
				<img alt="{{event_title}}" src="[get_asset_file_url id='{{news_image}}']" class="img-fluid h-200p cover w-100">
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

- Click Publish.

**Note:** The id value in the repeater should match the id value of the module.

### Step 3: Creating a detail template

- Open the news folder located in web files -> content folder. 

- Click Add File. 

- Enter the Name (news-detail.tpl) and Title of the file. 

- Set the File Type to Code. 

- Click Submit. 

- The user is directed to the open file. 

- In the text box, enter the code provided below: 

```html 

[entry]
	[is_set value={{post_intro}}]
		<h2 class="mb-0 h3">{{post_intro}}</h2>
	[/is_set]

	<img alt="{{event_title}} Image" class="img-fluid my-5" src="[get_asset_file_url id={{news_image}}]">
	{{post_content}}
[/entry]

```

- Click Publish.

### Step 4: Creating a page to house the repeater template

- Open the www folder. 

- Click Add Folder.

- Enter the Name (news), Title, and Description of the folder. 

- Click Submit. 

- Open the news folder. 

- Click Add Page.

- Enter the Name (index.stml), Title and Description of the page.

- Choose a template.

- Click Submit. 

- The user is directed to the index.stml page.

- Select an empty DynamicDiv on the page.

- Select the news-repeater.tpl file located in the web files -> content -> news folder to insert it into the dynamic div.

- Click Publish. 

### Step 5: Creating a page to house the detail template

- With the www -> news folder open, click Add Page.

- Enter the Name (detail.stml), Title and Description of the page.

- Choose a template.

- Click Submit. 

- The user is directed to the detail.stml page.

- Select an empty DynamicDiv on the page.

- Select the news-detail.tpl file located in the web files -> content -> news folder to insert it into the dynamic div.

- Click Publish.

### Step 6: Mapping the detail.stml page to the team module

- Expand the web files -> managers -> News folders. 

- Open the News module. 

- Click Modify. 

- Expand the Website Properties accordion.

- Click Browse next to the Detail Template textbox. 

- Select the detail.stml page located in the www -> news folder. 

- Click Browse next to the Detail Folder Location text box. 

- Select the folder (www ->news) that contains the detail.stml file.

- Click Submit.

### Step 7: Adding an Entry

- Expand the web files -> managers -> News folders. 

- Open the News module. 

- Click Add Entry.

- Enter the Name. 

- Select a Status.

- Populate the Content and Intro/Excerpt.

- Upload a Featured Image.

- Set the categories 

- Click Submit. 

--- 

## Creating a team module 

Showcasing your staff members on your website adds a human element to your brand. This tutorial covers the basics of creating a team page using Solodev Modules and Shortcodes.

Users must be familiar with the following: 

- Shortcodes

- Mapping pages to modules. 

### Step 1: Installing a team module 

- On the Solodev dashboard click Modules.

- Click Add Modules on the next page.

- On the Team card click Install. 

- In the modal window Enter the Name of the module. 

- Click Browse and select the web files -> managers folder. 

- Click Choose. 

- Click Submit. 

### Creating a repeater template

- Expand the web files -> content folders and open the about-us folder. 

- Click Add Folder. 

- Enter the Name (team), Title, and Description of the folder. 

- Click Submit. 

- Open the team folder. 

- Click Add File. 

- Enter the Name (team-repeater.tpl) and Title of the file. 

- Set the File Type to Code. 

- Click Submit. 

- The user is directed to the open file. 

- In the text box, enter the code provided below: 

```html

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

- Click Publish. 

**Note:** The id value in the repeater should match the id value of the module.

### Step 3: Creating a detail template

- Open the team folder located in web files -> content -> about-us folder. 

- Click Add File. 

- Enter the Name (team-detail.tpl) and Title of the file. 

- Set the File Type to Code. 

- Click Submit. 

- The user is directed to the open file. 

- In the text box, enter the code provided below: 

```html 

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
- Click Publish. 

### Step 4: Creating a page to house the repeater template

- Open the www folder. 

- Click Add Folder.

- Enter the Name (team), Title, and Description of the folder. 

- Click Submit. 

- Open the team folder. 

- Click Add Page.

- Enter the Name (index.stml), Title and Description of the page.

- Choose a template.

- Click Submit. 

- The user is directed to the index.stml page.

- Select an empty DynamicDiv on the page.

- Select the team-repeater.tpl file located in the web files -> content -> about-us -> team folder to insert it into the dynamic div.

- Click Publish. 


### Step 5: Creating a page to house the detail template

- With the www -> team folder open, click Add Page.

- Enter the Name (detail.stml), Title and Description of the page.

- Choose a template.

- Click Submit. 

- The user is directed to the detail.stml page.

- Select an empty DynamicDiv on the page.

- Select the team-detail.tpl file located in the web files -> content -> about-us -> team folder to insert it into the dynamic div.

- Click Publish.

### Step 6: Mapping the detail.stml page to the team module 

- Expand the web files -> managers -> Staff folders. 

- Open the Staff module. 

- Click Modify. 

- Expand the Website Properties accordion.

- Click Browse next to the Detail Template textbox. 

- Select the detail.stml page located in the www -> team folder. 

- Click Browse next to the Detail Folder Location text box. 

- Select the folder (www ->team) that contains the detail.stml file.

- Click Submit.


### Step 7: Add an Entry

- Expand the web files -> managers -> Staff folders. 

- Open the Team module. 

- Click Add Entry. 

- Set the Status to Publish. 

- Enter the Content.

- Choose a Featured Image.

- Click Submit. 

---

## Creating a landing page module 

Landing pages allow businesses to create pages that serve different purposes or contain content intended for different audiences. Businesses use a site of origin (display ad, blog post, link tweet) to direct their users to the appropriate landing page. 

This tutorial shows users how to create a landing page using Solodev’s modules. 

Users must be familiar with: 

- Shortcodes. 

- Mapping pages to a module. 


### Step 1: Installing a landing page module

- On the Solodev dashboard, click Modules. 

- Click Add Module on the next page.

- On the Landing Page Studio card click Install. 

- In the modal window click Browse and select the web files -> managers folder. 

- Click Choose. 

- Click Submit. 

### Step 2: Creating a detail template

- Expand the web files folder and open the content folder. 

- Click Add Folder. 

- Enter the Name (landing-page), Title, and Description of the folder. 

- Click Submit. 

- Open the landing-page folder. 

- Click Add File. 

- Enter the Name (landing-page.tpl) and Title of the file. 

- Set the File Type to Code. 

- Click Submit. 

- The user is directed to the open file. 

- In the text-box, enter the code provided below:

```html 

[entry]
	<section class="container my-5">
		<div class="row">
			<div class="col-lg-7 col-xl-8 pr-lg-5">
				<img alt="[site_name] Logo" aria-role="logo" class="img-fluid pb-3 w-250p" src="[site_logo]">
				[is_empty value="{{heading_title}}"]
					<h1 class="h2 m-0 mt-3 text-center"><strong>{{event_title}}</strong></h1>
				[/is_empty]
				<img alt="{{event_title}} Feature Image" class="img-fluid my-5" src="[get_asset_file_url id='{{main_image}}']">
				{{landing_page_content}}
			</div>
			<aside class="col-lg-5 col-xl-4">
				<form action="{{formcall}}" data-toggle="validator" method="post" role="form">
					<div class="primary-top-border bg-light-gray mt-sm-4 mt-md-0 p-5">
						<h3 class="text-uppercase mb-5 text-center h4"><strong>{{formtitle}}</strong></h3>
						<div class="form-group mt-4">
							<label class="font-weight-bold" for="prospect_fname">First Name <span class="text-scarlet">*</span></label>
							<input class="form-control rounded-0 required w-100" id="prospect_fname" name="prospect_fname" type="text">
						</div>
						<div class="form-group mt-4">
							<label class="font-weight-bold" for="prospect_lname">Last Name <span class="text-scarlet">*</span></label>
							<input class="form-control rounded-0 required w-100" id="prospect_lname" name="prospect_lname" type="text">
						</div>
						<div class="form-group">
							<label class="font-weight-bold" for="email">Email <span class="text-scarlet">*</span></label>
							<input class="form-control rounded-0 required w-100" id="email" name="email" type="text">
						</div>
						<div class="form-group mt-3">
							<label class="font-weight-bold" for="title">Title</label>
							<input class="form-control rounded-0 w-100" id="title" name="title" type="text">
						</div>
						<div class="form-group mt-3">
							<label class="font-weight-bold" for="company">Company</label>
							<input class="form-control rounded-0 w-100" id="company" name="company" type="text">
						</div>
						<div class="form-group mt-3">
							<label class="font-weight-bold" for="phone">Phone</label>
							<input class="form-control rounded-0 w-100 mt-1" id="phone" name="phone" type="text">
						</div>
						<div class="text-center">
							<input class="btn btn-primary btn-lg mt-3" type="submit" value="{{formtext}}">
						</div>
					</div>
				</form>
			</aside>
		</div>
	</section>
	<section class="bg-primary-dark text-center text-white py-5 mt-sm-5">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
					<h2>{{mid_title}}</h2>
					<p>{{mid_content_supporting}}</p>
				</div>
			</div><!-- Begin Fourbox -->
			<div class="row mt-lg-5">
				<div class="col-md-6 col-lg-3 mt-sm-4">
					<i class="fa-2x {{box_1_icon}}"></i>
					<h3 class="h4 text-uppercase mt-3">{{box_1_heading}}</h3>
					<p>{{box_1_text}}</p>
				</div>
				<div class="col-md-6 col-lg-3 mt-sm-4">
					<i class="fa-2x {{box_2_icon}}"></i>
					<h3 class="h4 text-uppercase mt-3">{{box_2_heading}}</h3>
					<p>{{box_2_text}}</p>
				</div>
				<div class="col-md-6 col-lg-3 mt-sm-4">
					<i class="fa-2x {{box_3_icon}}"></i>
					<h3 class="h4 text-uppercase mt-3">{{box_3_heading}}</h3>
					<p>{{box_3_text}}</p>
				</div>
				<div class="col-md-6 col-lg-3 mt-sm-4">
					<i class="fa-2x {{box_4_icon}}"></i>
					<h3 class="h4 text-uppercase mt-3">{{box_4_heading}}</h3>
					<p>{{box_4_text}}</p>
				</div>
			</div>
			[cond type="is" subject="{{linktype}}" value="Internal"]
				<a class="btn btn-secondary btn-lg mt-md-5 mt-sm-4" href="{{internal_page}}">{{mid_content_btn}}</a>
			[/cond]
			[cond type="is" subject="{{linktype}}" value="External"]
				<a class="btn btn-secondary btn-lg mt-md-5 mt-sm-4" href="{{external_page}}">{{mid_content_btn}}</a>
			[/cond]
		</div>
	</section>
	<section class="bg-light-gray">
		<div class="container">
			<div class="row">
				<div class="col-md-5 py-5"><img alt="{{bottom_tile_title}} Image" class="img-fluid" src="[get_asset_file_url id='{{bottom_tile_image}}']"></div>
				<div class="col-md-6 py-5 ml-auto d-flex align-items-center">
					<div>
						<h3>{{bottom_tile_title}}</h3>
						<p>{{bottom_tile_text}}</p>
						<a class="btn btn-lg btn-primary" href="{{bottom_cta_link}}">{{bottom_cta_text}}</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<div class="bg-eerie-black text-white py-4 mt-5">
			<div class="container">
				<div class="row align-items-center justify-content-between">
					<div class="col-lg-7 mt-3 mt-lg-0 text-center text-md-left">
						<p class="small mb-0">&copy; [site_name]. All Rights Reserved worldwide and across the galaxy. <a class="text-white pl-1" href="/sitemap.stml"><strong><u>Site Map</u></strong></a> <a class="text-white pl-1" href="/privacy-policy.stml"><strong><u>Privacy Policy</u></strong></a></p>
					</div>
					<div class="col-sm-6 col-lg-2 p-0 mt-3 mt-lg-0 text-center">
						<p class="mb-0 small">Powered by <a class="text-white" href="https://www.solodev.com" target="_blank"><u>Solodev CMS</u></a><i class="pointer pl-3 fas fa-chevron-circle-up fa-lg" id="scroll-top"></i></p>
					</div>
					<div class="col-sm-6 col-lg-3 mt-3 mt-lg-0 text-md-right text-center">
						<ul class="list-inline mb-0">
							<li class="list-inline-item mb-0 mr-3">
								<a href="[site_facebook]" target="_blank"><i class="fab fa-lg fa-facebook-f text-orange"></i></a>
							</li>
							<li class="list-inline-item mb-0 mr-3">
								<a href="[site_twitter]" target="_blank"><i class="fab fa-lg fa-twitter text-orange-dark"></i></a>
							</li>
							<li class="list-inline-item mb-0 mr-3">
								<a href="[site_linkedin]" target="_blank"><i class="fab fa-lg fa-linkedin-in text-watermelon"></i></a>
							</li>
							<li class="list-inline-item mb-0 mr-3">
								<a href="[site_youtube]" target="_blank"><i class="fab fa-lg fa-youtube text-rose"></i></a>
							</li>
							<li class="list-inline-item mb-0">
								<a href="[site_instagram]" target="_blank"><i class="fab fa-lg fa-instagram text-primary"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
[/entry]

```

- Click Publish. 

### Step 3: Creating a detail page

- Open the www folder. 

- Click Add Folder. 

- Enter a Name (landing-page), Title and Description for the folder.

- Click Submit. 

- Open the landing-page folder. 

- Click Add Page. 

- Enter the Name (detail.stml), Title, and Description of the Page. 

- Choose a template.

- Click Submit. 

- Select an empty DynamicDiv on the page. 

- Select the landing-page.tpl  file located in the web files -> content -> landing page folder to insert it into the DynamicDiv. 

- Click Publish.  

### Step 4: Mapping the detail.stml page to the landing page studio module

- Expand the web files -> managers -> Landing Page Studio folders. 

- Open the Language Page Studio module. 

- Click Modify. 

- Expand the Website Properties accordion.

- Click Browse next to the Detail Template textbox. 

- Select the detail.stml page located in the www -> landing-page folder. 

- Click Browse next to the Detail Folder Location text box. 

- Select the folder (www -> landing-page) that contains the detail.stml file

- Click Submit. 

### Step 5: Adding an entry to the module 

- Expand the web files -> managers -> Landing Page Studio folders. 

- Open the Landing Page Studio module. 

- Click Add Entry. 

- Enter the Name and set the Status to Publish. 

- Enter the Heading Overwrite (optional) and required Main Image.

- Enter the required Landing Page content.

- Expand the Form settings and enter the required Lead Form Title, Lead Form Call to Action, and Lead Form Action.

- Expand the optional Long Version Content. 

- Here users are able to enter a main title for the middle section, call to action button, and supporting text.

- Users can also specify box headings, icons, and text. 

- Expand the Bottom Tile. 

- Enter the Bottom Tile Title and choose a Bottom Tile Image. 

- Enter the Bottom Tile Text, Bottom Tile Call to Action Link and Bottom Tile call to Action Text.

- Click Submit.

---

## Creating an image gallery 

Users can leverage an image gallery to display photos in an organized way, separating them by categories. This document shows the user how to create an image gallery module. 

Solodev recommends building an image gallery using a custom module. Before starting users should be able to:

- Create a custom HTML form a for a module

- Upload their custom form to a module

- Understand the relations between forms and table schemas. 

- Understand and use shortcodes. 

### Step 1: Install a custom module 

- From the Solodev workspace click Modules.

- Click Add Module.

- In the Custom Builder card, click Install.

- Enter a Name. 

- Select Calendar for the Type and Photos for the Display.

- Click Browse and install the module in the web files -> managers folder of the website. 

- Click Submit. 

### Step 2: Configuring the module as an image gallery

- Open the module.

- Click Modify.

- Click the arrow to expand the Advanced Options section. 

- Click Upload Form.

- Choose the appropriate form. 

- Below the Post Processing textbox, click the checkbox to Enable Attachments/Gallery.

- Click Submit. 

**Note:** Solodev recommends uploading forms instead of modifying the .tpl file folder located in the Assets Folder. Uploading forms will automatically update the table schema.  


### Step 3: Adding a photo gallery 

- Open the module.

- Click Add Entry. 

- Enter a Name in the textbox.

- Set the Status to Publish. 

- Upload a Featured Image. Click Browse to upload an image from Solodev CMS. Click Upload to upload an image from your local machine. 

- Enter the Meta Data.

- Set the Schedule.

- Assign the entry to groups if needed. 

- Click Submit. 

- The user is automatically directed to the newly created entry.

- In the entry click the arrow to the right to expand the Attachments/Gallery section.

- Click Upload. 

- In the modal window that appears, click Browse.

- Choose the images and click Submit.

- Click Save button at the top the page. 

**Note:** Users are able to add descriptions and ranks to the images in the gallery. To save the descriptions and ranks click the Save button next to text boxes. 

### Step 4: Creating a repeater template

- Open the desired folder that will contain the repeater file. 

- Click Add File and enter the Name, Title, and Description. 

- Select Code for the File Type.

- Click Submit.

- In the file enter the following lines of code:

```html 
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

- Click Publish

**Note:** The id value in the repeater should match the id value of the module.

**Note:** The opening repeater tag's id number must match the ID number of the module. In the example below, the ID of the module is 20 so the repeater id should be set to 20. 

```
[repeater id='20'  pages="5" order="start_time desc" display_type="news"][/repeater]
```

### Step 5: Creating a repeater page and adding a repeater template

- Expand the www folder and open the folder that will contain the repeater page. 

- Click Add Page. 

- In the Add Page modal and enter the Name, Title, and Description for the page. 

- Open the page and click the dropzone that will contain the repeater template file. 

- Select the repeater template to insert into the dropzone. 

- Click Publish.


### Step 6: Creating a detail template**

- Open the desired folder that will contain the detail file. 

- Click Add File and enter the Name, Title, and Description. 

- Select Code for the File Type.

- Click Submit.

- In the file enter the code: 

```html

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

- Click Publish. 

### Step 7: Creating a detail page and adding a detail template

- Expand the www folder and open the folder that will contain the detail page. 

- Click Add Page. 

- In the Add Page modal and enter the Name, Title, and Description for the page. 

- Open the page and click the dropzone that will contain the detail template file. 

- Select the detail template to insert into the dropzone. 

- Click Publish.

### Step 8: Linking the repeater page to the detail page

- Open the module.

- Click Modify. 

- In the modal window click the arrow located to the right of Website Properties. 

- Click Browse in the Detail Page Template section. 

- Select the detail.stml page. 

- Click Choose.

- Click Browse in the Detail Folder Location. 

- Select the folder that contains the gallery detail page. 

- Click Submit. 

### Step 9: Resave the entries

- Open the module

- Click the pen and paper icon beside the entry in the datatable. 

- Click the Save button near the top of the module entry page. 

- Users can bring up the image gallery on the front page. 