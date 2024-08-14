# How to create a module in your CMS

In Solodev, modules – sometimes called managers – are tools that simplify the content management process for editors. Modules empower a user to manage various types of content and data without updating code, and can range from very simple to highly complex.

Modules incorporate a set of HTML-based form fields and WYSIWYG editors, powered by backend mapping to specific pages or sections of your website. Some common examples of Solodev modules include web forms, event calendars, photo galleries, hero sliders, landing pages, and more.

In this tutorial, you will learn about the different types of modules in Solodev and how to install a blog module based on the SpaceJet theme. You will also learn how to add both a repeater and detail template to your blog. 

## Prerequisites 

- You will need to complete the <a href="/tutorials/cms/add-website/">How to add a website</a> tutorial.
- You will need to complete the <a href="/tutorials/cms/add-page-template/">How to add a page to a website</a> tutorial. 
- You will need to be familiar with using <a href="/shortcodes/">shortcodes</a>.
- For the examples in this tutorial, we will continue using the <a href="solodev-spacejet-2023.zip" download>Solodev SpaceJet</a> theme package for images and assets.
- As you are building with this tutorial, you can refer to the <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">Solodev SpaceJet website</a>  to compare your progress.

## Types of Solodev modules

While there are a wide range of experiences you can power with a module, there are two basic types in the Solodev system:

- **Calendar**: Ideal for date-based applications such as events, blogs, landing pages, and other custom experiences.

- **Data table**: Perfect for database-dependent applications such as schemas. Data table modules can also be used for publishing information to external channels, expose data via RESTful API, and more. 

## How to install a module in Solodev

As previously mentioned, you will be creating a blog module using the SpaceJet theme, which you can experience via the sample site by clicking Blog in the top navigation. 

The tutorial will cover the main blog page, the blog detail page, and the repeater – which will display your entries on the main Blog page, as well as the homepage. 

**Step 1**: From your main CMS dashboard, click **Modules** in the left-hand menu.

**Step 2**: On the Modules dashboard, click **Add Module** in the upper right corner. 

<img src="/static/images/module-install.png" alt="base template" style="width: 100%; display: block"></a>

**Step 3**: In the Add Module form, give your module a **Name**, then select the module **Type** from the dropdown menu. Finally, choose a **Location** for your module in the CMS, such as the data center. 

<img src="/static/images/add-module.png" alt="base template" style="width: 40%; display: block"></a>

!!! **Note:**
Solodev recommends installing modules into the **web files -> managers folder**.
!!!

**Step 4**: Upload your module's **.tpl** file. If you don't have one yet, you can use this sample code for a basic blog module:

<a href="module.tpl" download>**module.tpl**</a>

Once complete, click **Add**.

!!!**Note**:
You can also add users to your form module. To learn more, read the <a href="/workspace/websites/folders/add-folder/">Add Form</a> article. 
!!!

## How to add entries to your module

In Solodev, a module consists of entries. For example, in the case of a blog module, an entry would reflect a blog post. In this section, you will learn how to add entries to a module's data table. 

!!!**Note**:
Before getting started, locate these images in the theme package that you previously downloaded:

- **SpaceJet-2023-Jet-Image-2.jpg**
- **SpaceJet-2023-Cabin-Image.jpg**
- **SpaceJet-2023-Astronaut-Image.jpg**
!!!

**Step 1:** Go back to your module and click on **Add Entry**.

<img src="/static/images/add-entry.jpg" alt="base template" style="display: block"></a>

!!!Note:
To learn more about Add Entry please <a href="/workspace/modules/module/add-entry/">click here</a>.
!!!

**Step 2:** On the **Add Entry** modal, add the name of your blog post and select **<a href="/workspace/modules/module/add-entry/">publish</a>** from the status dropdown. Click **Submit**.

<img src="/static/images/entry-modal-blog.jpg" alt="base template" style="display: block"></a>

!!!Note:
You can fill out the other input fields in this step if you prefer.
!!! 

**Step 3:** After you have filled all the information required on the Entry screen, click **Save**.

!!!Note
You can use the blog example on the <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">Solodev SpaceJet website</a> for your entries.
!!!

## How to add a repeater template

The repeater template, although optional, displays all entries in the module used. The repeater is written in Solodev shortcodes and refers to the user interface template, printing fields in the form of PHP variables through an $item array.

**Step 1:** From the Dashboard, or from the left navigation, go to your site and under **web files > content** <a href="/tutorials/cms/add-form/">add a folder</a> called **blog**.

**Step 2:**  In that folder, <a href="/workspace/websites/folders/add-file/">add a file</a> for the module repeater called **index.tpl**. 

**Step 3:** Add the code below for the blog repeater and click **Publish**. This code contains shortcodes to show your blog content, for more information on shortcodes, please <a href="/shortcodes/shortcodes-for-modules/">click here</a>.

:::code source="index.tpl" :::

**Step 4:** In the module, locate the repeater ID in the upper left corner. In this example, the repeater ID is “1”.

<img src="/static/images/module-id.jpg" alt="base template" style="display: block"></a>

**Step 5:** Go back to **web files > content**, and under the **blog** folder, click on the **index.tpl** file to access the code. In line 8, replace the repeater ID with the actual ID from your module. As previously noted, “1” is a placeholder. Once complete, click **Publish**.

<img src="/static/images/module-id-repeater.jpg" alt="base template" style="display: block"></a>

**Step 6:** Under **www** add a folder called **blog** and <a href="/tutorials/cms/add-page/">add a page</a> called **index.stml**.

**Step 7:** Add the **index.tpl** to the **index.stml**.

**Step 8:** **Publish** your page.

<img src="/static/images/blog-spacejet.jpg" alt="base template" style="width: 100%; display: block"></a>


