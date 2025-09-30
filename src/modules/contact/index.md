#

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/contact-icon.jpg" alt="Contact Icon" style="width: 80px;">
    <div>
      <h1>Contact</h1>
      <p>Make it easy for visitors to connect with you directly on your website.</p>
    </div>
  </div>
  <a href="https://solodev-contact.s3.us-east-1.amazonaws.com/releases/contact-latest.zip" style="background-color: #0488ce; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;"><span style="padding-right: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg></span>DOWNLOAD</a>
</div>

The Solodev Contact provides a simple way to collect inquiries, feedback, and requests. Customize fields, manage submissions, and ensure every message reaches your team.

- **Create and manage forms with ease** – Build and update forms quickly through an intuitive module. Add or remove fields as needed to capture the right information.

- **Fully customizable fields and design** – Control how your form looks and functions. Match your brand’s style while tailoring inputs to fit your communication needs.

- **Keep your audience connected** – Give users a direct line to your team. From support requests to general questions, make sure every interaction is seamless and reliable.

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).

!!!Note: 
We use Bootstrap 5 in our packages. You can update your code to match your own framework, styles, or preferences as needed.
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the Contact Form Module and getting it live on your page.

{% tabs %}

{% tab title="Step 1: Install the Contact Form" %}

1. Navigate to Modules
<ul style="padding-left: 50px;">
  <li>In your CMS dashboard, click <strong>Modules</strong> in the left navigation menu</li>
  <li>Click the <strong>Add Module</strong> button</li>
</ul>

2. [Add the module](/workspace/modules/add-module/)
<ul style="padding-left: 50px;">
  <li>Give your contact form a name</li>
  <li>Select from the three options:
    <ul>
      <li><strong>Datatable:</strong> Creates a simple data table structure</li>
      <li><strong>Module:</strong> Builds a custom module from scratch</li>
      <li><strong>Package:</strong> Installs a pre-built module from a zip file</li>
    </ul>
  </li>
  <li>For the purpose of this tutorial, select <strong>Package:</strong> and use this <a href="https://solodev-contact.s3.us-east-1.amazonaws.com/releases/contact-latest.zip" style="display: inline-flex; align-items: center;">zip file <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#0488ce" style="margin-left: .4rem;"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg>.</a></li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

<img src="/static/images/modules/contact/add-contact.jpg" alt="Add contact form" style="width: 45%; margin-bottom: 20px;">

{% endtab %}

{% tab title="Step 2: Create your Contact Form" %}

1. Navigate to `web files > content`
<ul style="padding-left: 50px;">
  <li><a href="/workspace/websites/folder/add-folder/">Create a folder</a> called <code>contact</code></li>
  <li>In the contact folder, <a href="/workspace/websites/folder/add-file/">create a new code file</a> called <code>contact.tpl</code></li>
</ul>

2. Add the contact code using the example template provided below.

```html contact.tpl
<div class="container my-5">
  <div class="row justify-content-between mt-5">
    <div class="col-lg-7 col-xl-6">
      <h1>Contact Us</h1>
      <p class="fs-5">Provide support or capture leads from your website. Easily customize the fields and view all your submission details in the Contact module.</p>
      <div class="mt-4">
      	[form id=""]
      </div>
    </div>
    <div class="col-lg-5 col-xl-4 mt-lg-0 mt-4">
      <div class="border shadow-sm p-5">
        <h2 class="h3">Need more information?</h2>
        <p>Add more details about how your customers can engage with you about your products and services.</p>
        <p class="mb-0">
          <a href="tel:1234567890">123-456-7890</a> <br>
          <a href="mailto:email@email.com">email@email.com</a>
        </p>
      </div>
    </div>
  </div>
</div>
```

!!!warning Important!
You need to add the ID number of your contact datatable to the form shortcode within the `id=""` attribute.
!!!

3. Click <span class="text-blue">Publish</span>.

4. Navigate to `www`
<ul style="padding-left: 50px;">
  <li><a href="/workspace/websites/folder/add-folder/">Create a folder</a> called <code>contact</code></li>
  <li>In the contact folder, <a href="/workspace/websites/folder/add-page/">create a page</a> called <code>index.stml</code></li>
</ul>

5. [Insert your contact form file](/workspace/websites/page/#add-a-file-to-page) into the page you just created.

6. Click <span class="text-blue">Publish</span>.

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!

7. Go to your website and refresh the page to see your contact form in action.

<img src="/static/images/modules/contact/contact-page.jpg" alt="Contact Page" style="width: 85%;">

{% endtab %}

{% endtabs %}

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