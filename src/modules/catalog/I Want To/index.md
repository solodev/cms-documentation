#

<link rel="stylesheet" href="/static/custom.css">

<div class="header">
  <div class="inner">
    <img src="../../../images/modules/i-want-to/sign.svg" alt="Sign icon" style="width: 80px;">
    <div>
      <h1>I Want To</h1>
      <p>Point visitors to the pages they need most, organized around what they want to do.</p>
    </div>
  </div>
  <a href="https://solodev-team.s3.amazonaws.com/releases/team-latest.zip" class="btn-blue-lg"><span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

The Solodev I Want To Module makes it easy to point visitors to the pages they need most. Organize important links around what visitors want to do, so they can find what they're looking for in one click.

* **Create and manage links with ease** – Add, edit, and remove links quickly through an intuitive module. Keep your links current as your website grows and priorities change.

* **Fully customizable structure and categories** – Group links by topic or audience. Control how links are displayed and make it easy for visitors to find the right page.

* **Improve the visitor experience** – Reduce time spent searching and help visitors get where they need to go. Give your audience a clear path to your most important content.

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/websites/add-website/).

!!!Note: 
We use Bootstrap 5 in our packages. You can update your code to match your own framework, styles, or preferences as needed.
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the I Want To Module and getting it live on your page.

{% tabs %}

{% tab title="Step 1: Install the I Want To Module" %}

1. Navigate to Modules
<ul style="padding-left: 50px;">
  <li>In your CMS dashboard, click <strong>Modules</strong> in the left navigation menu</li>
  <li>Click the <strong>Add Module</strong> button</li>
</ul>

2. [Add the module](/modules/add-module/)
<ul style="padding-left: 50px;">
  <li>Give your I want to module a name</li>
  <li>Select the I Want To Module from the Module Picker</li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

<p><img src="../../../images/modules/i-want-to/add-i-want-to.png" alt="Add Team" class="border" style="max-width: 60%;"></p>

!!!Note:
The module includes pre-built entries that you can personalize by editing the module content.
!!!

{% endtab %}

{% tab title="Step 2: Create your I Want To List Page" %}

1. Navigate to `Websites > example.com > web files > content`
<ul style="padding-left: 50px;">
  <li><a href="/websites/folder-overview/add-folder/">Create a folder</a> called <code>i-want-to</code></li>
  <li>In the i-want-to folder, <a href="/websites/folder-overview/add-file/">create a new code file</a> named <code>i-want-to-repeater.tpl</code></li>
</ul>

2. Add the I Want To code using the example template provided below.

```html i-want-to-repeater.tpl
<div class="container mt-4">
  <ul class="list-unstyled">
    [repeater id="" type="datatable"]
    <li>
      [cond type="is" subject="{{external_link}}" value="1"]
        <a href="{{link}}" target="_blank">
      [/cond]
      [cond type="is_not" subject="{{external_link}}" value="1"]
        <a href="{{link}}">
      [/cond]
        {{link_name}}
      </a>
    </li>
    [/repeater]
  </ul>
</div>
```

<!-- {{{event_title}}} -->

!!!danger Important!
You need to add the ID number of your I Want To module to the repeater shortcode within the `id=""` attribute.
!!!

3. Click <span class="text-blue">Publish</span>.

4. Open your homepage `index.stml` or the desired page where you want to add the I Want To listing.

5. [Insert your I Want To file](/websites/page-overview/#add-a-file-to-page) into the page.

6. Click <span class="text-blue">Publish</span>.

7. Go to your website and refresh the page to see your I Want To in action.

{% endtab %}

{% endtabs %}

## Support

Support for I Want To Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!