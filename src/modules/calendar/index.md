#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/calendar-module-icon.jpg" alt="Calendar Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem; color: #222;">Calendar</h1>
      <p style="padding-left: 2rem; margin-bottom: 0; color: #222;">Promote events and keep your audience connected with a dynamic calendar.</p>
    </div>
  </div>
  <a href="https://solodev-calendar.s3.us-east-1.amazonaws.com/releases/calendar-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

The Solodev Calendar Module makes it simple to schedule, organize, and showcase upcoming events on your website. Publish details with rich descriptions, add categories, and ensure your community never misses an important date.

- **Create and manage events with ease** – Schedule events quickly with automated publishing. Add details, descriptions, and categories through an intuitive editor.

- **Fully customizable organization and display** – Control how events appear, from categories to layouts. Tailor the calendar to highlight different types of activities and make them easy to find.

- **Keep your audience engaged and informed** – Share everything from community meetups to major announcements. Ensure visitors stay connected with your brand and up-to-date on what’s next.

## Before You Start

Make sure you have:

- A [Solodev CMS](/quickstart) installation
- A [Website](/workspace/websites/add-website/) set up in your workspace

!!!Note: 
For step-by-step instructions on adding a Module in your CMS, please visit [Add a Module](/workspace/modules/add-module/).
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the Calendar Module and getting it live on your page.

{% tabs %}

{% tab title="Step 1: Install the Calendar Module" %}

1. Navigate to Modules
<ul style="padding-left: 50px;">
  <li>In your CMS dashboard, click <strong>Modules</strong> in the left navigation menu</li>
  <li>Click the <strong>Add Module</strong> button</li>
</ul>

2. [Add the module](/workspace/modules/add-module/)
<ul style="padding-left: 50px;">
  <li>Give your calendar module a name</li>
  <li>Select from the three options:
    <ul>
      <li><strong>Datatable:</strong> Creates a simple data table structure</li>
      <li><strong>Module:</strong> Builds a custom module from scratch</li>
      <li><strong>Package:</strong> Installs a pre-built module from a zip file</li>
    </ul>
  </li>
  <li>In this case, select <strong>Package:</strong> and use this <a href="https://solodev-calendar.s3.us-east-1.amazonaws.com/releases/calendar-latest.zip" style="display: inline-flex; align-items: center;">zip file <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#0488ce" style="margin-left: .4rem;"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg>.</a></li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

<img src="/static/images/modules/calendar/add-calendar.jpg" alt="Add Calendar" style="width: 45%; margin-bottom: 20px;">

{% endtab %}

{% tab title="Step 2: Create Your Calendar List Page" %}

1. Navigate to `web files > content`
<ul style="padding-left: 50px;">
  <li><a href="/workspace/websites/folder/add-folder/">Create a folder</a> called <code>calendar</code></li>
  <li>In the calendar folder, <a href="/workspace/websites/folder/add-file/">create a new code file</a> called <code>calendar-repeater.tpl</code></li>
</ul>

2. Add the calendar code using the example template provided below.

```html calendar-repeater.tpl
<div class="container">
  <div class="text-center">
    <h1>Calendar</h1>
    <p class="fs-5">Promote events and keep your audience connected with a dynamic calendar.</p>
  </div>
  <div class="mt-5">
    [repeater id="" order="start_time desc"]
      <div class="row py-4 g-4">
        <div class="col-lg-3 mt-0">
          [is_set value="{{calendar_image}}"]	
            <img alt="{{event_title}}" src="[get_asset_file_url id='{{calendar_image}}']" class="img-fluid w-100">
          [/is_set]
          [is_empty value="{{calendar_image}}"]
            <img alt="{{event_title}}" class="img-fluid w-100" src="/_/images/calendar-1.jpg" />
          [/is_empty]
        </div>
        <div class="col-lg-9 mt-4 mt-lg-0">
          <h2><a aria-label="Read more" href="{{path}}">{{event_title}}</a></h2>
          <p class="text-muted fs-6">[print_date format="M. d, Y g:i a" timestamp="{{start_time}}"]</p>
          <p>{{calendar_intro}}</p>
          <p><a aria-label="Read more" href="{{path}}"><strong>Read More</strong></a></p>
        </div>
      </div>
    [/repeater]
  </div>
</div>
```
3. Click <span class="text-blue">Publish</span>.

!!!warning Important!
You need to add the ID number of your calendar module to the repeater shortcode within the `id=""` attribute.
!!!

4. Navigate to `www`
<ul style="padding-left: 50px;">
  <li><a href="/workspace/websites/folder/add-folder/">Create a folder</a> called <code>calendar</code></li>
  <li>In the calendar folder, <a href="/workspace/websites/folder/add-page/">create a page</a> called <code>index.stml</code></li>
</ul>

5. [Insert your calendar repeater file](/workspace/websites/page/#add-a-file-to-page) into the page you just created.

6. Click <span class="text-blue">Publish</span>.

<!-- {{{event_title}}} -->

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!

7. Go to your website and refresh the page to see your blog in action.

<img src="/static/images/modules/blog/blog-list.jpg" alt="Blog Repeater on Page">

{% endtab %}

{% tab title="Step 3: Create Your Event Detail Page" %}

1. [Create a file](/workspace/websites/folder/add-file/) in your preferred location.

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
If you already have entries added to your module, you will need to resave them to generate the path. To do this, go to **Modify**, scroll to Advanced, check the **Resave All Entries** option, and then click <span class="text-blue">Submit</span>
!!!

5. Click [Add Entry](/workspace/modules/module/add-entry/) to begin adding content to your module

6. Go to your website and refresh the page to see your calendar module in action

<img src="/static/images/modules/calendar/calendar-page.jpg" alt="Calendar" style="width: 90%; margin-bottom: 20px;">

{% endtab %}

{% endtabs %}

!!! Note:
Do you want to take your calendar to the next level? Explore our [full calendar tutorial](/tutorials/cms/modules/enhance-your-calendar-with-full-calendar-plugin/).
!!!

## Support

Support for Calendar Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).

<style>
  .dark .pluggable .rounded-t a.text-gray-500 {
    color: #fff;
  }
</style>