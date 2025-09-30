#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/news-module-icon.jpg" alt="News Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">News</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Keep your users informed about your company happenings or press releases <br>with the News Desk.</p>
    </div>
  </div>
  <a href="https://solodev-news.s3.amazonaws.com/releases/news-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

Keep your users informed about your company happenings or press releases with the News Desk. Complete with categories, the News Desk can be used in multiple locations throughout your website.

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).

!!!Note:
We use Bootstrap 5 in our packages. You can update your code to match your own framework, styles, or preferences as needed.
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the News Module and getting it live on your page.

{% tabs %}

{% tab title="Step 1: Install the News Module" %}

1. Navigate to Modules
<ul style="padding-left: 50px;">
  <li>In your CMS dashboard, click <strong>Modules</strong> in the left navigation menu</li>
  <li>Click the <strong>Add Module</strong> button</li>
</ul>

2. [Add the module](/workspace/modules/add-module/)
<ul style="padding-left: 50px;">
  <li>Give your news module a name</li>
  <li>Select from the three options:
    <ul>
      <li><strong>Datatable:</strong> Creates a simple data table structure</li>
      <li><strong>Module:</strong> Builds a custom module from scratch</li>
      <li><strong>Package:</strong> Installs a pre-built module from a zip file</li>
    </ul>
  </li>
  <li>For the purpose of this tutorial, select <strong>Package:</strong> and use this <a href="https://solodev-news.s3.us-east-1.amazonaws.com/releases/news-latest.zip" style="display: inline-flex; align-items: center;">zip file <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#0488ce" style="margin-left: .4rem;"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg>.</a></li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

<img src="/static/images/modules/news/add-news.jpg" alt="Add News Form" style="width: 40%; margin-bottom: 20px;">

{% endtab %}

{% tab title="Step 2: Create Your News List Page" %}

1. Navigate to `web files > content`
<ul style="padding-left: 50px;">
  <li><a href="/workspace/websites/folder/add-folder/">Create a folder</a> called <code>news</code></li>
  <li>In the news folder, <a href="/workspace/websites/folder/add-file/">create a new code file</a> called <code>news-repeater.tpl</code></li>
</ul>

2. Add the news code using the example template provided below.

```html news-repeater.tpl
<div class="container">
  <h1 class="text-center">News</h1>
  <div class="mt-5">
    <div class="row border-lg-bottom py-4">
      [repeater id="" order="start_time desc" limit="0, 4" display_type="news"]
        <div class="col-lg-3">
          [is_set value="{{news_image}}"]	
            <img alt="{{event_title}}" src="[get_asset_file_url id='{{news_image}}']" class="img-fluid img-thumbnail">
          [/is_set]
          [is_empty value="{{news_image}}"]
            <img alt="{{event_title}}" class="img-fluid img-thumbnail" src="/_/images/default-2.jpg" />
          [/is_empty]
        </div>
        <div class="col-lg-9 ps-lg-3 mt-4 mt-lg-0">
          <h2><a aria-label="Read more" href="{{path}}">{{event_title}}</a></h2>
          <p class="text-muted fs-6">[print_date format="M. d, Y g:i a" timestamp="{{start_time}}"]</p>
          <p>{{news_intro}}</p>
          <p><a aria-label="Read more" href="{{path}}"><strong>Read More</strong></a></p>
        </div>
      [/repeater]
    </div>
  </div>
</div>
```

!!!warning Important!
You need to add the ID number of your news module to the repeater shortcode within the `id=""` attribute.
!!!

3. [Create a page](/workspace/websites/folder/add-page) in your news folder and name it `index.stml`.

4. [Insert your news repeater file](/workspace/websites/page/#add-a-file-to-page) into the page you just created.

<!-- {{{event_title}}} -->

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!

{% endtab %}

{% tab title="Step 3: Create Your News Detail Page" %}

1. [Create a file](/workspace/websites/folder/add-file/) in your preferred location.

2. Add the HTML code for your news list layout using the example code provided

```html
<div class="container">
  [entry]
    <article class="row justify-content-between mt-3">
      <div class="col-md-7">
        <h2 class="border-bottom border-primary border-2 mt-2">Upcoming news</h2>
        <div class="mt-4 pe-7">
          <p>{{news_content}}</p>
        </div>
    </article>
  [/entry]
</div>
```

3. [Insert your news detail file](/workspace/websites/page/#add-a-file-to-page) into the page you want to display the entries on.

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

6. Go to your website and refresh the page to see your news module in action

<!-- <img src="/static/images/modules/calendar/calendar-page.jpg" alt="Calendar" style="width: 90%; margin-bottom: 20px;"> -->

{% endtab %}

{% endtabs %}

## Support

Support for News Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).