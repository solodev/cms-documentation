#

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/contact-icon.jpg" alt="Contact Icon" style="width: 80px;">
    <div>
      <h1>Contact</h1>
      <p>Allow users to submit a web form in order to ask questions and leave feedback.</p>
    </div>
  </div>
  <a class="btn-blue-lg" href="https://solodev-alert.s3.us-east-1.amazonaws.com/releases/alert-latest.zip"><span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

The Solodev Contact form allows users to submit a web form in order to ask questions, leave feedback, and communicate with you directly.

- **Customize form fields.** Name, email address, and message fields might be enough for some companies. In case you need more; however, the form fields can be customized to meet your website's needs.
- **Link to relevant information.** Showcase links to other pages on your website to help customers get the answers they need before ever hitting "send" on a contact sheet.
- **Quickly connect to email accounts.** Your customers' messages won't get lost online. The Contact Form manager makes it easy to send form submissions to the inbox of whoever needs them.

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

1. [Create a file](/workspace/websites/folder/add-file/) called `alert-repeater.tpl` on your prefer location. This file will contain the code for your alert bar that will dynamically pull in your alert entries.

<!-- <img src="/static/images/modules/blog/blog-repeater-file.jpg" alt="Blog Repeater File" style="width: 45%; margin-bottom: 20px;"> -->

2. Insert the HTML code into your file to display the alert bar. For example:

```js
<div class="bg-primary text-center py-2">
  <div class="container">
    <a aria-label="New weather alert!" class="text-white" href="/weather"><u><strong>New weather alert!</strong></u></a>
  </div>
</div>
```

3. Include or replace the code with the shortcodes where needed. For example:

```js
[repeater id="10" display_type="news" limit="0,1"]
  <div class="bg-primary text-center py-2">
    <div class="container">
      <a aria-label="{{event_title}}" class="text-white" href="{{alert_link}}"><u><strong>{{event_title}}</strong></u></a>
    </div>
  </div>
[/repeater]
```

4. [Insert your alert repeater file](/workspace/websites/page/#add-a-file-to-page) into the page you want to display the entries on.

<!-- <img src="/static/images/modules/blog/blog-repeater-page.jpg" alt="Blog Repeater on Page" style="width: 85%;"> -->

{% endtab %}

{% endtabs %}

### Shortcodes

You will need the following shortcodes to successfully add a Blog to your website. Depending on your needs, you might need to use extra [shortcodes](/shortcodes/).

- [repeater](/shortcodes/module/repeater) - prints the fields from the blog module form. Used on your repeater page.

```js
[repeater id="1" display_type="news" limit="0,1"]
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

Support for Contact form is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).

<style>
  /* Headers */
  .header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 2rem 1.5rem;
    margin-bottom: 2rem;
    background-color: #eef6ff;
  }
  .header .inner {
    display: flex;
    align-items: center;
    justify-content: start;
  }
  .header img {
    width: 80px;
  }
  .header h1 {
    margin-left: 0;
    font-size: 2rem;
    margin-bottom: 0.25rem;
  }
  .header p {
    padding-left: 2rem;
    margin-bottom: 0;
  }
  /* Dark Headers */
  .dark .header {
    background-color: #fff;
  }
  .dark .header h1,
  .dark .header p {
    color: #222;
  }
  .dark .pluggable .rounded-t a.text-gray-500 {
    color: #fff;
  }
</style>