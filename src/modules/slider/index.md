#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/slider-module-icon.jpg" alt="Slider Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Hero Slider</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Create stunning hero sliders that captivate visitors and showcase your most important content.</p>
    </div>
  </div>
  <a href="https://solodev-slider.s3.amazonaws.com/releases/slider-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

Customize each slide with images, text, buttons, and links to match your brand perfectly. Manage multiple slides effortlessly and keep your homepage content fresh and engaging.

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).

!!!Note: 
We use Bootstrap 5 in our packages. You can update your code to match your own framework, styles, or preferences as needed. For customization options and advanced features, refer to the [Bootstrap Carousel documentation](https://getbootstrap.com/docs/5.3/components/carousel/).
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the Hero Slider Module and getting it live on your page.

{% tabs %}

{% tab title="Step 1: Install the Hero Slider Module" %}

1. Navigate to Modules
<ul style="padding-left: 50px;">
  <li>In your CMS dashboard, click <strong>Modules</strong> in the left navigation menu</li>
  <li>Click the <strong>Add Module</strong> button</li>
</ul>

2. [Add the module](/workspace/modules/add-module/)
<ul style="padding-left: 50px;">
  <li>Give your hero slider module a name</li>
  <li>Select from the three options:
    <ul>
      <li><strong>Datatable:</strong> Creates a simple data table structure</li>
      <li><strong>Module:</strong> Builds a custom module from scratch</li>
      <li><strong>Package:</strong> Installs a pre-built module from a zip file</li>
    </ul>
  </li>
  <li>For the purpose of this tutorial, select <strong>Package:</strong> and use this <a href="https://solodev-slider.s3.amazonaws.com/releases/slider-latest.zip" style="display: inline-flex; align-items: center;">zip file <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#0488ce" style="margin-left: .4rem;"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg>.</a></li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

!!!Note:
The module includes pre-built slides that you can personalize by editing the module content.
!!!

{% endtab %}

{% tab title="Step 2: Create your Hero Slider" %}

1. Navigate to `Websites > example.com > web files > content`
<ul style="padding-left: 50px;">
  <li><a href="/workspace/websites/folder/add-folder/">Create a folder</a> called <code>hero</code></li>
  <li>In the hero folder, <a href="/workspace/websites/folder/add-file/">create a new code file</a> named <code>hero-slider.tpl</code></li>
</ul>

2. Add the hero code using the example template provided below.

```html hero-slider.tpl
<div id="home-slider" class="carousel slide carousel-fade">
  <div class="carousel-inner">
    [repeater id="1" limit="0, 3" order="start_time asc"]
      <div style="background: url([get_asset_file_url id={{slider_image}}]) center/cover; height: 420px;" class="carousel-item d-flex align-items-center[cond type='is' subject='{{index}}' value='0'] active[/cond]" 
        [is_set value='slider_image_alt_tag']
          title="{{slider_image_alt_tag}}"
        [/is_set]
        [is_empty value='slider_image_alt_tag']
          title="{{event_title}}"
        [/is_empty]
      >
        <div class="container position-relative">
          <div class="row">
            <div class="col-lg-9 col-xl-8 col-xxl-6">
              <div class="bg-white p-5 rounded text-start">
                <p class="h1 fw-bold">{{event_title}}</p>
                <p class="lead mt-3 fw-normal">{{slider_intro}}</p>
                <div class="d-flex mt-sm-2 mt-3 justify-content-between">
                  [cond type="is_not" subject="{{slider_link_external}}" value="0"] 
                  <a href="{{slider_link}}" class="btn btn-primary d-flex align-items-center justify-content-center text-white" target="_blank" rel="noopener noreferrer">{{slider_button_text}}</a>
                  [/cond]
                  [cond type="is" subject="{{slider_link_external}}" value="0"] 
                  <a href="{{slider_link}}" class="btn btn-primary d-flex align-items-center justify-content-center text-white">{{slider_button_text}}</a>
                  [/cond]
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    [/repeater]
  </div>
  
  <button class="carousel-control-prev" type="button" data-bs-target="#home-slider" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#home-slider" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
```

<!-- {{{event_title}}} -->

!!!danger Important!
You need to add the ID number of your hero slider module to the repeater shortcode within the `id=""` attribute.
!!!

3. Click <span class="text-blue">Publish</span>.

4. Open your homepage `index.stml` or the desired page where you want to add the hero slider.

5. [Insert your hero-slider file](/workspace/websites/page/#add-a-file-to-page) into the page.

6. Click <span class="text-blue">Publish</span>.

7. Go to your website and refresh the page to see your hero slider in action.

{% endtab %}

{% endtabs %}

## Support

Support for Hero Slider Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!