# How to create a page template

Page templates are reusable layouts that allow you to build pages faster and easier. They provide control over your website’s structure while giving you the freedom to customize and personalize your content. In this tutorial, you will learn how to create a page template using <a href="/tutorials/websites/add-page-template/#using-dynamic-divs">dynamic divs</a> and how to apply it to new pages on your website. 

## Prerequisites
*	You will need to complete the <a href="/workspace/websites/add-website/">How to add page to a website</a> tutorial.
*	For the examples in this tutorial, we will be using the Solodev SpaceJet theme package. <a href="https://github.com/solodev/marketplace/raw/master/depot/themes/solodev-spacejet-2023.zip">Download the zip file</a> to access the images and assets.
*	As you are building with this tutorial, you can refer to the <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">Solodev SpaceJet website</a> to compare your progress.

## Using dynamic divs

Page templates are composed of dynamic divs – or “dropzones” – where HTML and content can be inserted and arranged in various places on a website page. Dynamic divs work fluidly with the Bootstrap grid system, allowing you to easily insert content once the layout of your page has been created. Here is the simple HTML code to create a dynamic div in Solodev:

```js
<div class="dynamicDiv"></div>
```

Dynamic divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several dynamic divs, allowing you to easily insert HTML content into the page itself.

## Creating .tpl files

When building a page template in Solodev, you will be using .tpl files, also known as template files. This is a common format used by various types of applications to store a website’s page layout and properties. 

One of the key benefits of .tpl files is that they allow you to include multiple types of programming languages such as JavaScript, HTML, and PHP – all in the same file. For example, a .tpl can include HTML for rendering the navigation in a website header, but also include the JavaScript tracking codes necessary for Google Analytics.

## How to create your base template

The first step in creating a page template is to build your base template, which will serve as the foundation for page templates in your website. 

**Step 1**: Log into your website and enter the main dashboard. Under **web files**, click on the **templates** folder.

<img src="../../../images/base-template-nav.jpg" alt="base template" style="width: 20%; display: block"></a>

**Step 2**: Using the right-hand menu, click <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a>. 

<img src="../../../images/base-template-add-folder.png" alt="base template" style="width: 20%; display: block"></a>

**Step 3**: In the **Name** field, add a folder called **base**. You can also add an optional title and description. Once complete, click **Submit**. 

<img src="../../../images/base-template-add-folder-2.png" alt="base template" style="width: 40%; display: block"></a>

!!!**Note**:
The nested base folder will house your base template and other components. 
!!!

**Step 4**: Click back on the templates folder. Using the same right-hand menu, click <a href="/workspace/websites/manage-folder/addfile/">Add File</a>. 

**Step 5**: In the fields provided, give your file a **Name** (such as “base-template”) and remember to use the .tpl extension. From the **File Type** dropdown, select **Code**, and click **Submit**.

<img src="../../../images/base-template-add-file.png" alt="base template" style="width: 40%; display: block"></a>

!!!**Note**:
A .tpl file should be designated as “Code” in the File Type to ensure that it can include your HTML, JavaScript, and PHP components. 
!!!

<img src="../../../images/base-template-file.jpg" alt="base template" style="width: 50%; display: block"></a>

**Step 6**: Click on your new file under the **templates** folder and paste the sample code below into the editor. The sample includes a dynamicDiv class for the top navigation, content, and footer. Once complete, click **Publish**. 

```js
<div role="main">
  <!-- Top Nav -->
  <div class="dynamicDiv"></div>
  <!-- End of Top Nav -->

  <!-- Hero -->
  <div class="dynamicDiv"></div>
  <!-- End of Hero -->

  <!-- Content -->
  <div class="dynamicDiv"></div>
  <!-- End of Content -->

  <!-- Footer -->
  <div class="dynamicDiv"></div>
  <!-- End of Footer -->
</div>
```

!!!**Note**:
You can always add more dynamic divs as needed.
!!!

## Adding your base template to your page template

Next, you can apply your base template to your page template.

**Step 1**: Under the **www** folder, click on the **index.stml** file – which will become your <a href="../../../tutorials/websites/add-page-template/#how-to-create-a-homepage-template">homepage</a>. Then, click in the main content area where the two dots are located. 

<img src="../../../images/base-template-dots.jpg" alt="base template" style="width: 50%; display: block"></a>

!!!**Note**:
The two dots are a default indicator on all blank pages and can be removed 
during editing. 
!!!


**Step 2**: After clicking on the two dots, the areas will become active, displaying the dynamic divs as a stack of rectangular boxes set in a light blue color. The name of your base template file will also appear in the upper left. 

<img src="../../../images/base-template-add-base-template.png" alt="base template" style="width: 100%; display: block"></a>

**Step 3**: Next, click on your base template file under the **templates** folder in the left menu. This will apply your base template to the dynamic div. Then, click **Publish** in the upper right corner.

**Step 4**: Once published, your **index.stml** page will refresh, displaying your dynamic divs in white.  You are now ready to build your page templates. 

<img src="../../../images/base-template-base-template-final.png" alt="base template" style="width: 100%; display: block"></a>

!!!**Note**: 
You can repeat this process for all additional page templates in your website.
!!!

### Setting up your folders and .tpl files

**Step 1**: Under **web files**, click on the **templates** folder.

**Step 2**: Using the right-hand menu, click  <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a>. Under **templates**, add four folders with the following names:

- **footer**
- **navigation**

When complete, click **Submit**.

<img src="../../../images/template-folders.jpg" alt="base template" style="display: block"></a>

**Step 3**: Under **templates**, click on the **base** folder. In the right menu, click <a href="../../../workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file named **div-insert.tpl** and select **Code** from the **File Type** dropdown. When complete, click **Submit**.

<img src="../../../images/homepage-base-folder-div.png" alt="base template" style="width: 20%; display: block"></a>

!!!**Note**:
The additional div-insert.tpl file will provide extra dynamicDivs to your page template. 
!!!

**Step 4**: In each of the new folders, you will need to add a new .tpl file. Follow the previous steps to click on each folder and <a href="/workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file under each folder as follows, and select **Code** for the **File Type**. Once complete, click **Submit**:

- footer: **footer.tpl** 
- navigation: **top-nav.tpl** 

<img src="../../../images/nav-footer-folders.jpg" alt="base template" style="display: block"></a>

### Adding templates to your dynamic divs

Next, you will learn how to apply your .tpl files to your dynamic divs. For the purposes of this lesson, will continue using sample code from the SpaceJet theme. To ensure that the images referenced in the theme appear in your editor, you will need to upload several files to your website’s image folder. 

**Step 1**: Locate the following assets in the <a href="https://github.com/solodev/marketplace/raw/master/depot/themes/solodev-spacejet-2023.zip">SpaceJet package</a> you previously downloaded:

- **SpaceJet-Logo.png** (located in _ > images)

**Step 2**: Under the **www** folder, click on the **images** folder under the “_” folder. 

<img src="../../../images/homepage-images-folder.png" alt="base template" style="width: 100%; display: block"></a>

**Step 3**: Using the right-hand menu, click **Upload**. Drag both images from your local computer into the window and click **Upload**.

<img src="../../../images/homepage-upload-images1.png" alt="base template" style="width: 40%; display: block"></a>

!!!**Note**: 
For more details on how to upload images to your website in Solodev, read 
the <a href="/workspace/websites/manage-folder/upload/">Upload</a> article under Manage Folder in Websites.  
!!!

**Step 4**: Under **web files**, browse to the **navigation** folder and click on the **top-nav.tpl** file. Copy the code sample below into the editor. When complete, click **Publish**.

<img src="../../../images/homepage-top-nav-code.png" alt="base template" style="width: 100%; display: block"></a>

```js
<div class="bg-primary py-2"></div>
<div class="border-bottom">
  <div class="container">
    <nav class="d-flex justify-content-between align-items-center py-2">
      <a href="/" class="d-flex align-items-center w-50">
        <img src="/_/images/SpaceJet-Logo.png" alt="SpaceJet 2023 Theme Logo" class="w-50">
      </a>
      <div class="d-flex align-items-center justify-content-end">
        <a href="/blog/" class="fs-5 me-xl-5 me-4 text-dark text-decoration-none" aria-
label="Blog"><strong>Blog</strong></a>
        <a href="/contact/" class="fs-5 text-dark text-decoration-none" aria-label="Get 
Started"><strong>Get Started</strong></a>
      </div>
    </nav>
  </div>
</div>
```

**Step 5**: Under the **www** folder, click on the **index.stml** file.

<img src="../../../images/homepage-images-menu.png" alt="base template" style="width: 20%; display: block"></a>

**Step 6**: In the top dynamic div, click anywhere in the **base-template.tpl** div. Once activated, it will turn blue, indicating that it is ready to have a template applied to it. 

Next, under **web files**, open the **templates** folder and browse to the **navigation** folder. Click on the **top-nav.tpl** file. The tag will change from **base-template.tpl** to **top-nav.tpl**, as shown: 

<img src="../../../images/homepage-top-nav-tpl.png" alt="base template" style="width: 100%; display: block"></a>

Once complete, click **Publish**. After your page reloads, you will see the top navigation appear in your **index.stml** file. 

<img src="../../../images/homepage-top-nav-complete.png" alt="base template" style="width: 100%; display: block"></a>

!!!**Note**:
Solodev provides a rich visual editing experience. The editor renders a preview of your frontend website, but minor differences may occur due to the software’s features and functionality. This can affect the appearance of fonts and images within the editor. You can compare your progress to the live <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">SpaceJet sample site</a>.
!!!

**Step 7**: Repeating steps 4 and 5, add the code samples below for the other divs of the SpaceJet homepage:

**footer.tpl**

```js
<footer class="mt-auto">
  <div class="container">
    <div class="row row-cols-1 row-cols-sm-3 py-2 align-items-center mt-3 mt-md-0">
      <div class="col">
        <a href="/" class="d-flex align-items-center">
          <img src="/_/images/SpaceJet-Logo.png" alt="SpaceJet 2023 Theme Logo" class="w-50">
        </a>
      </div>
      <div class="col">
        <div class="d-flex align-items-center justify-content-center">
          <p class="mb-0"><a href="/about/" class="text-dark text-decoration-none me-md-5 me-3"><strong>About</strong></a></p>
          <p class="mb-0"><a href="/blog/" class="text-dark text-decoration-none me-md-5 me-3"><strong>Blog</strong></a></p>
          <p class="mb-0"><a href="/contact/" class="text-dark text-decoration-none"><strong>Get Started</strong></a></p>
        </div>
      </div>
      <div class="col">
        <ul class="list-unstyled d-flex justify-content-end mb-0">
          <li><a href="https://www.twitter.com" class="text-dark text-decoration-none" target="_blank" rel="noopener noreferrer"><span class="fa-fw fa-brands me-2 fa-lg fa-twitter"></span><span class="sr-only">Twitter</span></a></li>
          <li><a href="https://www.facebook.com" class="text-dark text-decoration-none" target="_blank" rel="noopener noreferrer"><span class="fa-fw fa-brands me-2 fa-lg fa-facebook-f"></span><span class="sr-only">Facebook</span></a></li>
          <li><a href="https://www.linkedin.com" class="text-dark text-decoration-none" target="_blank" rel="noopener noreferrer"><span class="fa-fw fa-brands me-2 fa-lg fa-linkedin-in"></span><span class="sr-only">Linkedin</span></a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="bg-light py-2">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center flex-md-row flex-column">
        <p class="small mb-0 mt-3 mt-md-0">&copy;2023 SpaceJet. Built on <a href="https://github.com/solodev/marketplace/raw/master/depot/themes/solodev-spacejet-2023.zip" class="text-dark">SpaceJet Theme</a> and powered by <a href="https://www.solodev.com" target="_blank" rel="noopener noreferrer" class="text-dark">Solodev</a>.</p>
        <ul class="list-unstyled d-inline-flex mb-0 mt-3 mt-md-0 small">
          <li><a href="/privacy.stml" class="text-dark me-3">Privacy</a></li>
          <li><a href="/legal.stml" class="text-dark">Legal</a></li>
        </ul>
      </div>
    </div>
  </div>
</footer>
```

**Step 8**: To add more space to the page for the main content areas, repeat steps 4 and 5 and add these additional code samples: 

Once complete, your final homepage should appear in the editor, featuring the top navigation, and footer. 

!!!Note:
Once you have your page template complete, you can return to the How to add a page to a website tutorial. In Step __, you will see that your template is now available.
!!!