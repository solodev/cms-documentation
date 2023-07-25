# Create a Base Template

The base template is the most important template in that it contains the essential resources that will be included in every web page on your website. A base template typically consists of a header and footer, references to asset files, and dynamic divs to place content. Note that any changes you make to the base template will reflect in your entire website. In this article we will show you how to build a base template and demonstrate its value in a real-world situation.

!!!Note:
Your base template contains your core includes (CSS, JavaScript, Fonts, Images), a header and footer, and dynamic divs (drop zones) in between to insert HTML content.
!!!

## Step 1 - Create a base template file

To get started go to **web files > content > templates**. On the right side, click on **Add File**. Name the file "base-template.tpl", choose "Code" from the File Type dropdown and click Publish.

<img src="../../../images/Picture1.jpg" alt="CMSProSubscribe" style="width: 100%; display: block"></a>

<img src="../../../images/Picture2.jpg" alt="CMSProSubscribe" style="width: 45%; display: block"></a>

Below is the code sample for a base template. It includes where the code for Google Analytics should be in the body (Google Analytics code needs to be on every page), a dynamicDiv class for the top navigation, content, and footer. You can always add more dynamicDivs as needed.
```js
<!-- Google Tag Manager (noscript) -->
<!-- Add your google tag manager script here -->
<!-- End Google Tag Manager (noscript) -->

<div role="main">
  <a class="skip-content" href="#maincontent" tabindex="1">Skip to main content</a>

  <!-- Top Nav -->
  <div class="dynamicDiv"></div>
  <!-- End Top Nav -->

  <!-- Content-->
  <div class="dynamicDiv"></div>
  <!-- End Content -->

  <!-- Footer -->
  <div class="dynamicDiv"></div>
  <!-- End Footer -->
</div>
```
!!!Note:
we recommend having a separate file with additional dynamicDivs. Below is a sample of the insert-divs.tpl file. You can save this file under the templates folder:

```js
<div class="dynamicDiv"></div>

<div class="dynamicDiv"></div>
<div class="dynamicDiv"></div>
<div class="dynamicDiv"></div>
<div class="dynamicDiv"></div>
```
!!!

## Step 2 - Create a page using base-template.tpl

We created a base template and added code in it but in order to get it to display on the website, we actually need to create a page to put the template in. When you add a website on Solodev, the CMS already comes with an index.stml page, which is the homepage for your site. We will add the base template to the homepage.

Go to the **www** directory and click on index.stml. On the stml file, click on the content area where the 3 dots are. This area will change color and it will show the file currently associated with it. We want to replace it with base-template.tpl. To do this, with the area selected, click on the base-template.tpl file from the left navigation. You will see the area change to the base-template. Click publish on the right side.

<img src="../../../images/Picture3.jpg" alt="CMSProSubscribe" style="width: 100%; display: block"></a>

Now you can start adding your content to the homepage.
