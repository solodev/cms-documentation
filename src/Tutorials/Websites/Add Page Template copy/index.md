# How to create a page template

The page template is the foundation for every page of your website. It typically consists of a header, footer, and <a href="/tutorials/websites/add-page-template/#using-dynamic-divs">dynamic divs</a> for adding content. As the name implies, the base template acts as the foundation for your site and can include your Google Tag Manager includes, tracking codes, scripts, and more. Because they are universal, any changes made to a base template will be reflected across all pages of your site.

## Page Template

The first step in creating page templates in Solodev is to build your base template, which will serve as the foundation for page templates in your website. For the purposes of this tutorial, you will be adding a folder and file structure for building a homepage and content templates as shown in the SpaceJet theme example. 

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

**Step 6**: On your new file paste the sample code below into the editor. The sample includes dynamicDiv classes for the top navigation, hero, content, and footer. Once complete, click **Publish**.

<img src="../../../images/base-template-file.jpg" alt="base template" style="width: 50%; display: block"></a>

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

**Step 7**: Under the **www** folder, click on the **index.stml** file – which will become your <a href="../../../tutorials/websites/add-page-template/#how-to-create-a-homepage-template">homepage</a>. Then, click in the main content area where the two dots are located. 

<img src="../../../images/base-template-dots.jpg" alt="base template" style="width: 50%; display: block"></a>

!!!**Note**:
The two dots are a default indicator on all blank pages and can be removed 
during editing. 
!!!

**Step 8**: After clicking on the two dots, the areas will become active, displaying the dynamic divs as a stack of rectangular boxes set in a light blue color. The name of your base template file will also appear in the upper left. 

<img src="../../../images/base-template-add-base-template.png" alt="base template" style="width: 100%; display: block"></a>

**Step 9**: Next, click on your base template file under the **templates** folder in the left menu. This will apply your base template to the dynamic div. Then, click **Publish** in the upper right corner.

**Step 10**: Once published, your **index.stml** page will refresh, displaying your dynamic divs in white.  You are now ready to build your page templates. 

<img src="../../../images/base-template-base-template-final.png" alt="base template" style="width: 100%; display: block"></a>


!!!**Note**: 
You can repeat this process for all additional page templates in your website.
!!!
