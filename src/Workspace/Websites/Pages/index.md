# Structuring your Page


In Solodev CMS, all pages are given an ".stml" extension. STML files are HTML files that contain server side includes (SSI) used to generate dynamic content for the page. When you create a page in Solodev, it will automatically have the ".stml" extension but if you're creating a page with a code editor, you need to manually give it an extention of ".stml" before you upload the file to the CMS.

![stml extension](stmlextensioneg.png)

---

## Build your page using dynamic divs and templates


### Organize your page with content blocks

Pages contain “drop zones” that allow you to insert content blocks into a given area. Traditional content blocks (given an “.html” extension) can easily be edited either inline or through a WYSIWYG editor. `Code blocks (traditionally with a “.tpl” extension) can be edited in the system directly.

***The difference between .html files and .tpl files in Solodev:***

.html files should be used to manage content devoid of complex markup. If a content block just contains text elements, images, links, etc then .html is appropriate.

.tpl should be used if you're creating complex HTML synxtax such as nested divs.

Previously, we talked about the [two main folder structures](https://cms.solodev.net/workspace/websites/#website-file-structure-in-solodev) in Solodev. There are two main folders: **web files** and **www**. Both directories, **web files** and **www** mimic one another with the web files folder displaying folders filled with HTML content and your www folder housing the same folder structure with one difference, instead of HTML content they are composed of web pages. Let's explain this further:

Pages in Solodev have a different structure than regular web pages. Regular web pages are HTML files with an ".html" extension such as index.html, about.html etc. Inside these pages, there's HTML code. Web pages in Solodev have an ".stml" extension and inside they store multiple HTML files as content. 

So what is the main difference between content and pages in Solodev?

- Content is stored in HTML files.

- Pages are public facing web pages composed of multiple HTML files and have an ".stml" extension.

To give an example, let's say you have a block of text with an image that you'd like to put on a page. Under the web files folder, you'd create an HTML file, put the content in it:

![html content](example-html-content.png)

Here's how it looks when you click on Source to display the source code:

![html source code content](example-html-content-source-code.png)

Then you'd go to the **www** folder and and insert that HTML file in the .stml file:

![html content  on a page](html-content-on-a-page.png)


### Create components based upon sections of your HTML

Before you can build your website you first need to deconstruct your designs into common elements that can then be turned into theme templates. This process involves identifying common areas of the site that will be present across all pages of a website as well as design elements which are unique to specific pages. In identifying these components, you will be able to clearly structure your theme.

 

In Solodev, there are three kinds of templates:

 

Base Template: The base template is the most important template in that it contains the essential resources that will be included in every web page on your website. A base template typically consists of a header and footer, references to asset files, and dynamic divs to place content. Note that any changes you make the base template will reflect your entire website. 

Interior Template: The interior template is typically placed in the base template and serves as the interior of a "Section" of your website. The benefit in a content template is it can be re-used for sections of your website that require multiple pages, allowing you to re-use your content template to build out your web pages.

Sectional Template: A sectional template is a high level overview page with links to different sections of your website. Sectional templates can be used "at will" and there are 1,000s of iterations of what a sectional template should look like. For example, recent blog posts, recent news and testimonials sections on a homepage are sectional templates.

You can find more detailed information about the templates over here: 
Create a Base Template
Create an Interior Template
Create a Sectional Template 

 

Before you begin putting HTML components into templates, you need to identify which components will appear on all pages and which components will be unique to some pages. Components such as header and footer go into the base template since every page needs a header and a footer but some components such as team member sections, product descriptions etc. need to be in a sectional template.

 

Next, we will talk about how to construct each type of templates.


### Constructing templates

---

#### Create a base template

The base template is the most important template in that it contains the essential resources that will be included in every web page on your website. A base template typically consists of a header and footer, references to asset files, and dynamic divs to place content. Note that any changes you make the base template will reflect your entire website. In this article we will show you how to build a base template and demonstrate its value in a real world situation.

Below is a screenshot of a base template in Solodev:

![Solodev base template](solodev-base-template.png)

**Note:** Your base template contains your core includes (CSS, JavaScript, Fonts, Images), a header and footer, and dynamic divs (drop zones) in between to insert HTML content.

**Step 1: Create a Base Template file**

- Open the templates folder. 

- Click on Add File in the menu to the right. 

- Name the file "baseTemplate.tpl". 

- Click Publish.


Below is the code of a sample base template. It includes the code for Google Analytics (Google Analytics code need to be on every page), a dynamicDiv class for the top navigation, hero, breadcrumbs, content, footer contact form and footer. 


![Base template code](solodev-base-template-code.png)


![Base template dynamic divs](base-template-dynamic-divs.png)


We'll talk in detail about the Dynamic Divs  in the next article. In Solodev, Dynamic Divs make laying out web pages easy and completely customizable while removing the need to duplicate HTML. Dynamic Divs allow you to use HTML markup to create drop zones where you can insert content onto a web page. 

**Step 2: Create a page using baseTemplate.tpl**

We created a base template and added code in it but in order to get it to display on the website, we actually need to create a page to put the template in. As an example, let's create a homepage. Since the homepage is the first and the default page when the website is opened, we will create an index.stml right inside the www folder. The homepage shouldn't be inside any subfolders.

- Go to the www directory and on the right-side menu, click on *Add Page*. 

- Set a name for the page. 

- Set a title for the page.

- Add a description to the page. 

- Click Submit. 

- Select the newly created page and click the dropzone until it is blue as shown below. 

![Select a dynamic div](solodev-base-template-section-selection.png)

- Find and click on the baseTemplate.tpl file from the left tree to insert it on the page. 

![Insert the baseTemplate into the dynamic div](solodev-base-template-section-selected.png)

- Click Publish to begin adding content. 

![Base template sections](solodev-base-template-sections.png)

**Note:** The page we just created will be used on every page of the site as a template. Now let's insert some HTML content in the drop zones and publish our first page using our base template.

- Select the first dynamic template and select home-ships.tpl from the websites tree. 

- Click Publish.

![Base template with added sections](solodev-base-template-sections-added.png)


---

#### Create an interior template

The interior template is typically placed in the base template and serves as the interior of a "Section" of your website. The benefit in a content template is it can be re-used for sections of your website that require multiple pages, allowing you to re-use your content template to build out your web pages. In this article we will show you how to create a content template that we will re-use to create pages for difference services.

 

Below is a screenshot of a two-column template in Solodev:

![Two column template](two-column-template.png)

**Note:** In the screenshot above the base template is still in place and there are other templates added as well such as breadcrumbs. The interior and sectional templates are added inside the base template. 

The two-column template we have has a left navigation and a content area on the right. It can be used for any page that has multiple links and descriptions. 

Here's the code for the two-column template:

```html 

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

**Note:** We're using Bootstrap for the website so the template above also contains Bootstrap elements. 

Other interior template examples we have are the one-column template, full-width template and so on.

**Creating an interior template**

An interior template is created the same way the base template is created. Even though it is not necessary, you can create a folder and organize the different kinds of templates over there. In our example, we created a folder titled content and put the interior templates inside that folder:

![Interior template folder](interior-template-folder.png)

---

**Step 1: Create the folder for the template**

- On the websites dashboard go the web files folder. 

- Go to the templates folder.

- Click Add a Folder. 

- Give a name to your folder and hit Submit. 


**Create the file for the template**

- On the websites dashboard go the web files folder. 

- Go to the templates folder and open it.

- Click Add a file. 

- Set a name and description for the file. 

- Hit the Submit button. 

- In the text editor, add your code. 

- Click Publish.


**Add a page for the template**

- Go to the www directory and click *Add Page* located on the menu to the right.

- Set a name, title and description to the page. 

- Click Submit. 

- On the new page, select the dropzone until it is blue as shown. 

- From the websites dashbaord, go the web files folder. 

- Find the template file and click it to add the template to the page. 


#### Create a sectional template

A sectional template is a high level overview page with links to different sections of your website. Sectional templates can be used "at will" and there are 1,000s of iterations of what a sectional template should look like. For example, recent blog posts, recent news and testimonials sections on a homepage are sectional templates.

Below is a screenshot of a sectional template in Solodev:

![Sectional Template](About_LunarXP.jpg)


**Add a page**

- Go to the www directory and click *Add Page* located on the menu to the right.

- Set a name, title and description to the page. 

- Click Submit. 

- On the new page, select the dropzone until it is blue as shown. 

- From the websites dashbaord, go the web files folder. 

- Find the baseTemplate file and click on it to add the template to the page.

- Click Publish. 

- Add the top level templates such as the navigation or hero section. 

- Add the sectional template files in the following order: 

    1. Recent news
    2. Blog
    3. About boxes 

- Add the remaining templates such as the contact form, footer, etc. 

- Click Publish. 

If you followed the instructions your sectional template should appear as below:

![Sectional Template](About_LunarXP.jpg)

**Note:** If you would like to insert more templates in a page and can't find enough blue zones to drop them into, you can create more DynamicDivs to increase the number of drop zones.

### Using DynamicDivs to create custom pages

**What are dynamic divs?**

Dynamic Divs are the connecting elements between your HTML content and STML pages. In Solodev, every component is placed inside a page by using the blue drop zones:

![Dropzones](blue-drop-zone.png)

When you select and HTML file or a template file on the file tree, you hover over a blue drop zone and place the file inside the drop zone. All these drop zones are created by DynamicDivs. Dynamic Divs allow you to use HTML markup to create drop zones where you can insert content onto a web page. The Dynamic Div system works extremely well with the Bootstrap grid system as it allows developers to insert Dynamic Divs into the Bootstrap grid allowing you to easily insert content once the layout of the page has been created. Here is the simple HTML code to create a DynamicDiv:

`<div class="dynamicDiv"></div>`

As an example, let's take a look at a section inside a sample basetemplate file:

```html

<!-- Top Nav -->
<div class="dynamicDiv"></div>
<!-- End Top Nav -->

<!-- Hero -->
<div class="dynamicDiv"></div>
<!-- End Hero -->

<!-- Breadcrumbs -->
<div class="dynamicDiv"></div>
<!-- End Breadcrumbs -->

<!-- Content -->
<div class="dynamicDiv"></div>
<!-- End Content Template -->

<!-- Footer Form -->
<div class="dynamicDiv"></div>
<!-- End Footer Form -->

<!-- Footer -->
<div class="dynamicDiv"></div>
<!-- End Footer -->

```

For each component area such as the top navigation, the hero section, breadcrumbs, the main content area, and footer there is a div container with a dynamicDiv class. This means that in the code above, since there are 6 dynamicDivs, when you insert the template on the page, there will be 6 empty blue drop zones available for you to insert your top navigation, the hero section, breadcrumbs, the main content area, and footer templates. You can create as many blue drop zones as you want by inserting dynamicDivs inside your templates. 

Each Dynamic Div is marked with dotted lines. Every time you select a Dynamic Div, it will highlight in blue.

![blue zone with dotted lines](blue-zone-dotted-lines.png)

You can add unique content to each Dynamic Div container. Adding content to the left navigation and right content block produces a page similar to below:

![dynamic div content areas](dynamicdiv-content-areas.png)

Generally speaking, your STML pages will contain several Dynamic Divs. These drop-zones allow you to easily drop HTML content into the page itself.

### Add your components into dynamic divs to build a page

**Step 1: Identify the components of a page**

Looking at the image above, there are 6 main components on the page: 

- Top Navigation area

- The hero section with a title of "Ships"

- Breadcrumbs

- The main content area with a left-side navigation and content on the right side

- A footer contact form

- The footer

That means initially we need 6 blue drop zones on the page. 

**Step 2: Add the DynamicDivs in the Base Template**

Since we need 6 main components, we need to create 6 dynamicDivs in the base template:

Note: The text inside brackets is for leaving comments.  All the text inside `<!--  -->` characters will be uncommented therefore won't be visible on the page.

```html

<!-- Top Nav -->
<div class="dynamicDiv"></div>
<!-- End Top Nav -->

<!-- Hero -->
<div class="dynamicDiv"></div>
<!-- End Hero -->

<!-- Breadcrumbs -->
<div class="dynamicDiv"></div>
<!-- End Breadcrumbs -->

<!-- Content -->
<div class="dynamicDiv"></div>
<!-- End Content Template -->

<!-- Footer Form -->
<div class="dynamicDiv"></div>
<!-- End Footer Form -->

<!-- Footer -->
<div class="dynamicDiv"></div>
<!-- End Footer -->

```

**Step 3: Add the Base Template to the page**

- In Solodev, by default, every empty stml page comes with at least one blue drop zone:

- Insert the basetemplate.tpl in the blue drop zone:

- As you can see, we now have 6 blue drop zones inside the basetemplate.tpl.


**Step 4:  Add the main components to the base template**

- Insert all the components beginning with the top navigation template ending with the footer inside the base template 

- Click Publish. 