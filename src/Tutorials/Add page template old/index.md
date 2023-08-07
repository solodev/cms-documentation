# Add Page Template

In Solodev, a page template is a reusable component that allows you to build website pages faster and easier. They provide control over your website structure while giving you the freedom to customize where needed. In this article, you will learn the key concepts behind page templates, the importance of dynamic divs, and how to create a base and content template for your website. 

## Prerequisites 

-	You will need to <a href="/tutorials/add-website/">add a website</a> to your Solodev CMS
-	You will need to <a href="/tutorials/add-page/">add a page</a>

## Page Templates

There is no limit to the kinds of page templates you can create in Solodev, but most websites use these common types as a best practice:


*	**Base Template**
The base template is the foundation for every page of your website. It typically consists of a header, footer, and dynamic divs for adding content. Because they are universal, any changes made to a base template will be reflected across all pages of your site.  

*	**Content template**
A content template is usually placed within the base template. Sometimes referred to as an “interior template,” content templates power the bulk of your website, and can be reused for various sections that require multiple pages.

## Dynamic Divs

Page Templates are composed of dynamic divs – or “dropzones” – where HTML and content can be inserted and arranged in various places on your website pages. Dynamic divs work fluidly with the Bootstrap grid system, allowing you to easily insert content once the layout of your page has been created. Here is the simple HTML code to create a dynamic div in Solodev:

```js
<div class="dynamicDiv"></div>
```

Dynamic Divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several Dynamic Divs. These drop-zones allow you to easily drop HTML content into the page itself.


## Base Template

<img src="../../../images/base-template.jpg" alt="base template" style="width: 100%; display: block"></a>

1.	To get started go to **web files > templates** and <a href="/workspace/websites/manage-website/addfile/">add a file</a>.
2.	Name the file, choose **Code** from the File Type dropdown, and click **Publish**.
3.	Add Dynamic Divs to your file. Below is the code of a sample base template. It includes a dynamicDiv class for the top navigation, content, footer. You can always add more Dynamic Divs as needed.

```js
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

4.	Add the base template to your page. Go to your page and click on the content area where the 3 dots are. This area will change color and it will show the file currently associated with it. We want to replace it with base template file. To do this, with the area selected, click on the base template file from the left navigation. You will see the area change. Click publish on the right side.

<img src="../../../images/stml.jpg" alt="base template" style="width: 100%; display: block"></a>

5.	You can repeat this process to add the content to your page.

## Content Template

<img src="../../../images/content-template.jpg" alt="base template" style="width: 100%; display: block"></a>

1.	Go to **web files > templates** and <a href="/workspace/websites/manage-website/addfile/">add a file</a>.
2.	Name the file, choose **Code** from the File Type dropdown, and click **Publish**.
3.	Follow the above steps to add a base template to the page. Even though it is not required to have a base template, it is highly recommended because it should contain your navigation, footer, and other elements used in your site.
4.	Add Dynamic Divs to your file. Below is the code of a sample content template. It includes a dynamicDiv class for the breadcrumb, content and a left navigation. It also includes the Page title shortcode (Link to shortcodes). You can always add more DynamicDivs as needed.

```js
<!-- Start of Header -->
<div class="container">
  <h1>[page_title]</h1>
</div>
<!-- End of Header -->

<!-- Start of Breadcrumb -->
<div class="dynamicDiv"></div>
<!-- End of Breadcrumb -->

<!-- Start of Main Content -->
<div class="container my-5" id="main-content">
  <div class="row">
    <div class="col-lg-4">
      <!-- Start of Left Navigation -->
      <aside class="pr-lg-5">
        <div class="dynamicDiv"></div>
        <div class="dynamicDiv"></div>
        <div class="dynamicDiv"></div>
        <div class="dynamicDiv"></div>
      </aside>
      <!-- End of Left Navigation -->
    </div>
    <div class="col-lg-8">
      <!-- Start of Content Section -->
      <article>
        <div class="dynamicDiv"></div>
      </article>
      <!-- End of Content Section -->
    </div>
  </div>
</div>
<!-- End of Main Content -->
```

5.	Add the content template to your page. Go to your page and click on the content area below your top navigation within the base template. This area will change color when selected. Click on the content template file from the left navigation. You will see the area change. Click publish on the right side.
6.	Repeat this process to add the content to your page.

## Next Steps

- <a href="/workspace/forms/add-form/">Add a form</a>
- <a href="/workspace/modules/add-module/">Add a module</a>

<!-- * **Base Template:** The base template is the most crucial because it contains the essential resources that will be included in every web page on your website. A base template typically consists of a header and footer, references to asset files, and dynamic divs to place content. Note that any changes you make to the base template will reflect your entire website.

* **Interior Template:** The interior template is typically placed in the base template and serves as the interior of a "Section" of your website. A content template can be reused for sections of your website that require multiple pages, allowing you to reuse your content template to build out your web pages.

* **Sectional Template:** A sectional template is a high-level overview page with links to different sections of your website. Sectional templates can be used "at will," and there are 1,000s iterations of what a sectional template should look like. For example, a homepage's recent blog posts, news, and testimonials sections are sectional templates.

You can find more detailed information about the templates over here: 

<a href="#create-a-base-template">Create a Base Template</a>.

<a href="#create-an-interior-template">Create an Interior Template</a>.

<a href="#create-a-sectional-template">Create a Sectional Template</a>.

## Create a base template

The base template is the most crucial because it contains the essential resources that will be included in every web page on your website. A base template typically consists of a header and footer, references to asset files, and dynamic divs to place content. Note that any changes you make to the base template will reflect your entire website. This article will show you how to build a base template and demonstrate its value in a real-world situation.

<img src="../../../images/base-template.jpg" alt="base template" style="width: 100%; display: block"></a>

!!!Note: 
Your base template contains your core includes (CSS, JavaScript, Fonts, and Images), a header and footer, and dynamic divs (drop zones) in between to insert HTML content.
!!!

### Step 1 - Create a Base Template file
To get started go to **web files > templates**. On the right side, click on **Add File**. Name the file **base-template.tpl**, choose **Code** from the File Type dropdown and click Publish.

<img src="../../../images/base-1.jpg" alt="base template" style="width: 100%; display: block"></a>

<img src="../../../images/addfile.jpg" alt="base template" style="width: 50%; display: block"></a>

Below is the code of a sample base template. It includes the code for Google Analytics (Google Analytics code need to be on every page), a dynamicDiv class for the top navigation, hero, breadcrumbs, content, footer contact form, and footer. 

```js
<!-- Google Tag Manager (noscript) -->
<!-- Add your google tag manager script here -->
<!-- End Google Tag Manager (noscript) -->

<!-- <div role="main">
  <a class="skip-content" href="#maincontent" tabindex="1">Skip to main content</a>

  <!-- Top Nav -->
<!--  <div class="dynamicDiv"></div>
  <!-- End Top Nav -->

  <!-- Content-->
 <!-- <div class="dynamicDiv"></div>
  <!-- End Content -->

  <!-- Footer -->
<!--  <div class="dynamicDiv"></div>
  <!-- End Footer -->
<!-- </div>
``` 

We'll talk in detail about the Dynamic Divs in the following article. In Solodev, Dynamic Divs make laying out web pages easy and utterly customizable while removing the need to duplicate HTML. Dynamic Divs allow you to use HTML markup to create drop zones to insert content onto a web page.  

### Step 2 - Create a Page using baseTemplate.tpl

We created a base template and added code to it, but we need to create a page to put the template in to get it to display on the website. As an example, let's create a homepage. Since the homepage is the first and the default page when the website is opened, we will create an index.stml right inside the **www** folder. The homepage shouldn't be inside any subfolders.

Go to the www directory, and on the right-side menu, click on Add Page.

<img src="../../../images/addtemplate1.png" alt="base template" style="width: 100%; display: block"></a>

#### Name your page index.stml and put the title as "Index Page". 

If you'd like to, you can add a page description. Click Submit.

<img src="../../../images/addtemplate2.png" alt="base template" style="width: 50%; display: block"></a>

#### Select the index.html page 

On the tree, select the index.stml page you created, select the drop zone until it is blue, as shown below.

<img src="../../../images/addtemplate3.png" alt="base template" style="width: 100%; display: block"></a>

#### Insert the baseTemplate.tpl in the page

Find and click on the baseTemplate.tpl file from the left tree will be placed on the page.

<img src="../../../images/addtemplate4.png" alt="base template" style="width: 100%; display: block"></a>

#### Click Publish and you can begin adding content 

<img src="../../../images/addtemplate6.png" alt="base template" style="width: 100%; display: block"></a>

<img src="../../../images/addtemplate5.png" alt="base template" style="width: 100%; display: block"></a>

!!! Note: 
The page we just created will be used on every site page as a template. Now let's insert some HTML content in the drop zones and publish our first page using our base template.
!!!


##  Create an interior template

The interior template is typically placed in the base template and serves as the interior of a "Section" of your website. A content template can be reused for sections of your website that require multiple pages, allowing you to reuse your content template to build out your web pages. In this article, we will show you how to create a content template that we will reuse to create pages for different services.

Below is a screenshot of a two-column template in Solodev:

<img src="../../../images/two-column-template.png" alt="base template" style="width: 100%; display: block"></a>

!!! Note: 
In the screenshot above, the base template is still in place, and other templates have been added, such as breadcrumbs. The interior and sectional templates are added inside the base template.
!!!

Our two-column template has a left navigation and a content area on the right. It can be used for any page that has multiple links and descriptions.

Here's the code for the two-column template:
```js
<section class="container py-5" id="maincontent">
  <div class="row">
    <div class="col-md-8 col-lg-9 order-md-1">
      <div class="dynamicDiv"></div>
      <div class="dynamicDiv"></div>
      <div class="dynamicDiv"></div>
      <div class="dynamicDiv"></div>
    </div>

    <aside class="col-md-4 col-lg-3 order-md-0 mt-3 mt-md-0 pr-4">
      <div class="dynamicDiv"></div>
      <div class="dynamicDiv"></div>
      <div class="dynamicDiv"></div>
    </aside>
  </div>
</section>
```

!!!Note: 
We're using Bootstrap for the website, so the template above also contains Bootstrap elements.
!!!

An interior template is created the same way the base template is created. Even though it is not necessary, you can create a folder and organize the different kinds of templates over there. In our example, we created a content folder and put the interior templates inside that folder.

<img src="../../../images/addtemplate7.png" alt="base template" style="width: 30%; display: block"></a>

### Step 1 - Create the folder for the template

Go to the **web files** folder on the tree. Inside the **web files** folder, go to the **templates** folder. Click the "Add a folder" button. Give a name to your folder and hit Submit. 

<img src="../../../images/addtemplate8.png" alt="base template" style="width: 100%; display: block"></a>

<img src="../../../images/addtemplate9.png" alt="base template" style="width: 50%; display: block"></a>

### Step 2 - Create the file for the template

Go to the folder you created, and on the right side menu, click "Add a file" name the file as you wish, i.e., two-column-template.tpl. Hit the submit button. Click on the file and add your code. When you're done, click on "Publish".

<img src="../../../images/addtemplate10.png" alt="base template" style="width: 100%; display: block"></a>

### Step 3 - Add a Page

Go to the **www** directory, and on the right-side menu, click on Add Page

<img src="../../../images/addtemplate1.png" alt="base template" style="width: 100%; display: block"></a>

#### Name your page and publish it

If you'd like to, you can add a page description. Click Publish.

<img src="../../../images/addtemplate2.png" alt="base template" style="width: 50%; display: block"></a>

#### Select the index.stml page

On the tree, select the index.stml page you created, select the drop zone until it is blue, as shown below.

#### Insert the interior template in the page

Find and click on the template file from the left tree, which will be placed on the page. Click Publish.

<img src="../../../images/addtemplate11.png" alt="base template" style="width: 100%; display: block"></a>

## Create a sectional template

A sectional template is a high-level overview page with links to different sections of your website. Sectional templates can be used "at will," and there are 1,000s of iterations of what a sectional template should look like. For example, recent blog posts, recent news, and testimonials sections on a homepage are sectional templates.

Below is a screenshot of a sectional template in Solodev:

<img src="../../../images/addtemplate12.png" alt="base template" style="width: 100%; display: block"></a>
<img src="../../../images/addtemplate13.png" alt="base template" style="width: 100%; display: block"></a>
<img src="../../../images/addtemplate14.png" alt="base template" style="width: 100%; display: block"></a>
<img src="../../../images/addtemplate15.png" alt="base template" style="width: 100%; display: block"></a>

!!!Note: 
As you can see, sectional templates contain a lot of content, most of which directs you to other website sections, such as the Recent Events, Blog, and Photo Gallery sections. Everything on this page lives somewhere else on the website, and the sectional template is the page that users will likely use as a starting point to decide where to go next.
!!!

To add a Sectional Template, we first need to add a page and then insert the template into the page.

### Step 1 - Add a Page

Go to the www folder. On the side menu, click on "Add Page"

<img src="../../../images/addtemplate1.png" alt="base template" style="width: 100%; display: block"></a>

### Step 2 - Name the page and click Submit

<img src="../../../images/addtemplate16.png" alt="base template" style="width: 50%; display: block"></a>

### Step 3 - Add the base template to your drop zone. Click Publish

Go to the www folder and select the sectional template stml file you created. Then go to the web files folder, and under the templates folder, find the basetemplate.tpl. In the sectional template file, select the drop zone until it is blue, then click on the basetemplate.tpl to insert it in the sectional template page.

<img src="../../../images/addtemplate4.png" alt="base template" style="width: 100%; display: block"></a>

### Step 4 - Add the top level templates

Since components such as the navigation, hero section, etc., will be at the top of the page, begin by adding them first:

<img src="../../../images/addtemplate17.png" alt="base template" style="width: 100%; display: block"></a>

### Step 5 - Add the sectional content templates

The screenshot above shows sectional templates such as recent blog posts, recent news, and the testimonials section. Let's see how we can select them for the sectional page.

Here is the list of the sectional template files we'd like to add by order:


1. Recent news

2. Blog

3. About boxes (Meet Out Team, Latest Events, Photo Gallery)

With the sectional stml page open, we go to the web files folder, then select the template files and click on the blue zones inside the sectional page to place them inside the page respectively.

1.
<img src="../../../images/addtemplate18.png" alt="base template" style="width: 100%; display: block"></a>

2.
<img src="../../../images/addtemplate19.png" alt="base template" style="width: 100%; display: block"></a>

3.
<img src="../../../images/addtemplate20.png" alt="base template" style="width: 100%; display: block"></a>


## Step 6 - Add the remaining templates
These templates will come after the sectional templates towards the bottom of the page, such as a contact form at the end, the footer, etc.

<img src="../../../images/addtemplate21.png" alt="base template" style="width: 100%; display: block"></a>

If you followed the instructions, your sectional template should appear at the beginning of the "Create a sectional template" section.

!!!Note: 
If you would like to insert more templates in a page and can't find enough blue zones to drop them into, you can create more DynamicDivs to increase the number of drop zones. In the "Tutorials" section, we talk about what DynamicDivs are and how to create them.
!!! -->
