#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/blog-module-icon.jpg" alt="Blog Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Blog</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Share stories, insights, and ideas with beautifully structured blog content.</p>
    </div>
  </div>
  <a href="https://solodev-blog.s3.us-east-1.amazonaws.com/releases/blog-latest.zip" rel="noopener noreferrer" target="_blank" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

The Solodev Blog Module makes it easy to create, organize, and publish posts on your website. Add featured images, videos, and categories to enrich your articles and keep your audience connected.

- **Create and manage blog posts with ease** – Draft, edit, and schedule content quickly through an intuitive module. Keep your publishing blog on track and ensure your readers always see fresh updates.

- **Fully customizable structure and categories** – Organize posts by category and feature them with images or video. Control how articles are displayed and make it easy for readers to discover related content.

- **Keep your audience engaged with timely content** – Share news, tutorials, and thought leadership on schedule. Deliver stories that inform, inspire, and keep your community connected.

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).

!!!Note: 
For step-by-step instructions on adding a Module in your CMS, please visit [Add a Module](/workspace/modules/add-module/).
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the Blog Module and adding it to your page.

{% tabs %}

{% tab title="Step 1: Install the Blog Module" %}

1. Navigate to Modules
<ul style="padding-left: 50px;">
  <li>In your CMS dashboard, click <strong>Modules</strong> in the left navigation menu</li>
  <li>Click the <strong>Add Module</strong> button</li>
</ul>

2. [Add the module](/workspace/modules/add-module/)
<ul style="padding-left: 50px;">
  <li>Give your blog module a name</li>
  <li>Select from the three options:
    <ul>
      <li><strong>Datatable:</strong> Creates a simple data table structure</li>
      <li><strong>Module:</strong> Builds a custom module from scratch</li>
      <li><strong>Package:</strong> Installs a pre-built module from a zip file</li>
    </ul>
  </li>
  <li>In this case, select <strong>Package:</strong> and use this <a href="https://solodev-blog.s3.us-east-1.amazonaws.com/releases/blog-latest.zip" style="display: inline-flex; align-items: center;">zip file <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#0488ce" style="margin-left: .4rem;"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg>.</a></li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

<img src="/static/images/modules/blog/add-blog.jpg" alt="Add Blog" style="width: 40%; margin-bottom: 20px;">

!!!Note:
The blog module comes with a pre-configured entries that you can customize by accessing the module entries.
!!!

{% endtab %}

{% tab title="Step 2: Create Your Blog List Page" %}

1. Navigate to `web files > content`
<ul style="padding-left: 50px;">
  <li><a href="/workspace/websites/folder/add-folder/">Create a folder</a> called <code>blog</code></li>
  <li>In the blog folder, <a href="/workspace/websites/folder/add-file/">create a new code file</a> called <code>blog-repeater.tpl</code></li>
</ul>

2. Add the blog code using the example template provided below.

```html blog-repeater.tpl
<div class="container my-6">
  <div class="row text-center justify-content-center">
    <div class="col-md-8 col-xxl-7">
      <h1>Blog</h1>
      <p class="fs-5">With Pro Theme's Blog module, you can customize the experience to drive your SEO. Publish news, articles, and more using simple fields.</p>
    </div>
  </div>
  <div class="mt-5">
    <div class="row border-lg-bottom py-4">
      [repeater id="" order="start_time desc" display_type="news"]
        <div class="col-lg-3">
          [is_set value="{{calendar_image}}"]	
            <img alt="{{event_title}}" src="[get_asset_file_url id='{{calendar_image}}']" class="img-fluid img-thumbnail">
          [/is_set]
          [is_empty value="{{calendar_image}}"]
            <img alt="{{event_title}}" class="img-fluid img-thumbnail" src="/_/images/calendar-1.png" />
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

3. Click <span class="text-blue">Publish</span>.

!!!warning Important!
You need to add the ID number of your calendar module to the repeater shortcode within the `id=""` attribute.
!!!

4. Navigate to `www`
<ul style="padding-left: 50px;">
  <li><a href="/workspace/websites/folder/add-folder/">Create a folder</a> called <code>blog</code></li>
  <li>In the blog folder, <a href="/workspace/websites/folder/add-page/">create a page</a> called <code>index.stml</code></li>
</ul>

5. [Insert your blog repeater file](/workspace/websites/page/#add-a-file-to-page) into the page you just created.

6. Click <span class="text-blue">Publish</span>.

<!-- {{{event_title}}} -->

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!

7. Go to your website and refresh the page to see your blog in action.

<img src="/static/images/modules/blog/blog-list.jpg" alt="Blog Repeater on Page">

{% endtab %}

{% tab title="Step 3: Create Your Blog Detail Page" %}

1. Navigate to `web files > content > blog` and [create a new code file](/workspace/websites/folder/add-file/) called `blog-detail.tpl`.

<img src="/static/images/modules/blog/blog-detail-file.jpg" alt="Blog Detail File" style="width: 40%; margin-bottom: 20px;">

2. Add the blog detail code using the example template provided below.

```html blog-detail.tpl
<div class="container py-4">
  <div class="py-3">
    <a href="/blog/"><strong><span class="bi bi-arrow-left pe-2"></span>Back to Blog</strong></a>
  </div>
  <article class="bg-white p-5">
    <a class="btn btn-sm btn-outline-black text-uppercase me-1" href="/blog/">BLOG</a>
    [entry]
      <h1 class="h2 mt-4">{{event_title}}</h1>
      <p class="mt-1"><em>{{post_intro}}</em></p>
      <hr class="border-top border-primary border-2 opacity-75">
      <div class="mt-4">
        {{post_content}}
      </div>
    [/entry]
  </article>
</div>
```

3. Click <span class="text-blue">Publish</span>.

4. Navigate to `www > blog` and [create a new page](/workspace/websites/folder/add-page/) called `detail.stml`.

5. [Insert your blog detail file](/workspace/websites/page/#add-a-file-to-page) into the page you just created.

6. Click <span class="text-blue">Publish</span>.

7. Map your Module to your page:
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

8. Go to your website, refresh the blog page, and click on an entry

<img src="/static/images/modules/blog/blog-detail.jpg" alt="Blog Detail on Page">

{% endtab %}                    

{% endtabs %}

## Support

Support for Blog Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).