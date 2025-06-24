#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/calendar-module-icon.jpg" alt="Calendar Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem; color: #222;">Calendar</h1>
      <p style="padding-left: 2rem; margin-bottom: 0; color: #222;">With the Event Module, your customers won't miss your next big event.</p>
    </div>
  </div>
</div>

The Calendar Module helps you showcase upcoming events and keep your audience engaged. With this module, you can schedule events with automated publishing, create rich event descriptions using an intuitive editor, and organize events by categories, making it easy for your audience to stay connected with your upcoming activities.

## Before You Start

Make sure you have:

- A [Solodev CMS](/quickstart) installation
- A [Website](/workspace/websites/add-website/) set up in your workspace

!!!Note: 
For step-by-step instructions on adding a Module in your CMS, please visit [Add a Module](/workspace/modules/add-module/).
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the Calendar Module and adding it to your page.

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
      <li><strong>Package:</strong> Installs a pre-built module from a zip file (You can use the <a href="/static/files/calendar.zip" target="blank" rel="noopener noreferrer">following package</a>)</li>
    </ul>
  </li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

<img src="/static/images/modules/calendar/add-calendar.jpg" alt="Add Calendar" style="width: 45%; margin-bottom: 20px;">

{% endtab %}

{% tab title="Step 2: Create Your Calendar List Page" %}

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
<!-- {{{event_title}}} -->

3. [Insert your calendar repeater file](/workspace/websites/page/#add-a-file-to-page) into the page you want to display the entries on.

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!

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
  <li>Under <strong>Websites Properties</strong>, select the .stml file for your detail page</li>
  <li>Select the folder where your detail file is located</li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

5. Go to your website and refresh the page to see your calendar module in action

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