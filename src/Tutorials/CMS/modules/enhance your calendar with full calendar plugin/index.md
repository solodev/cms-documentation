Transform your basic calendar into a powerful, interactive scheduling tool with [FullCalendar](https://fullcalendar.io/). Whether you are managing events, appointments, or project timelines, FullCalendar provides the advanced functionality your users expect in a modern calendar interface.

## Before You Start

Make sure you have:

- A [Solodev CMS](/quickstart) installation
- A [Website](/workspace/websites/add-website/) set up in your workspace

!!!Note: 
For step-by-step instructions on adding a Calendar Module in your CMS, please visit [Calendar](/modules/calendar/).
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the [Full Calendar Plugin](https://fullcalendar.io/) to your Calendar.

{% tabs %}

{% tab title="Step 1: Install the Calendar Module" %}

1. Navigate to Modules
<ul style="padding-left: 50px;">
  <li>In your CMS dashboard, click <strong>Modules</strong> in the left navigation menu</li>
</ul>

2. [Add the module](/workspace/modules/add-module/)
<ul style="padding-left: 50px;">
  <li>Click the <strong>Add Module</strong> button</li>
  <li>Select from the three options:
    <ul>
      <li><strong>Datatable:</strong> Creates a simple data table structure</li>
      <li><strong>Module:</strong> Builds a custom module from scratch</li>
      <li><strong>Package:</strong> Installs a pre-built module from a zip file</li>
    </ul>
  </li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

<img src="/static/images/modules/calendar/add-calendar.jpg" alt="Add Calendar" style="width: 45%; margin-bottom: 20px;">

{% endtab %}

{% tab title="Step 2: Create Your Calendar Page" %}

1. [Create a new file](/workspace/websites/add-file/) on your preferred location

2. Add the HTML code for your calendar list layout using the example code provided

```html
[js_full_calendar_includes]

<div class="container">
  <div class="row text-center justify-content-center">
    <div class="col-lg-8 col-xxl-7">
      <h1>Calendar</h1>
      <p class="fs-5">The Pro Theme Calendar module lets you customize your events with a clean, visual organization and update your published schedule with total ease.</p>
    </div>
  </div>
	<div id="calendar_display"></div>
</div>

[js_full_calendar calendar_id="" calendar_display_area_id="calendar_display"]
```

!!!warning Important!
You need to add the ID number of your calendar module to the repeater shortcode within the `calendar_id=""` attribute.
!!!

<!-- {{{event_title}}} -->

3. [Insert your calendar repeater file](/workspace/websites/page/#add-a-file-to-page) into the page you want to display the entries on.

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!

If you want to have a list view as well as a calendar view, follow the next steps:

1. [Create a new file](/workspace/websites/add-file/) on your preferred location

2. Add the HTML code for your calendar list layout using the example code provided

```html
<div class="container">
  <h1 class="text-center">Calendar</h1>
  <div class="mt-5">
    <div class="row border-lg-bottom py-4">
      [repeater id="" order="start_time desc"]
        <div class="col-lg-3">
          [is_set value="{{calendar_image}}"]	
            <img alt="{{event_title}}" src="[get_asset_file_url id='{{calendar_image}}']" class="img-fluid img-thumbnail">
          [/is_set]
          [is_empty value="{{calendar_image}}"]
            <img alt="{{event_title}}" class="img-fluid img-thumbnail" src="/_/images/default-2.jpg" />
          [/is_empty]
        </div>
        <div class="col-lg-9 ps-lg-3 mt-4 mt-lg-0">
          <h2><a aria-label="Read more" href="{{path}}">{{event_title}}</a></h2>
          <p class="text-muted fs-6">[print_date format="M. d, Y g:i a" timestamp="{{start_time}}"]</p>
          <p>{{calendar_intro}}</p>
          <p><a aria-label="Read more" href="{{path}}"><strong>Read More</strong></a></p>
        </div>
      [/repeater]
    </div>
  </div>
</div>
```

!!!warning Important!
You need to add the ID number of your calendar module to the repeater shortcode within the `id=""` attribute.
!!!

3. [Insert your calendar repeater file](/workspace/websites/page/#add-a-file-to-page) into the page you want to display the entries on.

4. 

{% endtab %}

{% tab title="Step 3: Create Your Event Detail Page" %}

1. [Create a file](/workspace/websites/add-file/) in your preferred location.

2. Add the HTML code for your calendar list layout using the example code provided

```html
<div class="container">
  [entry]
    <article class="row justify-content-between mt-3">
      <div class="col-md-7">
        <h2 class="border-bottom border-primary border-2 mt-2">Upcoming events</h2>
        <div class="mt-4 pe-7">
          <p>{{calendar_info}}</p>
        </div>
      
        <h3>Dates</h3>
        <p>[print_date format="M. d, Y" timestamp="{{start_time}}"] <br>[print_date format="g:i a" timestamp="{{start_time}}"]</p>
      
        <h3>Location</h3>
        <p>{{calendar_address}} {{calendar_address_suite}} <br> {{calendar_address_city}}, {{calendar_address_state}} {{calendar_address_zip_code}}</p>
      </div>
      <div class="col-md-4">
        <img src="/_/images/logo.jpg" alt="Logo" class="img-fluid">
      </div>
    </article>
  [/entry]
</div>
```

3. [Insert your calendar detail file](/workspace/websites/page/#add-a-file-to-page) into the page you want to display the entries on.

4. Map your Module to your page:
<ul style="padding-left: 50px;">
  <li>In your Module, click <strong>Modify</strong></li>
  <li>Under <strong>Websites Properties</strong>
    <ul style="padding-left: 50px;">
      <li>On <strong>Detail Page Template</strong>, select the .stml file for your detail page</li>
      <li>Under <strong>Detail Folder Location</strong>, select the folder where your detail file is located</li>
    </ul>
  </li>
  <li>Click <span class="text-blue">Submit</span></li>
</ul>

!!!warning Important!
If you already have entries added to your module, you will need to resave them to generate the path. To do this, go to **Modify**, scroll to Advanced, check the **Resave All Entries** option., and then click <span class="text-blue">Submit</span>
!!!

5. Click [Add Entry](/workspace/modules/module/add-entry/) to begin adding content to your module

6. Go to your website and refresh the page to see your calendar module in action

<img src="/static/images/modules/calendar/calendar-page.jpg" alt="Calendar" style="width: 90%; margin-bottom: 20px;">

{% endtab %}

{% endtabs %}

## Support

Support for Calendar Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).

<style>
  .dark .pluggable .rounded-t a.text-gray-500 {
    color: #fff;
  }
</style>