# Add Page

A page is the basic building block of a website. It acts as a container for your content while providing a general structure based on your <a href="/tutorials/websites/add-page-template/">page template</a> and styling. In this article, you’ll learn how to add a page to your Solodev CMS website in just a few steps.

## STML Files 

While a page is composed of hypertext markup and served in a browser, all pages in the Solodev CMS are given a “.stml” extension. An STML is an HTML file that contains server-side includes (SSI), which are used to generate page-generated content. STML files are processed by the server when a user accesses the related webpage.

!!!Note:
if you're creating an HTML page with a code editor, you need to manually give it an extension of ".stml" before you upload the file to your Solodev CMS.
!!!

## Prerequisites 

*	You need to <a href="/workspace/websites/add-website/">add a website</a> to your Solodev CMS.
*	If you are using an optional theme package with your website such as <a href="https://raw.githubusercontent.com/solodev/marketplace/master/depot/themes/spacejet.zip">Solodev SpaceJet</a>, you should review the theme’s page template options. 

## Add Page

**Step 1:** Under Workspace in the left tree menu, select **Websites**.

<img src="/../../../images/add-page-main.png" alt="add page" style="width: 100%; display: block"></a>

**Step 2:** From the table on the main dashboard, choose an active website. If you do not have one, learn how to <a href="/workspace/websites/add-website/">add a website</a>.

**Step 3:** From the left tree menu, click once on the **www** folder to select it. 

<img src="/../../../images/add-page-tree-menu.png" alt="add page tree menu" style="width: 20%; display: block"></a>

!!!Note:
If your website already contains multiple folders for various sections (such as **blog**), you can click on any folder to add a page to it.
!!!

**Step 4:** Select **Add Page** from the right-side menu.

<img src="/../../../images/add-page-update-folder.png" alt="add page update folder" style="width: 20%; display: block"></a>

**Step 5:** Under the Add Page window, add a page name, title, and description (optional). 

<img src="/../../../images/add-page-modal-details.png" alt="add page modal details" style="width: 40%; display: block"></a>

**Step 6:** Using the **Template** picker, select an available page template to apply to your page. If you do not have any page templates available, learn how to <a href="/tutorials/websites/add-page-template/">add a page template</a>. (Optional)

<img src="/../../../images/add-page-templates.png" alt="add page templates" style="width: 40%; display: block"></a>

**Step 7:** Once complete, click **Submit**. You will be instantly directed to your new page.

<img src="/../../../images/add-page-link-view.png" alt="add page link view" style="width: 100%; display: block"></a>

!!!Note:
If you have a template as part of your website, your page will already be formatted with the template elements. If not, you can use <a href="/tutorials/websites/add-page-template/#dynamic-divs">dynamic divs</a> to add content to a blank page or add custom HTML code to style it. 
!!!

## Next Steps

- <a href="/workspace/websites/manage-folder/addfile/#add-file">Add file</a>
- <a href="/tutorials/websites/add-form/">Add form</a>
- <a href="/workspace/websites/manage-folder/">Manage Website</a>