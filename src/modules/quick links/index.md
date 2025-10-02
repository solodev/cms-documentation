#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/quick-links-icon.jpg" alt="Quick Links Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Quick Links</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Give visitors faster access to the most important pages on your site.</p>
    </div>
  </div>
  <a href="https://solodev-quick-links.s3.amazonaws.com/releases/quick-links-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

The Solodev Quick Links Module makes it easy to streamline navigation by providing direct paths to key content. Save users time, improve efficiency, and guide them exactly where they need to go.

- **Create and manage links with ease** – Add, edit, and organize links quickly through an intuitive module. Update navigation as your content grows and priorities change.

- **Fully customizable display and organization** – Control how links are grouped, ordered, and styled. Tailor the layout to fit your site’s design and user needs.

- **Keep your audience on track** – Help visitors find information instantly, whether it’s resources, support, or featured content. Deliver a seamless browsing experience that boosts engagement.

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).

!!!Note:
We use Bootstrap 5 in our packages. You can update your code to match your own framework, styles, or preferences as needed.
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the Quick Links Module and adding it to your page.

{% tabs %}

{% tab title="Step 1: Install the Quick Links Module" %}

1. Navigate to Modules
<ul style="padding-left: 50px;">
  <li>In your CMS dashboard, click <strong>Modules</strong> in the left navigation menu</li>
  <li>Click the <strong>Add Module</strong> button</li>
</ul>

2. [Add the module](/workspace/modules/add-module/)
<ul style="padding-left: 50px;">
  <li>Give your quick links module a name</li>
  <li>Select from the three options:
    <ul>
      <li><strong>Datatable:</strong> Creates a simple data table structure</li>
      <li><strong>Module:</strong> Builds a custom module from scratch</li>
      <li><strong>Package:</strong> Installs a pre-built module from a zip file</li>
    </ul>
  </li>
  <li>For the purpose of this tutorial, select <strong>Package:</strong> and use this <a href="https://solodev-quick-links.s3.us-east-1.amazonaws.com/releases/quick-links-latest.zip" style="display: inline-flex; align-items: center;">zip file <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#0488ce" style="margin-left: .4rem;"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg>.</a></li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

<img src="/static/images/modules/quick-links/add-quick-links.jpg" alt="Quick Links" style="width: 40%; margin-bottom: 20px;">

!!!Note:
The quick links module comes with pre-configured entries that you can customize by accessing the module entry.
!!!

{% endtab %}

{% tab title="Step 2: Create your Quick Links" %}

1. Navigate to `Websites > example.com > web files > content`
<ul style="padding-left: 50px;">
  <li><a href="/workspace/websites/folder/add-folder/">Create a folder</a> called <code>quick-links</code></li>
  <li>In the quick-links folder, <a href="/workspace/websites/folder/add-file/">create a new code file</a> called <code>quick-links-repeater.tpl</code></li>
</ul>

2. Add the quick links code using the example template provided below.

```html quick-links-repeater.tpl
<div class="container mt-6">
  <div class="row">
    <div class="col-lg-7 col-xl-6 mx-auto text-center">
      <h1 class="h2">Accelerate with Quicklinks</h1>
    </div>
  </div>
  <div class="row row-cols-1 row-cols-sm-2 row-cols-lg-4">
    [repeater id="" display_type="news" limit="0,4"]
      <div class="col mt-4">
        <div class="card py-5 px-xl-4 px-3 text-center d-flex align-items-center flex-column">
          [is_set value="link_icon"]
            <span class="{{link_icon}} text-primary"></span>
          [/is_set]
          [is_set value="link_image"]
            [sub_is_set value="link_image_alt_tag"]
              <img alt="{{link_image_alt_tag}}" class="img-fluid" src="[get_asset_file_url id={{link_image}}]" />
            [/sub_is_set]
            [sub_is_empty value="link_image_alt_tag"]
              <img alt="{{event_title}}" class="img-fluid" src="[get_asset_file_url id={{link_image}}]" />
            [/sub_is_empty]
          [/is_set]
          <h2 class="h4 mt-4 mb-0"><a class="text-black" href="{{link_url}}">{{event_title}}</a></h2>
        </div>
      </div>
    [/repeater]
  </div>
</div>
```

<!-- {{{event_title}}} -->

!!!danger Important!
You need to add the ID number of your quick links module to the repeater shortcode within the `id=""` attribute.
!!!

3. Click <span class="text-blue">Publish</span>.

4. Open your homepage `index.stml` or the desired page where you want to add the quick links boxes.

5. [Insert your quick-links file](/workspace/websites/page/#add-a-file-to-page) into the page.

6. Click <span class="text-blue">Publish</span>.

7. Go to your website and refresh the page to see your quick links boxes in action.

<img src="/static/images/modules/quick-links/quick-links-result.jpg" alt="Quick Links in Website">

{% endtab %}

{% endtabs %}

## Support

Support for Quick Links Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!