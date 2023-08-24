# How to add a page

In Solodev, a page template is a reusable component that allows you to build website pages faster and easier. They provide control over your website structure while giving you the freedom to customize where needed. In this article, you will learn the key concepts behind page templates, the importance of dynamic divs, and how to create a base and content template for your website. 

## Prerequisites 

-	You will need to <a href="/workspace/websites/add-website/">add a website</a> to your Solodev CMS
-	You will need to <a href="/workspace/websites/manage-folder/add-page/">add a page</a>

## Page Templates

There is no limit to the kinds of page templates you can create in Solodev, but most websites use these common types as a best practice:

*	**<a href="/tutorials/website/add-page-template/#base-template">Base Template:</a>**
The base template is the foundation for every page of your website. It typically consists of a header, footer, and dynamic divs for adding content. Because they are universal, any changes made to a base template will be reflected across all pages of your site.  

*	**<a href="/tutorials/website/add-page-template/#content-template">Content template:</a>**
A content template is usually placed within the base template. Sometimes referred to as an “interior template,” content templates power the bulk of your website, and can be reused for various sections that require multiple pages.

* **<a href="/tutorials/website/add-page-template/#create-a-sectional-template">Sectional Template:</a>** 
A sectional template is a high-level overview of a "section" of your website's content. Think of it as a jumping-off point to areas that fall under a specific content theme or topic. Sectional templates can be used in a variety of ways, but most provide a collection of snippets and links to relevant areas. For example, if a website has a section called "Departments," a sectional template might include an overview along with a list of links to all the departments. Because they are used sparingly, sectional templates generally have a distinct design from your content templates, helping them stand out.

## Dynamic Divs

Page Templates are composed of dynamic divs – or “dropzones” – where HTML and content can be inserted and arranged in various places on your website pages. Dynamic divs work fluidly with the Bootstrap grid system, allowing you to easily insert content once the layout of your page has been created. Here is the simple HTML code to create a dynamic div in Solodev:

```js
<div class="dynamicDiv"></div>
```

Dynamic Divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several Dynamic Divs. These drop-zones allow you to easily drop HTML content into the page itself.


## Base Template

<img src="../../../images/base-template.jpg" alt="base template" style="width: 100%; display: block"></a>

**Step 1**.	To get started go to **web files > templates** and <a href="/workspace/websites/manage-folder/addfile/">add a file</a>.

**Step 2**.	Name the file, choose **Code** from the File Type dropdown, and click **Publish**.

**Step 3**.	Add Dynamic Divs to your file. Below is the code of a sample base template. It includes a dynamicDiv class for the top navigation, content, footer. You can always add more Dynamic Divs as needed.

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

**Step 4**.	Add the base template to your page. Go to your page and click on the content area where the 3 dots are. This area will change color and it will show the file currently associated with it. We want to replace it with base template file. To do this, with the area selected, click on the base template file from the left navigation. You will see the area change. Click publish on the right side.

<img src="../../../images/stml.jpg" alt="base template" style="width: 100%; display: block"></a>

**Step 5**.	You can repeat this process to add the content to your page.

## Content Template

<img src="../../../images/content-template.png" alt="base template" style="width: 80%; display: block"></a>

**Step 1**.	Go to **web files > templates** and <a href="/workspace/websites/manage-folder/addfile/">add a file</a>.

**Step 2**.	Name the file, choose **Code** from the File Type dropdown, and click **Publish**.

**Step 3**.	Follow the above steps to add a base template to the page. Even though it is not required to have a base template, it is highly recommended because it should contain your navigation, footer, and other elements used in your site.

**Step 4**.	Add Dynamic Divs to your file. Below is the code of a sample content template. It includes a dynamicDiv class for the breadcrumb, content and a left navigation. It also includes the Page title <a href="/shortcodes/">shortcode</a>. You can always add more DynamicDivs as needed.

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
      <aside class="pe-lg-5">
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

**Step 5**.	Add the content template to your page. Go to your page and click on the content area below your top navigation within the base template. This area will change color when selected. Click on the content template file from the left navigation. You will see the area change. Click publish on the right side.

**Step 6**.	Repeat this process to add the content to your page.

## Create a sectional template

**Step 1**. Go to the **www folder** and <a href="/workspace/websites/manage-folder/add-page/">add page</a>.

**Step 2**.  Name the page and click **Submit**.

**Step 3**.	Follow the above steps to add a base template to the page. Even though it is not required to have a base template, it is highly recommended because it should contain your navigation, footer, and other elements used in your site.

**Step 4**. Add Dynamic Divs to your file. Below is the code of a sample sectional template. It includes DynamicDivs for your content. You can also add the Page title shortcode, to show the page title on the front-end and/or the breadcrumb shortcode to help users navigate your site. You can always add more DynamicDivs as needed.

```js
<!-- Start of Breadcrumb -->
<div class="py-3">
  <div class="container">
    <div class="breadcrumb mb-0">
      [breadcrumb]
    </div>
  </div>
</div>
<!-- End of Breadcrumb -->

<!-- Start of Content -->
<div class="container my-5" id="main-content">
  <div class="dynamicDiv"></div>
  <div class="dynamicDiv"></div>
  <div class="dynamicDiv"></div>
  <div class="dynamicDiv"></div>
  <div class="dynamicDiv"></div>
</div>
<!-- End of Content -->
```

**Step 5**.	Add the sectional template to your page. Go to your page and click on the content area below your top navigation within the base template. This area will change color when selected. Click on the sectional template file from the left navigation. You will see the area change. Click publish on the right side.

**Step 6**.	Repeat this process to add the content to your page.

## Next Steps

- <a href="/workspace/forms/add-form/">Add a form</a>
- <a href="/workspace/modules/add-module/">Add a module</a>

<!-- ## Create a Homepage

We showed how to create a base template and added code in it but in order to get it to display on the website, we actually need to create a page to put the template in. As an example, let's create a homepage. Since the homepage is the first and the default page when the website is opened, we will create an index.stml right inside the www folder. The homepage shouldn't be inside any subfolders.

**Step 1**. Go to the www directory and on the right-side menu, click on Add Page. 

**Step 2**. Name your page index.stml and put the title as "Index Page", If you'd like to, you can add a description of the page. Click Publish.

**Step 3**. On the tree, select the index.stml page you created, select the drop zone until it is blue as shown below.

**Step 4** Find and click on the baseTemplate.tpl file from the left tree and it will be placed on the page.

**Step 5** Click Publish and you can begin adding content 

!!! Note: 
The page we just created will be used on every page of the site as a template. Now let's insert some HTML content in the drop zones and publish our first page using our base template.
!!!

**Step 6**. Select the first dynamic div and select home-ships.tpl from the left tree
 
!!! Note: 
Although this was a simple example of creating a base template and then using it to create a page, it is important to understand the advantages of using a base template. First and foremost, it speeds up development time and negates the need for duplicate HTML. This allows you to rapidly build web pages without having to hardcode the same HTML over and over again.
!!! -->