#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/blog-module-icon.jpg" alt="Blog Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Blog</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Create unique blog content, upload featured images, and structure data <br>with categories all inside the Solodev Blog Module.</p>
    </div>
  </div>
  <a href="https://github.com/solodev/marketplace/raw/master/depot/modules/blog.zip" rel="noopener noreferrer" target="_blank" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

The Solodev Blog Module lets you schedule when content goes live, keeping your team and blog readers on schedule. The Blog Manager also gives your team a place to collaborate on long-form content. Include more than just copy by easily adding images and video to your posts.

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).

!!!Note: 
For step-by-step instructions on adding a Module in your CMS, please visit [Add a Module](/workspace/modules/add-module/).
!!!

## Create Blog

These steps will guide you through the process of installing Blog Module and adding it to your page.

{% tabs %}

{% tab title="Install" %}

1. Download the **Blog** package.

<a href="https://solodev-blog.s3.amazonaws.com/releases/blog-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>

2. [Add the module](/workspace/modules/add-module/) to your CMS.

<img src="/static/images/modules/blog/add-blog.jpg" alt="Add Blog" style="width: 45%; margin-bottom: 20px;">

3. [Add an entry](/workspace/modules/module/add-entry/).

{% endtab %}

{% tab title="Repeater" %}

1. [Create a file](/workspace/websites/add-file/) called `blog-repeater.tpl` on your prefer location. This file will contain the code for your blog roll that will dynamically pull in your blog entries.

2. Insert the HTML code into your file to display the blog roll.

3. Include or replace the code with the shortcodes where needed.

4. [Insert your blog repeater file](/workspace/websites/page/file-to-page/) into the page you want to display the entries on.

{% endtab %}

{% tab title="Detail" %}

1. [Create a file](/workspace/websites/add-file/) called `blog-detail.tpl` on your prefer location. This file will contain the code for your blog entry.

2. Insert the HTML code into your file to display the blog content.

3. Include or replace the code with the shortcodes where needed.

4. [Insert your blog detail file](/workspace/websites/page/file-to-page/) into the page you want to display the entries on.

{% endtab %}                    

{% endtabs %}

### Shortcodes

You will need the following shortcodes to successfully add a Blog to your website. Depending on your needs, you might need to use extra [shortcodes](/shortcodes/).

- [repeater](/shortcodes/module/#repeater) - prints the fields from the blog module form.

```js
[repeater id="" limit="0, 4" display_type="forum"]
```

!!!Note:
You need to add the ID number of your slider module to the repeater shortcode within the `id=""` attribute.
!!!

- [entry](/shortcodes/module/#entry) - displays the content of a specific blog entry from the module form.

```js
[entry]
```

- [get_asset_file_url](/shortcodes/core/get-asset-file-url/) - returns the URL path to the specified asset file in the database.

```js
<img alt="Image alt" class="img-fluid" src="[get_asset_file_url id={{blog_image}}]" />
```

- [print_date](/shortcodes/core/print-date/) - returns the date formatted according to [PHP's date function](https://www.php.net/manual/en/function.date.php).

```js
<p>[print_date format="F d, Y g:ia" timestamp="{{start_time}}"]</p>
```

- `event_title` - displays the name of the module's entry.

```
{{event_title}}
```

<!-- {{{start_time}}} -->
If you need to use other shortcodes or need to learn more about shortcodes, [click here](/shortcodes/).

## Support

Support for Blog Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).