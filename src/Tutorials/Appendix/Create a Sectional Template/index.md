# How to create a Sectional template 

A sectional template is a high-level overview of a "section" of your website's content. Think of it as a jumping-off point to areas that fall under a specific content theme or topic. Sectional templates can be used in a variety of ways, but most provide a collection of snippets and links to relevant areas. For example, if a website has a section called "Departments," a sectional template might include an overview along with a list of links to all the departments. Because they are used sparingly, sectional templates generally have a distinct design from your content templates, helping them stand out.

## Sectional Template

As previously noted, a sectional template is a high-level overview of a "section" of your website's content. They are typically reserved for larger sites with more pages to organize and are completely optional. In this lesson, you will learn how to add a sample sectional template from the SpaceJet theme package.

!!!Note:
Many of the instructions in this lesson will repeat steps from the previous <a href="../../../tutorials/websites/add-page-template/#how-to-create-a-homepage-template">homepage template</a>. Make sure to complete that first and refer back as needed. 
!!!

### Setting up your folders and .tpl files

**Step 1**: Under **web files**, click on the **content** folder.

**Step 2**: Using the right-hand menu, click <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a>. Under **content**, add folder called **about**. Click **Submit**, when complete.

<img src="../../../images/about-folder-web-files.png" alt="about folder web files" style=" display: block"></a>

**Step 3**: Now you will need to add a new .tpl file into the folder you have just created. Under **content**, click on the **about** folder and on the right menu, click <a href="/workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file called **about.tpl** and select **Code** for the **File Type**. Once complete, click **Submit**.

<img src="../../../images/about-file-web-files.png" alt="about file web files" style=" display: block"></a>

**Step 4**: You will also need to add a new .tpl file into the folder listed below. Under **templates**, click on the correct folder and on the right menu, click <a href="/workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file under the folder and select **Code** for the **File Type**. Once complete, click **Submit**:

  *	content: **full-width-template.tpl**

<img src="../../../images/full-width-code.png" alt="full-width-code" style=" display: block"></a>

**Step 5**: Click on the **www** folder and on the right menu, click <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a>, and add folder called **about**. Click **Submit**, when complete.

<img src="../../../images/about-folder-www.png" alt="about-folder-www" style=" display: block"></a>

### Adding templates to your dynamic divs

**Step 1**: Click on the **about** folder and on the right menu, click <a href="/workspace/websites/manage-folder/add-page/">Add Page</a>. Create a new page called **index.stml**. Once complete, click **Submit**.

**Step 2**: Just like in the case of homepage, with the **base** folder opened, click in the top dynamic div. Once activated, click on the **base-template.tpl** file. Once complete, click **Publish**.

**Step 3**: Repeat step 3 from the <a href="/tutorials/websites/add-page-template/#how-to-create-a-homepage-template">homepage steps</a>, and add **top-nav.tpl**, and the **footer.tpl** in correct places. Once done, click **Publish**.

!!!**Note**:
This tutorial assumes that you had finished **How to create a homepage template** therefore you have some files and folders in place. In case you didn't follow the <a href="/tutorials/websites/add-page-template/#how-to-create-a-homepage-template">How to create a homepage template</a>, please finish it first. 
!!!

**Step 4**: Repeat step 3 from the <a href="/tutorials/websites/add-page-template/#how-to-create-a-homepage-template">homepage steps</a>, and add the **full-width-template.tpl** with the following code:

```js
<div>
  <div class="dynamicDiv"></div>
  <div class="dynamicDiv"></div>
  <div class="dynamicDiv"></div>
  <div class="dynamicDiv"></div>
  <div class="dynamicDiv"></div>
</div>
```

**Step 5**: Repeat step 3 from the <a href="/tutorials/websites/add-page-template/#how-to-create-a-homepage-template">homepage steps</a>, and add **about.tpl** containing your about page content, for example:

```js 
Here is my about page.
```