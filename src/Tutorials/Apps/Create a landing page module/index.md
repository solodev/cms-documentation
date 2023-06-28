# Create a landing page module

Landing pages allow businesses to create pages that serve different purposes or contain content intended for different audiences. Businesses use a site of origin (display ad, blog post, link tweet) to direct their users to the appropriate landing page. 

This tutorial shows users how to create a landing page using Solodev’s modules.

## Pre-requisites

Users must be familiar with: 

* Shortcodes. 
* Mapping pages to a module. 

## Step 1 – Installing a landing page module

* On the Solodev dashboard, click **Modules**. 
* Click **Add Module** on the next page.
* On the **Landing Page Studio** card click **Install**. 
* In the modal window click **Browse** and select the **web files -> managers** folder. 
* Click **Choose**. 
* Click **Submit**. 

## Step 2 – Creating a detail template 

* Expand the **web files** folder and open the content folder. 
* Click **Add Folder**. 
* Enter the **Name** (landing-page), **Title**, and **Description** of the folder. 
* Click **Submit**. 
* Open the **landing-page** folder. 
* Click **Add File**. 
* Enter the **Name (landing-page.tpl)** and **Title** of the file. 
* Set the File Type to **Code**. 
* Click **Submit**. 
* The user is directed to the open file. 
* In the text-box, enter the code provided below:
```js
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
* Click Publish. 

## Step 3 – Creating a detail page

* Open the **www** folder. 
* Click **Add Folder**. 
* Enter a **Name (landing-page)**, **Title** and **Description** for the folder.
* Click **Submit**. 
* Open the landing-page folder. 
* Click **Add Page**. 
* Enter the **Name (detail.stml)**, **Title**, and **Description** of the Page. 
* Choose a template.
* Click **Submit**. 
* Select an empty DynamicDiv on the page. 
* Select the **landing-page.tpl**  file located in the **web files -> content -> landing page** folder to insert it into the DynamicDiv. 
* Click **Publish**.  

## Step 4 -- Mapping the detail.stml page to the landing page studio module

* Expand the **web files -> managers -> Landing Page Studio** folders. 
* Open the **Language Page Studio** module. 
* Click **Modify**. 
* Expand the **Website Properties** accordion.
* Click **Browse** next to the Detail Template textbox. 
* Select the **detail.stml** page located in the **www -> landing-page** folder. 
* Click **Browse** next to the **Detail Folder Location** text box. 
* Select the folder (**www -> landing-page**) that contains the **detail.stml** file
* Click **Submit**. 

## Step 5 – Adding an entry to the module

* Expand the **web files -> managers -> Landing Page Studio** folders. 
* Open the **Landing Page Studio** module. 
* Click **Add Entry**. 
* Enter the **Name** and set the Status to **Publish**. 
* Enter the **Heading Overwrite** (optional) and required **Main Image**.
* Enter the required **Landing Page content**.
* Expand the Form settings and enter the required **Lead Form Title**, **Lead Form Call to Action**, and **Lead Form Action**.
* Expand the optional **Long Version Content**. 
* Here users are able to enter a main title for the middle section, call to action button, and supporting text.
* Users can also specify box headings, icons, and text. 
* Expand the **Bottom Tile**. 
* Enter the **Bottom Tile Title** and choose a **Bottom Tile Image**. 
* Enter the **Bottom Tile Text**, **Bottom Tile Call to Action Link** and **Bottom Tile call to Action Text**.
* Click **Submit**.