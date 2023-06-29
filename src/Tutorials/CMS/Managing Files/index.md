# Managing Files

In the Solodev CMS, a File serves many purposes. Examples of a file includes simple text documents, spreadsheets, PDFs, images, or HTML files. Files are stored in folders and have a different Resource View depending on their file type. Solodev CMS supports four primary file types described below. 

**HTML** – A file type that has a WYSIWYG editor for manipulating HTML content.

**Image** – The most widely used formats on the Web are PNG, GIF and JPEG. 

**Text** – An ANSCII based file type such as **.txt**, **.css**, and **.tpl**. 

**Document** – Word processing document, spreadsheet, PDF, etc. 

This document will show users how to create and modify files in the Solodev CMS system. 

## Step 1 – Adding a File

* In the **Websites** workspace, expand the **web files -> content folder**.
* Open the folder that will contain the file.
* Click the **Add File** button to bring up the Add File window.
* Enter the **Name** and **Title**.
* Choose the file type. 
* Click **Submit** to create and open the file for editing.

Solodev allows users to choose from multiple file types when adding a File in the Websites workspace. 

**HTML** -- standard **.htm** or **.html** file.

**Code** -- a text file that supports a wide range of ANSCII-based file types (**.tpl**, **.js**, **.css**, **.txt**, **.php**). By default, a code file is created with a .tpl extension. To override the default file extension append the desired file extension at the end of the filename (e.g. **filename.php**).

**Form** -- a form (**.frm**) file.

!!!**Note:** 
File names should be lower case and devoid of spaces. 
!!!

### File Actions
After opening a file in Solodev CMS, users are presented with a text-editor and Actions Menu that can be used to edit and update file properties. The options available to users in the Actions Menu are listed below. 

**Actions** | **Description** 
:--- | ---
Draft | Saves a file on the backend without publishing it to the front end.
Stage | Saves the file and publish it to the staging server (if one is being used).
Publish | Saves the file and pushes the file to the live website. 
Copy | Creates a duplicate of a file.
Move | Moves the file to a new location. 
Delete | Removes a file permanently from the CMS.
Add to Group | Adds a file to a file group.
History | A directory of previous versions of a file that can be used to roll back changes.

### Meta Information 
All Solodev files contain a Meta option in the Actions Menu. With the Meta option, users can define meta attributes for each file. Users can optimize their site’s visibility in search engine results with meta keywords and meta data.

**Field** | **Description** 
:--- | ---
Title | The title of the file that will be displayed on both the back and front end. 
Description | A description of the contents of the file.
Rank | The ranking of your file (1, 2, 3) relative to the other files.
Meta Description | A description of the file that will help improve SEO. 
Meta Keywords | Keywords attached to the file that will help improve SEO. 
Publish Date | The date you should like the file to be published.
Expire Date | The date you would like the file to be pulled from your website.
 
## Step 2 – Copying a File

* Expand the relevant directories and open the desired file. 
* Click **Copy**.
* Expand the relevant directories and highlight the destination folder to select it.
* Click **Submit**. The copied file is listed under the parent folder in the directory tree.

## Step 3 – Moving a File

* Expand the relevant directories and open the desired file. 
* Click **Move**.
* Expand the relevant directories and highlight the destination folder to select it.
* Click **Submit**. The file is listed under the destination folder.

## Step 4 – Deleting A File
* Expand the relevant directories and open the desired file.
* Click the **Delete** button to bring up the delete window.
* Click **Submit**. 

!!!Note: 
Deleted Files can be retrieved via the Archive History. 
!!!

## Step 5 – Copying, Moving, and Deleting Files in Bulk

* Expand the relevant directories and open the parent folder to bring up a tab with the folder’s contents.
* Click the check box to select the files.
* Select **Copy/Move/Delete**.
* Select a destination folder to copy or move files.
* Click **Submit**. 

# Supported file types

Developers and content creators can leverage Solodev CMS to create and manage various web files related to various digital projects. 

We will provide a high level overview of the various file types supported in the Solodev CMS system.

## HTML

Hypertext Markup Language (**HTML**) is the markup language used to create the foundation of any web page. In addition to uploading html files to Solodev CMS, users can create and edit html files natively via Solodev’s **WYSIWYG** or **code editor**. HTML files can be inserted into STMLs using Dynamic Div Technology.

**File Extension** | **Description** 
:--- | ---
.html | An acronym for hyper-text-markup-language and the extension for web pages.
.htm | An abbreviation for an HTML file. 

In the Solodev, HTML files are not web pages. HTML pages serve as content blocks that can be organized and embedded into STML pages via Solodev’s Dynamic Div technology. 

## WYSIWYG editor in use for an html file

The source code for the page displayed above can be edited with the code editor by clicking the **Source** button.

## Template Files (.tpl)

Template files allow users to reuse blocks HTML code for each section or page of their website. In addition, template files allow users to harness the power of nested layouts creating drop zones with Dynamic Div technology that can be embedded into STML pages. Templates allow users to utilize more complex html syntax than is possible with the WYSIWYG editor. For more information about template files, please refer to the documents listed below:

* <a href="https://help.solodev.com/en/articles/3578708-create-components-based-upon-sections-of-your-html">Create components based upon sections of your HTML</a>
* <a href="https://help.solodev.com/en/articles/3578709-create-a-base-template">Create a Base Template</a>
* <a href="https://help.solodev.com/en/articles/3578710-create-an-interior-template">Create an Interior Template</a>
* <a href="https://help.solodev.com/en/articles/3578713-create-a-sectional-template">Create a Sectional Template</a>

## Images

Users can place and specify the display and design of several different types of images throughout their websites. The most widely used formats on the Web are **PNG**, **JPEG**, **GIF** and **JPG**. Within Solodev CMS, users can utilize photos to create dynamic image-based galleries, sliders, carousels and much more using Solodev Modules which will be covered in a later tutorial. Solodev supports the image formats listed below. 

**File Extension** | **Description** 
:--- | ---
.png | Portable Network Graphics.
.jpg | Joint Photographic Group.
.jpeg | Joint Photographic Expert Group.
.gif | Graphics Interchange Format.
.bmp | Bitmap.

## Text
Solodev’s text editor supports a wide range for file types for use. Solodev supports the following ANSCII-based file types. 

**File Extension** | **Description** 
:--- | ---
.js | JavaScript. To use javascript files across all pages, reference the file path of the script in the Global Header Insert found in the Update Website Window . 
.css | Cascading Style Sheets. To use css files across all pages, reference the file path in the Global Header Insert found in the Update Website Window.
.php | Hypertext Preprocessor.
.xml files | Extensible Markup Language. Users can leverage xml files to create sitemaps.
.json | JavaScript Object Notation.