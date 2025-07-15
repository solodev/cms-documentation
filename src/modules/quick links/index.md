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

1. [Create a file](/workspace/websites/folder/add-file/) called `quick-links.tpl` on your prefer location. This will be where the code for your quick links will be.

2. Add the corresponding html code to your file.

3. Include or replace the code with the shortcodes where needed.

4. [Insert your quick links file](/workspace/websites/page/#add-a-file-to-page) into the page you want to display the entries on.

<img src="/static/images/modules/quick-links/quick-links-result.jpg" alt="Quick Links Frontend" style="width: 80%;">

{% endtab %}

{% endtabs %}

### Shortcodes

You will need the following shortcodes to successfully add a Quick Links to your website. Depending on your needs, you might need to use extra [shortcodes](/shortcodes/).

- [repeater](/shortcodes/module/repeater) - prints the fields from the Quick Links module form.

```js
[repeater id="" display_type="news" limit="0,4"]
```

!!!Note:
You need to add the ID number of your quick links module to the repeater shortcode within the `id=""` attribute.
!!!

- [get_asset_file_url](/shortcodes/core/get-asset-file-url/) - returns the URL path to the specified asset file in the database.

```js
<img alt="Image alt" class="img-fluid" src="[get_asset_file_url id={{quick_links_image}}]" />
```

- `event_title` - displays the name of the module's entry.

```
{{event_title}}
```

<!-- {{{quick_links_image}}} -->

If you need to use other shortcodes or need to learn more about shortcodes, [click here](/shortcodes/).

## Support

Support for Quick Links Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).