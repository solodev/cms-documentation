# How to add a page to a website

Once you have set up a new website in your Solodev CMS, you can begin creating pages to build out your experience. In this tutorial, you will learn how to add a page to your site. 

## Prerequisites

- You will need to complete the <a href="/tutorials/websites/add-website/">How to add a website</a> tutorial.
- As you are building with this tutorial, you can refer to the <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">Solodev SpaceJet</a>  website to compare your progress.

## How to add a page to a website

**Step 1**: From your main dashboard, click **Websites**. 

**Step 2**: On the Websites dashboard, select the site where you want to add a page.

<img src="../../../images/add-page.png" alt="base-template-templatee" style="width=100%; display: block"></a>

**Step 3**: From the left-hand menu, click on the **www** folder. It should contain 
your index.stml and the “_” folder your created in the previous tutorial. 

<img src="../../../images/add-page-www.png" alt="base-template-templatee" style="width:20%; display: block"></a>

**Step 4**: From the right-hand menu, click **Add Page**. 

<img src="../../../images/add-page-menu.png" alt="base-template-templatee" style="width:20%; display: block"></a>

**Step 5**: In the Add Page window at the right, provide a **Name** for your page. In this example, we are adding a Privacy page from the SpaceJet theme that will feature the site’s privacy statement and disclaimer details. 

!!!**Note**:
Page names should be in all lower-cased letters and numerals, and multiple words should be separated by a hyphen (for example: **my-page.stml**). Also, remember to use the .stml extension. 
!!!

<img src="../../../images/add-page-privacy-1.jpg" alt="base-template-templatee" style="width:40%; display: block"></a>

**Step 6**: Next, add a **Title**, which will appear in your page meta, as well as a **Description** to improve the searchability of your page in the file system. Both are optional, but highly recommended.

**Step 7**: At the bottom of the Add Page window, select an available **Template** for your page from the dropdown menu.

<img src="../../../images/add-page-privacy-2.jpg" alt="base-template-templatee" style="width:40%; display: block"></a>


!!!**Note**:
To add reusable page templates to your website, read the<a href="/tutorials/websites/add-page-template/">How to create a page template</a> tutorial.
!!!

**Step 8**: Once complete, click **Submit**.
 
**Congratulations!** You have just added your first page to your website. From your site’s dashboard, you should now see the page appear under the www folder.

<img src="../../../images/add-page-privacy-added.png" alt="base-template-templatee" style="width:20%; display: block"></a>

## Next steps

- In the following tutorial, you will learn <a href="/tutorials/websites/add-page-template/">how to create a page template</a> that can be reused on new pages across your website.
- If you are ready to add more advanced styling to your pages, you can read <a href="/tutorials/integrations/solodev/how-to-add-scss/">how to add SCSS to your website</a> .















<!--

Once you have set up a new website in your Solodev CMS, you can begin creating pages to build out your experience. In this tutorial, you will learn how to add a page to your site, create reusable page templates with custom elements, and start adding content.  

## Prerequisites

- You will need to complete the <a href="/tutorials/websites/add-website/">How to add a website</a> tutorial.
- For the examples in this tutorial, we will be using the Solodev SpaceJet theme package. <a href="https://github.com/solodev/marketplace/raw/master/depot/themes/solodev-spacejet-2023.zip">Download the zip file</a> to access the images and assets.
- As you are building with this tutorial, you can refer to the <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">Solodev SpaceJet</a>  website to compare your progress.
- When building your own project, it is highly recommended that you have an approved design prototype and sitemap to guide your development.



## Using dynamic divs
Another important concept is the use of dynamic divs. Page templates are composed of dynamic divs – or “dropzones” – where HTML and content can be inserted and arranged in various places on a website page. Dynamic divs work fluidly with the Bootstrap grid system, allowing you to easily insert content once the layout of your page has been created. Here is the simple HTML code to create a dynamic div in Solodev:

```js
<div class="dynamicDiv"></div>
```

Dynamic divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several dynamic divs, allowing you to easily insert HTML content into the page itself.


## Creating .tpl files
When building page templates in Solodev, you will be using .tpl files, also known as template files. This is a common format used by various types of applications to store a website’s page layout and properties. 

One of the key benefits of .tpl files is that they allow you to include multiple types of programming languages such as JavaScript, HTML, and PHP – all in the same file. For example, a .tpl can include HTML for rendering the navigation in a website header, but also include the JavaScript tracking codes necessary for Google Analytics.

In each of the page templates in this tutorial, you will utilize .tpl files to add fixtures such as a header, footer, navigation, and hero.    

## How to save a page as a reusable template

Once you have completed your sectional and content pages, you can save them as reusable templates for use across your website. For the purposes of this lesson, you will use the SpaceJet sectional page that you completed in the previous section.

!!!Note:
Saving your pages as templates allows for easier updates at a global level. 
!!!

**Step 1**: Identify the elements that your pages have in common. For example, in the SpaceJet theme, the reusable elements would be the <a href="/tutorials/websites/add-page-template/#how-to-create-a-base-template">base template</a>, the header, and the footer.

**Step 2**: Click on **www** folder and select **Add Page** from the right-hand menu. Name the page **page-template.stml**. Once complete, click **Submit**.

<img src="../../../images/add-page-template.jpg" alt="add-page-templates" style="display: block"></a>

**Step 3**: Keeping the **page-template.stml** file open, browse to **web files** and open the **templates** folder, which includes the base, content, footer, and navigation folders.

Click on the dynamic div in the main canvas of your newly created **page-template.stml** page. 

<img src="../../../images/dynamic-div-template.jpg" alt="dynamic-div-template" style="display: block"></a>

**Step 4**: The dynamic div will turn light blue, indicating that you can apply files to it. From the left-hand menu, click on the **base-template.tpl** file, so the dynamic div replaced by the base template. Once complete, click **Publish** in the top right corner.

<img src="../../../images/base-template-template.jpg" alt="base-template-templatee" style="display: block"></a>

**Step 5**: On the page, select the top dynamic div, and click on the **top-nav.tpl** file from the left-hand menu.

<img src="../../../images/topnav-template.jpg" alt="topnav-template" style="display: block"></a>

**Step 6**: Finally, select the bottom dynamic div, and click on the **footer.tpl** file from the left-hand menu.

<img src="../../../images/footer-template.jpg" alt="footer-template" style="display: block"></a>

**Step 7**: Once you have all your elements assembled in your template page, you can save the page as a template. 

To do this, use the page manager menu at the right and open the **Advanced** accordion.

<img src="../../../images/advance-accordion.jpg" alt="advance-accordion" style="display: block"></a>

**Step 8**: At the bottom of the Advanced menu, click the **“is Template”** checkbox. Once complete, click **Publish** at the top of the page.

<img src="../../../images/is-template.jpg" alt="is-template" style="display: block"></a>

!!!Note:
If you need to make any adjustments to the sectional template you just created, you can locate it under the **www** folder. Bear in mind that any new changes will not be applied to the pages you previously created using this template.
!!!

**Step 9**: To use your template, go to the location under **www** where you want to create your sectional page, and click **Add Page** on the right-hand menu.

<img src="/../../../images/add-page-update-folder.png" alt="add page update folder" style="width: 20%; display: block"></a>

**Step 10**: On the Add Page modal, give your page a **name** and a **title**. You will also see a dropdown called **Templates**. To use an available template, click on the dropdown and select the **page-template.stml** you just created. Click **Submit**.

<img src="../../../images/add-page-template.jpg" alt="add-page-template" style="display: block"></a>

**Step 11**: Go to your new page and you will see it already contains the elements you added to the **page-template.stml**.

<img src="../../../images/departments.jpg" alt="departments" style="display: block"></a>

-->
