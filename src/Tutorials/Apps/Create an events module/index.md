# Create an events module

An Events Module displays entries in the form of a Calendar and gives developers the option to add a start and an end date and time. An event is a Type of Module that is used when creating modifying a Calendar. This tutorial discusses the creation of an Events Module.

## Pre-requisites

Users should be familiar with:

* Using Shortcodes
* Mapping pages to modules

## Step 1 - Installing an events module

* On the Solodev dashboard click **Modules**.
* Click **Add Modules** on the next page.
* On the **Event Hub** card, click Install.
* In the modal window Enter the Name of the module. 
* Click **Browse** and select the **web files -> managers** folder. 
* Click **Choose**. 
* Click **Submit**. 

## Step 2 - Creating a repeater template

* Expand the **web files -> content** folders and open the **events** folder (Create on in the content folder if it has not been created).
* In the events folder, click **Add File**.
* Enter the **Name(events-repeater.tpl)** and **Title** of the file.
* Set the File Type of **Code**
* Click **Submit**
* The user is directed to the open file
* In the text box, enter the code provided below:
```js
[repeater id='##'  pages="22" order="start_time desc" display_type="news"]
	<a href="{{path}}" class="text-black">
		<div class="row pb-4">
			<div class="col-sm-2  mx-auto mx-sm-0 mt-3 mt-sm-0 ">
				<div class="bg-secondary p-2 text-white text-center">
					<p class="m-0 lead"><strong>[print_date format="M" timestamp="{{start_time}}"]</strong></p>
					<p class="h3 mb-0">[print_date format="d" timestamp="{{start_time}}"]</p>
				</div>
			</div>
			<div class="col-sm-10   mt-2 mt-sm-0">
				<p class="text-uppercase mb-0">
                	<strong>
                		<span class="text-primary">
							[entry_categories_repeat id="{{calendar_entry_id}}"]     
								{{{title}}}            
							[/entry_categories_repeat]
						</span> | <span>[print_date format="F d, Y" timestamp="{{start_time}}"]</span>
                    </strong>
				</p>
				<h2 class="h3 mb-2">{{event_title}}</h2>
				<p class="post-intro">{{post_intro}}</p>
			</div>
		</div>
	</a>
[/repeater]	
```
* Click **Publish**

***Note:* The id value in the repeater should match the id value of the module**.

## Step 3 - Creating a detail template

* Open the events folder located in **web files -> content** folder.
* Click **Add File**
* Enter the **Name (events-detail.tpl)** and **Title** of the file.
* Set the File Type to **Code**
* Click **Submit**
* The user is directed to the open file.
* In the text box, enter the code provided below:
```js
[entry]
	<div class="row">
  		<div class="col-sm-8">
    		<p class="text-primary">
            	<strong>
                	[print_date format="F d, Y g:i a" timestamp="{{start_time}}"] - [print_date format="F d, Y g:i a" timestamp="{{end_time}}"]
                </strong>
			</p>
		</div>
	</div>
    
	<div class="row my-4">
  		<div class="col-md-6 col-lg-8">
    		<div class="card rounded-0">
      			<div class="card-title border-bottom">
        			<h3 class="h4 text-secondary bg-light-gray p-3 mb-0">About This Event</h3>
      			</div>
      			<div class="card-body">
        			{{post_content}}
      			</div>
    		</div>
		</div>
        
		<div class="col-md-6 col-lg-4 mt-4 mt-md-0">
			<div class="card rounded-0">
				<div class="card-title border-bottom">
					<h3 class="h4 text-secondary bg-light-gray p-3 mb-0">When &amp; Where</h3>
				</div>
				<div class="card-body">
					<iframe src="https://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q={{event_address}}%2C+{{event_city}}%2C+{{event_state}}+{{event_zip}}&ie=UTF8&z=12&t=m&iwloc=near&output=embed" frameborder="0" width="100%" height="200" allowfullscreen></iframe>
					<p class="mt-3">{{event_address}} <br>{{event_city}}, {{event_state}} {{event_zip}}</p>
					<p>[print_date format="F d, Y g:i a" timestamp="{{start_time}}"] -<br /> [print_date format="F d, Y g:i a" timestamp="{{end_time}}"]</p>
					<div class="mt-4">
						<a class="h5 btn btn-primary p-2 px-3 mb-2 text-left" href='https://calendar.google.com/calendar/r/eventedit?text={{event_title}}&dates=[print_date format="Ymd" timestamp="{{start_time}}"]T[print_date format="His" timestamp="{{start_time}}"]/[print_date format="Ymd" timestamp="{{end_time}}"]T[print_date format="His" timestamp="{{end_time}}"]&details={{post_intro}}&location={{event_address}} {{event_city}}, {{event_state}} {{event_zip}}' target="_blank">
							<i class="fas fa-calendar-alt fa-lg pr-2"></i> Add to Google Calendar
						</a>
					</div>
				</div>
			</div>
			<div class="card mt-4 rounded-0">
				<div class="card-title border-bottom">
					<h2 class="h4 text-secondary bg-light-gray p-3 mb-0">Contact Information</h2>
				</div>
				<div class="card-body">
					<p>Email: <a href="mailto:[site_email]">[site_email]</a></p>
				</div>
			</div>
		</div>
	</div>
[/entry]
```

## Step 4 - Creating a page to a house the repeater template
* Open the **wwww** folder.
* Click **Add Folder**.
* Enter the **Name(events)**, **Title**, and **Description** of the page.
* Choose a template.
* Click **Submit**
* The user is directed to the index.stml page.
* Select an empty DynamicDiv on the page.
* Select the **events-repeater.tpl** file located in the **web files -> content -> events** folder to inset it into the dynamic div.
* Click **Publish**

## Step 5 - Creating a page to house the detail template

* With the **www->events** folder open, click Add Page.
* Enter the **Name(detail.stml)**, **Title** and **Description** of the page.
* Choose a template.
* Click **Submit**
* The user is directed to the **detail.stml** page.
* Select an empty DynamicDiv on the page.
* Select the **events-detail.tpl** file located in the **web->content->events** folder to insert it into the dynamic div.
* Click **Publish**

## Step 6 - Mapping the deatil.stml page to the team module

* Expand the **web files -> managers -> Events** folders.
* Open the **Events** module
* Click **Modify**.
* Expand the **Website Properties** accordion.
* Click **Browse** next to the **Detail Folder** Location text box.
* Select the folder **(www->events)** that contains the **detail.stml** file.
* Click **Submit**

## Step 7 - Adding an Entry

* Expand the **web files -> managers -> Events** folders.
* Open the **Events** module.
* Click **Add Entry**
* Enter the **Name**.
* Select a Status
* Populate the fields in the **Event Information**, **Event Location**, **Body Content**, and **Schedule** sections
* Click **Submit**