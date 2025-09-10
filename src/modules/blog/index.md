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

<img src="/static/images/modules/alert/add-alert.jpg" alt="Add Alert" style="width: 45%; margin-bottom: 20px;">

{% endtab %}

{% tab title="Step 2: Create Your Blog List Page" %}

1. Navigate to `web files > content` and [create a new code file](/workspace/websites/folder/add-file/) in your desired location.

2. Add the blog HTML code using the example template provided below.

```html
<div class="row row-cols-lg-2 row-cols-1">
  [repeater id="" limit="0, 4" display_type="forum"]
    <div class="col">
      <img alt="Placeholder image" src="[get_asset_file_url id={{blog_image}}]" class="img-fluid">
    </div>
    <div class="col">
      <h2>
        <a href="{{path}}" class="text-black">{{event_title}}</a>
      </h2>
      <p>{{blog_intro}}</p>
      <p><a class="btn btn-primary" aria-label="Read more about {{event_title}}" href="{{path}}">Read more</a></p>
    </div>
  [/repeater]
</div>
```

!!!warning Important!
You need to add the ID number of your calendar module to the repeater shortcode within the `id=""` attribute.
!!!

3. [Create a page](/workspace/websites/folder/add-page) in your calendar folder and name it `index.stml`.

4. [Insert your calendar repeater file](/workspace/websites/page/#add-a-file-to-page) into the page you just created.

<!-- {{{event_title}}} -->

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!

<img src="/static/images/modules/blog/blog-repeater-page.jpg" alt="Blog Repeater on Page" style="width: 85%;">

{% endtab %}

{% tab title="Detail" %}

1. [Create a file](/workspace/websites/folder/add-file/) called `blog-detail.tpl` on your prefer location. This file will contain the code for your blog entry.

<img src="/static/images/modules/blog/blog-detail-file.jpg" alt="Blog Detail File" style="width: 45%; margin-bottom: 20px;">

2. Insert the HTML code into your file to display the blog content.

3. Include or replace the code with the shortcodes where needed.

4. [Insert your blog detail file](/workspace/websites/page/#add-a-file-to-page) into the page you want to display the entries on.

{% endtab %}                    

{% endtabs %}

## Support

Support for Blog Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).