# Add Page

A page is the basic building block of a website. It acts as a container for your content while providing a general structure based on your [page template](/tutorials/cms/add-page-template/) and styling.

## STML Files 

While a page is composed of hypertext markup and served in a browser, all pages in the Solodev CMS are given a “.stml” extension. An STML is an HTML file that contains server-side includes (SSI), which are used to generate page-generated content. STML files are processed by the server when a user accesses the related webpage.

!!!Note:
if you're creating an HTML page with a code editor, you need to manually give it an extension of ".stml" before you upload the file to your Solodev CMS.
!!!

<p><img src="../../../../images/folders/add-page.jpg" alt="Add Page" style="width: 40%;"></p>

**Name** | **Description**
:--- | ---
Name | Add the page name. The name of the page should be lowercase and separated with dashes.
Title | Add the page title. This will be the Title displayed on your site. 
Description | Add the page description. This description can be utilized on your website's frontend or<br> for organizational purposes.
Available Templates | Choose from the available templates. The user can skip this step if they would like to build a custom template for the page and add it later.
Confirm | After filling out all the required fields, please click the **Submit** button to save your changes.

## Add File to Page

Dynamic divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several dynamic divs, allowing you to easily insert HTML content into the page itself.

To insert your file into your page template, follow these simple steps:

1. Navigate to the **www** folder and click on the **stml** file.

2. In the main content area, click where you want your content to be inserted. The area will become active, displaying the dynamic div as a rectangular box set in a light blue color.

3. Next, click on your file under the **web files** folder in the left menu. This will apply your content to the dynamic div. 

4. Click **Publish** in the upper right corner.