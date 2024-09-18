#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/slider-module-icon.jpg" alt="Slider Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Slider</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Upload featured documents, structure and manage data, files and multi-media assets <br>all inside the Solodev Media Center.</p>
    </div>
  </div>
  <a href="https://solodev-slider.s3.amazonaws.com/releases/slider-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

Your brand's content efforts go deeper than just words and blog posts. With the Solodev Media Center, you can add images and video elements to strengthen your content marketing efforts.

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).
- Have a Slider Plugin. Like [Slick](https://kenwheeler.github.io/slick/), [Flexslider](https://woocommerce.com/flexslider/), or [Bootstrap Carousel](https://getbootstrap.com/docs/4.0/components/carousel/).

!!!Note: 
For step-by-step instructions on adding a Module in your CMS, please visit [Add a Module](/workspace/modules/add-module/).
!!!

## Create Slider

These steps will guide you through the process of installing Slider Module and adding it to your page.

{% tabs %}

{% tab title="Install" %}

1. Download the **Slider** package.

<a href="https://solodev-slider.s3.amazonaws.com/releases/slider-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>

2. [Add the module](/workspace/modules/add-module/) to your CMS.

<img src="/static/images/modules/slider/add-slider.jpg" alt="Add Slider" style="width: 45%; margin-bottom: 20px;">

3. Go into the Module.

<!-- <img src="/static/images/modules/slider/add-slider.jpg" alt="Add Slider" style="width: 45%; margin-bottom: 20px;"> -->

4. [Add an entry](/workspace/modules/module/add-entry/).

{% endtab %}

{% tab title="Repeater" %}

1. [Create a file](/workspace/websites/add-file/) called `slider-repeater.tpl` on your prefer location. This file will contain the code for your slider.

2. Follow the documentation of your preferred slider plugin to add the corresponding html code to your file.

3. Include or replace the code with the shortcodes where needed.

4. [Insert your slider file](/workspace/websites/page/file-to-page/) into the page you want to display the entries on.

{% endtab %}

{% endtabs %}

### Shortcodes

You will need the following shortcodes to successfully add a Slider to your website. Depending on your needs, you might need to use extra [shortcodes](/shortcodes/).

- [repeater](/shortcodes/module/#repeater) - prints the fields from the Slider module form.

```js
[repeater id="" limit="0, 4" display_type="news" order="start_time desc"]
```

!!!Note:
You need to add the ID number of your slider module to the repeater shortcode within the `id=""` attribute.
!!!

- [get_asset_file_url](/shortcodes/core/get-asset-file-url/) - returns the URL path to the specified asset file in the database.

```js
<img alt="Image alt" class="img-fluid" src="[get_asset_file_url id={{slider_image}}]" />
```

- `event_title` - displays the name of the module's entry.

```
{{event_title}}
```

<!-- {{{blog_image}}} -->

If you need to use other shortcodes or need to learn more about shortcodes, [click here](/shortcodes/).

## Support

Support for Slider Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).