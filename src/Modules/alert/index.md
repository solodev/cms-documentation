#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <!-- <img src="/static/images/logos/blog-module-icon.jpg" alt="Alert Icon" style="width: 80px;"> -->
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Alert</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Display alerts with ease—customize messages and keep users informed.</p>
    </div>
  </div>
  <a href="https://solodev-alert.s3.us-east-1.amazonaws.com/releases/alert-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

The Solodev Alert Module effortlessly manage and display alerts on your website. Customize messages to match your needs and make sure your audience never misses an important update.

- **Create and manage alerts with ease** Set up alerts quickly through an intuitive module. Easily update or remove messages as your needs change.

- **Fully customizable display and behavior** Control exactly when alerts appear and how long they stay visible. Tailor the experience to suit different types of messages and user needs.

- **Keep your users informed in real-time** Make sure visitors never miss important updates, announcements, or warnings. Whether it’s system maintenance or promotional messages, deliver them instantly and reliably.

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).

!!!Note: 
For step-by-step instructions on adding a Module in your CMS, please visit [Add a Module](/workspace/modules/add-module/).
!!!

## Create Alert

These steps will guide you through the process of installing Blog Module and adding it to your page.

{% tabs %}

{% tab title="Install" %}

1. Download the **Alert** package.

<a href="https://solodev-alert.s3.us-east-1.amazonaws.com/releases/alert-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>

2. [Add the module](/workspace/modules/add-module/) to your CMS.

<!-- <img src="/static/images/modules/blog/add-blog.jpg" alt="Add Blog" style="width: 45%; margin-bottom: 20px;"> -->

3. [Add an entry](/workspace/modules/module/add-entry/).

<img src="/static/images/modules/blog/add-entry-blog.jpg" alt="Add Blog Entry" style="width: 45%; margin-bottom: 20px;">

{% endtab %}

{% tab title="Repeater" %}

Coming soon...

<!-- 1. [Create a file](/workspace/websites/add-file/) called `alert-repeater.tpl` on your prefer location. This file will contain the code for your alert bar that will dynamically pull in your alert entries. -->

<!-- <img src="/static/images/modules/blog/blog-repeater-file.jpg" alt="Blog Repeater File" style="width: 45%; margin-bottom: 20px;"> -->
<!--
2. Insert the HTML code into your file to display the blog roll. For example:

```js
<div class="row row-cols-lg-2 row-cols-1">
  <div class="col">
    <img alt="Placeholder image" src="/_/images/blog-image.png" class="img-fluid">
  </div>
  <div class="col">
    <h2>
      <a href="/blog/detail/" class="text-black">Blog title</a>
    </h2>
    <p>Blog intro.</p>
    <p><a class="btn btn-primary" aria-label="Read more about blog" href="/blog/detail/">Read more</a></p>
  </div>
</div>
```

3. Include or replace the code with the shortcodes where needed. For example:

```js
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

4. [Insert your blog repeater file](/workspace/websites/page/file-to-page/) into the page you want to display the entries on.

<img src="/static/images/modules/blog/blog-repeater-page.jpg" alt="Blog Repeater on Page" style="width: 85%;">
!-->
{% endtab %}

{% tab title="Detail" %}

Coming soon...

<!-- 1. [Create a file](/workspace/websites/add-file/) called `blog-detail.tpl` on your prefer location. This file will contain the code for your blog entry.

<img src="/static/images/modules/blog/blog-detail-file.jpg" alt="Blog Detail File" style="width: 45%; margin-bottom: 20px;">

2. Insert the HTML code into your file to display the blog content.

3. Include or replace the code with the shortcodes where needed.

4. [Insert your blog detail file](/workspace/websites/page/file-to-page/) into the page you want to display the entries on. -->

{% endtab %}                    

{% endtabs %}

### Shortcodes

You will need the following shortcodes to successfully add a Blog to your website. Depending on your needs, you might need to use extra [shortcodes](/shortcodes/).

- [repeater](/shortcodes/module/#repeater) - prints the fields from the blog module form. Used on your repeater page.

```js
[repeater id="1" display_type="news"]
```

!!!Note:
You need to add the ID number of your slider module to the repeater shortcode within the `id=""` attribute.
!!!

- `event_title` - displays the name of the module's entry.

```
{{event_title}}
```

<!-- {{{start_time}}} -->
If you need to use other shortcodes or need to learn more about shortcodes, [click here](/shortcodes/).

## Support

Support for Alert Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).