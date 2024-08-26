#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/quick-links-icon.jpg" alt="Quick Links Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Quick Links</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Streamline navigation by providing direct paths to key content, saving users <br>time and improving overall efficiency.</p>
    </div>
  </div>
  <a href="https://solodev-quick-links.s3.amazonaws.com/releases/quick-links-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).

!!!Note: 
For step-by-step instructions on adding a Module in your CMS, please visit [Add a Module](/workspace/modules/add-module/).
!!!

## Create Quick Links

These steps will guide you through the process of installing the Quick Links Module and adding it to your page.

{% tabs %}

{% tab title="Install" %}

1. Download the **Quick Link** package.

<a href="https://solodev-quick-links.s3.amazonaws.com/releases/quick-links-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>

2. [Add the module](/workspace/modules/add-module/) to your CMS.

<img src="/static/images/modules/quick-links/add-quick-links.jpg" alt="Add Quick Links" style="width: 45%; margin-bottom: 20px;">

3. Go into the Module.

<img src="/static/images/modules/quick-links/quick-links.jpg" alt="Quick Links" style="width: 80%; margin-bottom: 20px;">

3. [Add an entry](/workspace/modules/module/add-entry/).

<img src="/static/images/modules/quick-links/quick-links-add-entry-btn.jpg" alt="Quick Links Add Entry" style="width: 55%; margin-bottom: 20px;">

3. Fill out the form with the necessary information.

<img src="/static/images/modules/quick-links/quick-links-add-entry-modal.jpg" alt="Quick Links Form" style="width: 40%; margin-bottom: 20px;">

4. Click <span class="text-orange">**Submit**</span>.

!!!Note:
You can also fill out the form on the entry view.
!!!

5. Create a [repeater](#repeater).

{% endtab %}

{% tab title="Repeater" %}

1. [Create a file](/workspace/websites/add-file/) called `quick-links.tpl` on your prefer location. This will be where the code for your slider will be.

2. Paste the following code:

```js
<div class="container py-5">
  <div class="row">
    <div class="col-md-8 mx-auto text-center">
      <span class="bi bi-lg bi-cloud"></span>
      <h1 class="h2">Cloud Content Management System</h1>
      <p class="lead fw-normal">Unlock the full potential of your web development with modules.</p>
    </div>
  </div>
  <div class="row row-cols-2 row-cols-lg-4">
    [repeater id="1" display_type="news" limit="0,4"]
    <div class="col mt-4">
      <div class="card py-5 px-xl-4 px-3 text-center d-flex align-items-center flex-column">
        <img alt="{{link_image_alt_tag}}" class="img-fluid" src="[get_asset_file_url id={{link_image}}]" />
        <h2 class="h4 mt-4 mb-0"><a class="text-black" href="{{path}}">{{event_title}}</a></h2>
      </div>
    </div>
    [/repeater]
  </div>
</div>
```
<!-- {{{event_title}}} -->

!!!Note:
Replace the `id` with the corresponding id of your Quick Links Module.<br>
<img src="/static/images/modules/quick-links/quick-links-header.jpg" alt="Quick Links Header" style="width: 60%; margin: 20px 0;">
!!!

3. [Insert your quick links file](/workspace/websites/page/file-to-page/) into the page you want to display the entries on.

<img src="/static/images/modules/quick-links/quick-links-result.jpg" alt="Quick Links Frontend" style="width: 80%;">

{% endtab %}

{% endtabs %}

### Shortcodes

You will need the following shortcodes to successfully add a Blog to your website:

- [repeater](/shortcodes/module/#repeater) - prints the fields from the blog module form.

```js
[repeater id="" limit="0, 4" display_type="news"]
```

- [get_asset_file_url](/shortcodes/core/get-asset-file-url/) - returns the URL path to the specified asset file in the database.

```js
<img alt="Image alt" class="img-fluid" src="[get_asset_file_url id={{blog_image}}]" />
```

## Support

Support for Quick Links Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).