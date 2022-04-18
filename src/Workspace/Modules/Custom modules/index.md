
# Custom modules

*Learn how to build and publish custom modules or add custom features to existing modules to suit your needs.*

---

## Creating a career module

Solodev provides a Career Portal module that allows organizations to attract the best labour talent by listing their open positions. Learn how to create Careers modules in Solodev where users are able to add open positions without any coding knowledge. This module requires an index page and a detail page. 

Users should be familiar with: 

- Using shortcodes. 

- Mapping pages to modules. 


**Step 1: Installing a career portal module**

- On the Solodev dashboard, click Modules.

- Click Add Module on the next page. 

- On the Career Portal card, click Install. 

- In the modal window enter the name of the module. 

- Click Browse and select the web files -> managers folder. 

- Click Choose. 

- Click Submit.


**Step 2: Creating a repeater template**

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


**Step 3: Creating a detail template**

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

**Step 4: Creating a page to house the repeater template**

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


**Step 5: Creating a page to house the detail template**

- With the www -> careers folder open, click Add Page.

- Enter the Name (detail.stml), Title and Description of the page.

- Choose a template.

- Click Submit. 

- The user is directed to the detail.stml page.

- Select an empty DynamicDiv on the page.

- Select the careers-detail.tpl file located in the web files -> content -> careers folder to insert it into the dynamic div.

- Click Publish. 


**Step 6: Mapping the detail.stml page to the careers module**

- Expand the web files -> managers -> Career Portal folders. 

- Open the Career Portal module. 

- Click Modify. 

- Expand the Website Properties accordion.

- Click Browse next to the Detail Template textbox. 

- Select the detail.stml page located in the www -> careers folder. 

- Click Browse next to the Detail Folder Location text box. 

- Select the folder (www ->careers) that contains the detail.stml file.

- Click Submit.


**Step 7: Adding an Entry**

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

**Step 1: Installing a news module**

- On the Solodev dashboard, click Modules.

- Click Add Module on the next page. 

- On the News Desk card, click Install. 

- In the modal window enter the name of the module. 

- Click Browse and select the web files -> managers folder. 

- Click Choose. 

- Click Submit. 


**Step 2: Creating a repeater template**

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

**Step 3: Creating a detail template**

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

**Step 4: Creating a page to house the repeater template**

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


**Step 5: Creating a page to house the detail template**

- With the www -> news folder open, click Add Page.

- Enter the Name (detail.stml), Title and Description of the page.

- Choose a template.

- Click Submit. 

- The user is directed to the detail.stml page.

- Select an empty DynamicDiv on the page.

- Select the news-detail.tpl file located in the web files -> content -> news folder to insert it into the dynamic div.

- Click Publish.


**Step 6: Mapping the detail.stml page to the team module**

- Expand the web files -> managers -> News folders. 

- Open the News module. 

- Click Modify. 

- Expand the Website Properties accordion.

- Click Browse next to the Detail Template textbox. 

- Select the detail.stml page located in the www -> news folder. 

- Click Browse next to the Detail Folder Location text box. 

- Select the folder (www ->news) that contains the detail.stml file.

- Click Submit.


**Step 7: Adding an Entry**

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


**Step 1: Installing a team module** 

- On the Solodev dashboard click Modules.

- Click Add Modules on the next page.

- On the Team card click Install. 

- In the modal window Enter the Name of the module. 

- Click Browse and select the web files -> managers folder. 

- Click Choose. 

- Click Submit. 

**Step2: Creating a repeater template**

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


**Step 3: Creating a detail template**

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


**Step 4: Creating a page to house the repeater template**

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


**Step 5: Creating a page to house the detail template**

- With the www -> team folder open, click Add Page.

- Enter the Name (detail.stml), Title and Description of the page.

- Choose a template.

- Click Submit. 

- The user is directed to the detail.stml page.

- Select an empty DynamicDiv on the page.

- Select the team-detail.tpl file located in the web files -> content -> about-us -> team folder to insert it into the dynamic div.

- Click Publish.


**Step 6: Mapping the detail.stml page to the team module** 

- Expand the web files -> managers -> Staff folders. 

- Open the Staff module. 

- Click Modify. 

- Expand the Website Properties accordion.

- Click Browse next to the Detail Template textbox. 

- Select the detail.stml page located in the www -> team folder. 

- Click Browse next to the Detail Folder Location text box. 

- Select the folder (www ->team) that contains the detail.stml file.

- Click Submit.


**Step 7: Add an Entry**

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


**Step 1: Installing a landing page module**

- On the Solodev dashboard, click Modules. 

- Click Add Module on the next page.

- On the Landing Page Studio card click Install. 

- In the modal window click Browse and select the web files -> managers folder. 

- Click Choose. 

- Click Submit. 

**Step 2: Creating a detail template**

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

**Step 3: Creating a detail page**

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

**Step 4: Mapping the detail.stml page to the landing page studio module**

- Expand the web files -> managers -> Landing Page Studio folders. 

- Open the Language Page Studio module. 

- Click Modify. 

- Expand the Website Properties accordion.

- Click Browse next to the Detail Template textbox. 

- Select the detail.stml page located in the www -> landing-page folder. 

- Click Browse next to the Detail Folder Location text box. 

- Select the folder (www -> landing-page) that contains the detail.stml file

- Click Submit. 

**Step 5: Adding an entry to the module** 

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

**Step 1: Install a custom module**

- From the Solodev workspace click Modules.

- Click Add Module.

- In the Custom Builder card, click Install.

- Enter a Name. 

- Select Calendar for the Type and Photos for the Display.

- Click Browse and install the module in the web files -> managers folder of the website. 

- Click Submit. 

**Step 2: Configuring the module as an image gallery**

- Open the module.

- Click Modify.

- Click the arrow to expand the Advanced Options section. 

- Click Upload Form.

- Choose the appropriate form. 

- Below the Post Processing textbox, click the checkbox to Enable Attachments/Gallery.

- Click Submit. 

**Note:** Solodev recommends uploading forms instead of modifying the .tpl file folder located in the Assets Folder. Uploading forms will automatically update the table schema.  


**Step 3: Adding a photo gallery**

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


**Step 4: Creating a repeater template**

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

**Step 5: Creating a repeater page and adding a repeater template**

- Expand the www folder and open the folder that will contain the repeater page. 

- Click Add Page. 

- In the Add Page modal and enter the Name, Title, and Description for the page. 

- Open the page and click the dropzone that will contain the repeater template file. 

- Select the repeater template to insert into the dropzone. 

- Click Publish.


**Step 6: Creating a detail template**

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

**Step 7: Creating a detail page and adding a detail template**

- Expand the www folder and open the folder that will contain the detail page. 

- Click Add Page. 

- In the Add Page modal and enter the Name, Title, and Description for the page. 

- Open the page and click the dropzone that will contain the detail template file. 

- Select the detail template to insert into the dropzone. 

- Click Publish.

**Step 8: Linking the repeater page to the detail page**

- Open the module.

- Click Modify. 

- In the modal window click the arrow located to the right of Website Properties. 

- Click Browse in the Detail Page Template section. 

- Select the detail.stml page. 

- Click Choose.

- Click Browse in the Detail Folder Location. 

- Select the folder that contains the gallery detail page. 

- Click Submit. 

**Step 9: Resave the entries**

- Open the module

- Click the pen and paper icon beside the entry in the datatable. 

- Click the Save button near the top of the module entry page. 

- Users can bring up the image gallery on the front page. 

---


## Creating an image slider 

A slider allows you display a single image or rotating display of images. This is good for feeding users the most valuable content on your site, and prompting them to take action. The following steps will show you how to create a home image slider module from scratch in Solodev.

This tutorial utilizes [Slick Slider by Ken Wheeler](http://kenwheeler.github.io/slick/). You can use any slider you want, but will have to ensure you include all of the necessary resources, both in the CMS itself and in the template files.

**Step 1: Add a module**

 - Go to the main menu and under the Workspace section, click on Modules. 

 - To add a module, click on Add A Module button on the right side.

 ![Add an image slider step 1](add_image_slider_1.png)

 - Select the Custom Builder option from the menu and click Install:

 ![Add an image slider step 2](add_image_slider_2.png)

- When you click on Install, a side menu will show up with the following fields:

* Name: Pick a name for your module that describes it well.

	- **Type:** The type of the module. There are two types of modules in Solodev: Calendars and Datatables. We'll pick Calendar as the type for the image slider. For more information about the differences between the two type modules, you can refer to this link: What Are Modules?

	- **Display:** Pick Custom from the dropdown menu.

	- **Install Location:** Where you would like to install the module. The default place is Data Center so click on the Browse button, find and pick the folder you created for the image sliders to install the module in.

- The customization option menu should look like the screen below. Once you're done, click on Submit and the module will be installed in the folder you specified.

**Step 2: Create a form for the module** 

In order to create and customize all the fields for the image slider, we need to create a structure and a table schema. This all depends on what you're looking to put inside an image gallery. For example if you'd like yo place an h1 heading, an h2 heading, paragraph text, buttons, button link and so on, first you need to create the HTML structure with everything in order and then put in the names of the fields that you'd like to insert into your image gallery. For this purpose, we need to create an HTML form. In this tutorial, we'll supply you with a sample form that you can use and customize for your own needs. First you will need to save this code to your computer. You can use a text editor such as Sublime, or Text Edit. Save the file as a simple text document with .tpl at the end of the file name such as "homepage-slider-form.tpl".

```html 

<div class="row">
  <div class="col-md-6 form-group">
    <label class="control-label" for="small_text">Small Heading Text</label>
    <p class="card-subtitle">(Optional) The first line of the slide title.</p>
    <input class="form-control" id="small_text" name="small_text" type="text">
  </div>
  <div class="col-md-6 form-group">
    <label class="control-label" for="large_text">Large Heading Text</label>
    <p class="card-subtitle">(Optional) The second line of the slide title.</p>
    <input class="form-control" id="large_text" name="large_text" type="text">
  </div>
</div>
<div class="row">
  <div class="col-md-3 form-group">
    <label class="control-label" for="button_link">Link</label>
    <p class="card-subtitle">(Required) The link URL of the slide button.</p>
    <input class="form-control" id="button_link" name="button_link" type="text">
  </div>
  <div class="col-md-3 form-group mt-md-5">
    <div class="form-check checkbox-custom mt-md-2">
      <input id="url_new_window" name="link_external" type="checkbox" value="1">
      <label class="control-label" for="link_external">External Link?</label>
    </div>
  </div>
  <div class="col-md-6 form-group">
    <label class="control-label" for="button_text">Button Text</label>
    <p class="card-subtitle">(Required) The text included inside the slide button.</p>
    <input class="form-control" id="button_text" name="button_text" type="text">
  </div>
</div>
<div class="row">
  <div class="col-md-12 form-group">
    <label class="control-label" for="slider_content">Slider Content</label>
    <p class="card-subtitle">(Required) The content of the slide under its title.</p>
    <textarea class="form-control wysiwyg-basic" id="slider_content" name="slider_content" required=""></textarea>
  </div>
</div>
<div class="row">
  <div class="col-md-6 form-group">
    <label class="control-label" for="slide_picture">Featured Image</label>
    <p class="card-subtitle">(Required) The main content section for an entry. <strong>Dimensions:</strong> 3000px by 840px.</p>
    <input class="form-control" id="slide_picture" name="slide_picture" type="file">
  </div>
</div>

```

The above code was written in HTML and built with Bootstrap. When it is rendered by the browser, this is the output:

![Rendered form](form-structure.png)

The most important thing to pay attention is the names such as small_text, large_text, button_link, link_external, button_text, slider_content, and slide_picture. The rows all form the structure of the slider form and the id names make up the table schema. You'll see how everything comes together below. 

---

**Step 3: Upload the Form to the Image Slider Module**

- Once you copy paste the code above and save the code in a .tpl file, go to the folder inside the managers folder and click on the image slider module:

![Image slider module](id-number.png)

**Note:** Take a note of the ID number on the top left side. We'll use this ID number when we will be creating the form for the slider content. When you create your own image slider or any other module, this ID number will be different. We will use this number for this tutorial only.

- Click on the Modify button to open the settings modal for the image slider module:

![Modify button for the image slider](modify-button.png)

- In the modal, click the dropdown button next to Advanced Options. 

- Under Form Template, click on Upload Form. 

- Find the .tpl file you created on your computer and upload it.

![Modify image slider modal](form-template-menu.png)

- When the form is uploaded, under Grid Display, all the names will automatically appear:

![Grid display](names.png)

- The Table Schema will also be automatically updated:

![Table schema](table-schema.png)


**Step 4: Create the Slides**

- To create a slide, click on the Add Entry button:

![Add entry button](add-entry.png)

As you can see, all the form fields are populated as we designated in the form template beginning with Small Heading Text (small_text), Large Heading Text (large_text), Link (button_link), an option for External Link (link_external), Button Text (button_text), Slider Content (slider_content), and finally, the Featured Image (slide_picture).


![Add image slider entry modal part 1](add-entry-image-slider-1.png)

![Add image slider entry modal part 2](add-entry-image-slider-2.png) 

The fields marked as optional can be left blank. For example, you can choose to write a large heading text, put a button and leave other fields empty. The ones who are left blank won't show up in slides. 

Now that you have created your home slider, its time to add slides.

- In the Add Entry Image Slider menu, give a name to your slide (this won't show up on the slide). 

- Choose a status - Draft or Publish. 

- Fill out the required and desired fields. 

- Upload an image. 

- Hit the Submit button. 

![Slide example](slide-example.png)

- We've added our first slide:

![Single slide example](first-slide.png)

- Go ahead and add more slides with the content you'd like to put. Here is the final version of our slider items:

![Multiple slides example](slides-total.png)

**Step 4: Add a Repeater**

The repeater template will generate the code to repeat all slides. This generally goes into the page file, but it ultimately depends on the website structure. For this case, it will go into the page file.

Just like how we created the home slider tpl file, we will create the repeater file and upload it. We need to add the code to make our slide entries appear.

For the purposes of this tutorial, however, we have provided a repeater template for this tutorial. Add this code to the folder that contains the homepage slider module you created. Copy the code below and make the edit that is required to pull the ID of the correct module.

```html

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<!-- Slick Slider CSS -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<!-- Slick Slider JS -->
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<header aria-label="Home Hero" class="h-lg-553p position-relative" id="home-hero" role="banner">
  <div class="slick slick-home w-100" data-arrows="true" data-autoplay="true">
    [repeater id="60" display_type="news"]
    <div class="slide position-relative" style="background: url('[get_asset_file_url id={{slider_image}}]'); background-repeat:no-repeat;background-position:center;background-size:cover;">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 h-400p h-md-600p d-flex flex-column justify-content-center text-white py-md-5">
            <h2 class="display-4 mb-0">{{small_text}} <span class="d-block font-weight-bold">{{large_text}}</span></h2>
            <p class="lead my-4">{{slider_description}}</p>
            [cond type="is" subject="{{link_external}}" value="1"]
            <a class="btn btn-primary w-max mt-2 text-white" href="{{button_link}}" target="_blank">{{button_text}}</a>
            [/cond]
            [cond type="is_not" subject="{{link_external}}" value="1"]
            <a class="btn btn-primary w-max mt-2 text-white" href="{{button_link}}">{{button_text}}</a>
            [/cond]
          </div><!--  col-->
        </div><!-- row-->
      </div><!-- container-->
    </div>
    [/repeater]
  </div>
</header>

```
**Note:** the only thing that needs to be edited in this code, is the following section:

`repeater id="60" display_type="news"`

The repeater id="" needs the ID of the homepage slider manager. Open the homepage slider manager and look for the ID at the top left under the name of the module. Place the ID number inside the quotes ("").

The image below outlines where to find the ID of the module.

![Image slider id number](id-number.png)

Open the same folder into which you added the home slider manager. Hover over the Add button and click File.

**Step 5: Upload the Repeater File** 

We used the name "repeater" for this file but you can use any name you would like. Name the file and add the extension .tpl at the end of the file name.

The file name should have no spaces. You can add a hyphen (-) between words. Click here for more information on adding a file.

**Step 6: Add the Repeater to the page**

If you haven't already, create a page that will hold your repeater template. 

Navigate to the page that will contain your repeater template. In order to place the file into your STML, you need to select the Dynamic Div in which you’d like to place it by clicking on it. Once it turns blue, select the file from the left hand file tree and hit Publish.

![Inserting the repeater onto the page](repeater-on-page.png)

**Step 7: Adding CSS Styling**

Everything done right now achieves the objective of getting the slider working and placed on a specific page. While, optional, it is highly recommended that you apply CSS styling to make the slider look sharp and professional. For more information and guidance on how to create image sliders with Slick Slider and style them, you can read our tutorials on our blog:

[Adding a Hero Slider to your Homepage Using Slick Slider](https://www.solodev.com/blog/web-design/adding-a-hero-slider-to-your-homepage-using-slick-slider.stml)

[How to Use Text Animations with Slick Slider](https://www.solodev.com/blog/web-design/how-to-use-text-animations-with-slick-slider.stml)

[Creating a Featured Content Slider with Slick Slider](https://www.solodev.com/blog/web-design/creating-a-featured-content-slider-with-slick-slider.stml)

[How to Combine FontAwesome with a Slider to Create Quick Links](https://www.solodev.com/blog/web-design/how-to-combine-fontawesome-with-a-slider-to-create-quick-links.stml)


Congratulations! If you followed all the steps correctly, your homepage slider should be in place and working, looking similar to this:

![Homepage slider example 1](slide-1.png)

![Homepage slider example 2](slide-2.png)

![Homepage slider example 3](slide-3.png)

Your homepage slider should look something like the following hierarchy, with all necessary assets:

![Slider Assets](slider-assets.png)

---

## Customizing Modules

In addition to creating custom modules, users are able to customize modules right down to the form. These next sections allow users to harness the full power of forms to manage their content. 

---

### Adding a WYSIWYG toolbar to a textarea for a module form

The Solodev Visual Editor, also known as a WYSIWYG, editor is an easy-to use browser-based content editor that enables the author to capture and format HTML data without the requirement of coding knowledge. With the WYSIWYG users have access to text editing functions and file enhancements – allowing the user to visualize the end result while the document is being created. 

Users commonly encounter the WYSIWYG when editing an HTML file or adding an entry in the pre-built Solodev modules on the backend. However, users can add the WYSIWYG to their own custom modules. The steps are provided below.


**Step 1: Create a custom module**

- Open the Modules workspace and click Add Module. 

- Click the Install button on the Custom Module. 

- Enter the name of the module, choose ‘Datatable’ for the Type, and choose ‘Website Module’ for the Display.

- Click Browse and install the module in the web files -> managers folder of the website. 

- Click Submit.

**Step2: Modify the Table Schema**

- Open the module located in the web files -> managers -> moduleName folder.

- Click Modify. 

- In the modify modal, set the Datatable Type to Website Module. 

- Click the arrow to expand the Table Schema. 

- Click the red minus sign to remove the name entry. 

- Click the orange + sign twice to add two fields. 

- In the first field under the Name column enter “title”, set the Type to Character and Length to 255. Leave the checkbox in the Allow Null column unchecked and the text-box in the Default column empty.

- In the second field under the Name column enter “article”, set the Type to text area. Leave the checkbox in the Allow Null column unchecked and the text-box in the Default column empty. 

- Click the Modify button. In the modify modal notice that the Grid Display contains the name values submitted in the table schema. 

- Click the arrow to expand the _Assets folder and open the custom-form.tpl file. 

- In the custom-form.tpl file, note that there is html code for a form with a Name label and text input to capture the name. 

- Modify the html code by setting the name value in text input and text area to “title” and “article” respectively so that it matches the values submitted in the table schema. 

- In the opening tag of the text area set the class attribute to wysiwyg or wysiwyg-basic. 

```html

<input type="text" class="form-control" name="title" id="title">

<textarea name="article" form="blog" id="article" class="wysiwyg">Enter text here...</textarea>

```

- Set the labels appropriately. The full code block for the form is provided below

```html

<h2><label class="label-control" for="title">Title</label></h2>
<input type="text" class="form-control" name="title" id="title">
<h2><label class="label-control" for="article">Article</label></h2>
<textarea name="article" form="blog" id="article" class="wysiwyg">Enter text here...</textarea>

```

- Click Publish.

---

### Creating categories for modules

Categories are used for broad grouping of posts. Consider them as general topics or table of contents for a website. Categories exist to help identify the subject of a blog. Developers can leverage categories to help their audience find the right type of content on their site. Categories are hierarchal which allows developers to use sub-categories. The steps for creating categories are provided below. 

**Step 1: Add a collection**

- Open the Blog Module folder located in web files -> managers.

- Click Add Collection.

- Enter the Name, Title and Description of the collection.  

- Click Submit. 

**Step 2: Add categories**

- Open the newly created collection

- Enter a category in the textbox and click Add. 

- The category is added below. 

**Step 3: Add subcategories**

- Click parent category to select it. 

- Type the name of the sub-category in the textbox and click Add. 

- The subcategory will appear underneath the folder of the parent category. 

**Step 4: Deleting categories/subcategories**

- Click the category or expand the parent category and click the subcategory to select it.

- Click Delete.

- Review the warning and click OK.

**Note:** Deleting parent categories will delete subcategories contained therein. 

**Step 5: Mapping the categories to a module**

- Open the Module.

- Click Modify. 

- In the Modify modal expand the Website Properties.

- Under the Categories section click Browse under the Datatable Category Group. 

- Select the newly created collection. 

- Click Choose. 

- Click Submit. 

**Step 6: Add categories to each entry**

- Open the module 

- Click the Add Entry button. 

- Enter the name, choose the status and images, populate the heading, intro and content. 

- Scroll down to the Categories section and select the appropriate categories created. 

- If the category is not listed, the user can create them in the modal. 

- Click Submit. 

---

### Creating a category page

Category pages allow your organization to optimize SEO and enhance overall user experience. In Solodev developers can attach category pages to modules by attaching them to category collections and attaching their collection of categories to the module itself. This tutorial shows users how to create category pages for their module. 

**Pre-requisites**

Prior to this tutorial users should have: 

- Installed their module of choice. 

- Created a detail page.

- Mapped the detail page and folder to their module.

- Created a collection.

- Added categories and subcategories to that collection. 

This example adds a category page for the news module created previously. 

**Step 1: Create a repeater template**

- Open the web files -> content -> news folder. 

- In the news folder, click Add File. 

- Enter the Name (category-repeater.tpl) and Title of the file. 

- Set the File Type to Code. 

- Click Submit. 

- The user is directed to the open file. 

- In the text box, enter the code provided below: 

```html

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

- Click Publish.

**Note:** The id value in the repeater should match the id value of the module. 

**Step 2: Create a category page to house the repeater**

- Open the www -> news folder. 

- Click Add Page. 

- Enter the Name, Title and Description of the page. 

- Choose a template.

- Click Submit. 

- The user is directed to the category.stml page. 

- Select an empty DynamicDiv on the page.

- Select the category-repeater.tpl file located in the web files -> content -> news folder to insert it into the DynamicDiv.

- Click Publish.

**Step 3: Map the category page to the collection of news categories**

- Expand the www -> managers -> News folder. 

- Open the News Categories collection

- Click Modify. 

- In the modal window expand the Settings accordion.

- Click Browse.

- Select the category.stml page located in the www -> news folder.

- Click Choose. 

- Click Submit. 

**Step 4: Map the collection to the news module**

- Open the News Module.

- Click Modify. 

- In the Modify modal expand the Website Properties.

- Under the Categories section click Browse under the Datatable Category Group. 

- Select the newly created collection. 

- Click Choose. 

- Click Submit. 

**Step 5: Add categories to each entry**

- Open the News module 

- Click the Add Entry button. 

- Populate the fields. 

- Scroll down to the Categories section and select the appropriate categories created. 

- If the category is not listed, the user can create them in the modal. 

- Click Submit. 

---

### Creating tags for modules 

In contrast to categories which are meant for broad grouping of posts, tags describe specific details of individual posts. Tags are analogous to an index list. Tags are not hierarchical. The steps for adding tags to modules are provided below. 

**Step 1: Create a repeater template file**

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

**Note:** 

The id value in the repeater should match the id value of the module.

**Step 2: Create a detail template**

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
- Click Publish. 

**Step 3: Create a page to house the repeater template**

- Expand the www folder and open the folder that will contain the repeater page. 

- Click Add Page. 

- In the Add Page modal and enter the Name, Title, and Description for the page. 

- Open the page and click the dropzone that will contain the repeater template file. 

- Select the repeater template to insert into the dropzone. 

- Click Publish.

**Step 4: Create a page to house the detail template**

- Expand the www folder and open the folder that will contain the detail page. 

- Click Add Page. 

- In the Add Page modal and enter the Name, Title, and Description for the page. 

- Open the page and click the dropzone that will contain the detail template file. 

- Select the detail template to insert into the dropzone. 

- Click Publish. 

**Step 5: Mapping the repeater template and the detail template to the module**

- Expand the folder that houses the module and open the module.

- Click Modify.

- In the modify modal window expand the Website Properties section. 

- To the right of the Detail Page Template text-box, click Browse and choose the page that contains the detail template for the blog tags. 

- To the right of the Detail Folder text-box, click Browse and choose the folder that contains the detail page.

- To the right of the Tag Template text-box, click Browse and choose the page that contains the repeater template.

- Click Submit. 

**Step 6: Adding tags to an entry**

- Open the module 

- Click the Add Entry button. 

- Enter the name, choose the status and images, populate the heading, intro and content. 

- Choose a category. 

- In the Tags text-box, enter the desired tags pressing tab after adding each one.

- Click Submit. 


### Adding an email tickler

In Solodev CMS, developers can add email ticklers to send form submissions to designated email addresses. For example, when a potential customer signs up for a free trial of your product, an email can be sent to your sales team to notify them of a possible lead. 

Before adding a tickler, users should: 

- Create a website and a module.

- Attach a web form to the module. 

**Add a tickler**

- In the Solodev Dashboard, click Modules.

- Open the desired module.

- Click Email Options to expand the accordion. 

- Enter a valid email address in the Tickler Email Address textbox.

- Click Add. 

- Click Submit. 