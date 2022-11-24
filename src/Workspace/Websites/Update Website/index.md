# Update Website

Solodev has a unique site structure that is designed for easily building efficient, well-organized websites. After your website has been setup in Solodev, your website will be broken into two folders: web files and www.

><img src="../../../images/websites-update.jpg" alt="websites-update" style="width: 100%; display: block"></a>

**Folder** | **Description** 
:--- | ---
**web files** | This folder is where all of the individual elements that make up those pages are located. It stores your site templates, content blocks, individual modules, and other components.
**www** | This folder is your public website folder; everything in this folder is publicly accessible. This folder is where all of the site's pages are located.


While it is entirely up to you how to name your files, Solodev suggests that the **www** folder mirror your website's main navigation and your **web files** folder be made up of folders for content, navigation, and templates.

Click on the drop-down icon next to the folder to open it and display all its contents.

><img src="../../../images/websites-update2.jpg" alt="websites-update2" style="width: 20%; display: block"></a>

## Web Files Folder

The web files folder is the one that contains the elements that power your Solodev CMS website. It is typically structured in the manner shown below, with commonly used folders storing various website elements such as HTML and image content, datatable forms and managers, as well as navigational and layout templates for your site.

Although not required for your website to work in Solodev CMS, Solodev recommends organizing your web files folders in the manner presented below.

**Element** | **Description**
:--- | ---
**Content** | Used to store content (HTML files, images, text files, etc.)
**Forms** | Used to store any datatables that power forms
**Modules** | Used to store any managers related to your website(s) such as calendars (Events, Blog, News, etc.)
**Templates** | Used to store the various templates that make up the structural foundation for the pages.

## www Folder

The **www** folder should reflect your sitemap. It should contain all of the root files of your website: folders, .stml pages, assets, etc.

Generally speaking, the most important files in the www folder are your .stml files. These are your individual website files that are publicly visible and are served up in a browser as a user visits your website.

These .stml files are built with templates that use Dynamic Divs. A template is used to import common elements to a page such as the header and footer. You then use the Dynamic Divs to include unique page content such as specific text, images, and sidebars.

## The Dynamic between the Web Files and www Folders

The web files and www folders mutually reinforce one another and help each other power the content, code, and pages that make up a website. As such, it is important to understand how these two folders interact.

As has been mentioned, the web files folder is generally used to store all of your website's component pieces. Create HTML files, upload images, create forms, create datatable managers, and store your site's template and theme assets.

The www folder includes various .stml files. STML pages are your visible webpages where disparate components are assembled together to create a complete page. 

Below is the web files folder for the "home" folder:

The web files folder contains several different elements including a template file for a news widget, a template file for an image slider, an .html document containing the base content for the page, and an images folder containing all the graphics that go on the page.

Below is the "index.stml" file which is under the WWW folder and corresponds to the homepage of a website.

The index.stml page is comprised of the base template (the header and footer) and contains a number of Dynamic Divs. As in the example here, the Dynamic Divs are filled with the various elements from the corresponding "home" folder located in the web files folder.

Solodev recommends placing content and page elements in the web files folder and the .stml files in the WWW folder.

---

## Website Content Management

In this section you can find out how to manage content of your website. There are 12 basic options that can be used in relation to website content. They are presented in the screen below.

><img src="../../../images/websites-update4.jpg" alt="websites-update4" style="width: 30%; display: block"></a>

### General

All your web files and www folders content can be viewed after clicking them from the level of the tree on the left.
Content will appear in the form of list. you can easily manage all the files by choosing them from the list and ticking the box near the folder icon. Then some options will appear on the rigt. They are presented on the screenshot below.

><img src="../../../images/websites-update26.jpg" alt="websites-update26" style="width: 20%; display: block"></a>

#### Update Folder

Folders are built in a nested tree hierarchy and serve as containers of all Solodev resources including files and folders to your website(s). Users can modify and customize folders to suit their needs. A folder can be used as a document repository for a company intranet or used to store HTML, TPL, and STML files destined for the web.

After clicking blue "Update Folder" button you will open plenty of features that can be changed. First part is presented on the screen below.

><img src="../../../images/websites-update17.jpg" alt="websites-update17" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**Name** | Name for the folder displayed on the back end. This field is required. It is recommended that the folder name should be lowercase, devoid of spaces and special characters. Use dashes and underscores to represent spaces. Type a name in the text box.
**Title** | Name of the folder displayed on the front end. Type a title in the text box.
**Folder Description** | Description of the folder displayed on the front end. Type a folder description in the text box.

After making changes submit them by clicking blue "Submit" button.

Next part of the folder features you can manage is gathered under the "Website Properties". Use this part to set folder properties and control how it works with websites. 

><img src="../../../images/websites-update18.jpg" alt="websites-update18" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**Menu Name** | Name of a folder in a menu navigation. To add it, type a menu name in the text box.
**Rank** | Rank order of the folder when displayed in the menu navigation. To add it, type a rank in the text box. **Lowest number listed first.**
**Layout** | Layout is predefined templates. The way the contents of a folder will be displayed in the navigation is based on it. To choose layout expand the list and choose layout you want.
**Levels** | Level says how deep the elements in the folder will be displayed in the navigation. To choose level expand the list and choose level you want.
**Datable Category Group ID** | This is the ID for a group of categories. To add it click blue "Browse" button and choose file. Then click blue "Choose" button.
**Datable Category ID** | This is the ID for a specific category. To add it type a datable category ID in the text box.
**Image** | You can add an image to the folder. It allows to query the image associated with the folder. To add an image, click blue "Upload Image" button and choose an image from your computer.
**Include in Website Navigation** | Check this option to structure folder to display in navigation menus.
**Restrict Access in Website to Authorized Users** | Check this option to protect content with a password.

After making changes submit them by clicking blue "Submit" button.

Click on the "Advanced" drop-down option to expand the delete function. Type DELETE in all-caps in the text field and click the red "Delete" button to delete your folder.

><img src="../../../images/websites-update19.jpg" alt="websites-update19" style="width: 40%; display: block"></a>

!!! Alert:
Deleting a folder will permanently remove the folder and all of its content and cannot be undone.
!!!

#### Copy

To copy your item to another folder, select the folder you want to copy the item to and click blue "Submit" button.

><img src="../../../images/websites-update27.jpg" alt="websites-update27" style="width: 40%; display: block"></a>

#### Move

To move your item to another folder, select the folder you want to move the item to and click blue "Submit" button.

><img src="../../../images/websites-update28.jpg" alt="websites-update28" style="width: 40%; display: block"></a>

#### Delete

To delete item mark an item that you want to delete and click blue "Submit" button.

><img src="../../../images/websites-update29.jpg" alt="websites-update29" style="width: 40%; display: block"></a>

!!! Alert:
Deleting an item will permanently remove the item and cannot be undone.
!!!

### Upload

You can upload a file from your computer. Solodev CMS allows users to upload four primary file types(HTML, Text, Image, and Document). To do that click the blue "Browse" button and choose file.

><img src="../../../images/websites-update8.jpg" alt="websites-update8" style="width: 40%; display: block"></a>

!!!Note:
Solodev recommends uploading tpl files and html files to the web files -> content folder, **web files -> templates folder**, or **web files -> forms folder**. Images and script files (for e.g. .php, .css, and .js files) should be uploaded to an assets folder located in the **www directory** (for e.g. **www -> _ -> css or www -> _ -> scripts**).
!!!

Once the files are selected, you can upload the files using two options.

**Option** | **Description**
:--- | ---
Upload + Save |  Option to upload and save files without publishing them.
Upload + Stage | Option to save the file and publish it to a staging server.

!!!Note:
Users can upload one or more files by clicking the browse button or dragging the files into the box.
!!!

### Add Folder

As it was mentioned in Update Folder section, folders are built in a nested tree hierarchy and serve as containers of all Solodev resources including files and folders to your website(s).

To add folder you need to fill out the formular below.

><img src="../../../images/websites-update11.jpg" alt="websites-update11" style="width: 40%; display: block"></a>

Follow the steps in the table.

**Element** | **Description**
:--- | ---
**Name** | To add it, type a name in the text box.
**Title** | To add it, type a title in the text box.
**Description** | To add it, type a description in the text box.

After passing all the steps submit your changes by clicking blue "Submit" button.

### Add File

In the Solodev CMS, a File serves many purposes. Examples of a file includes simple text documents, spreadsheets, PDFs, images, or HTML files. Files are stored in folders and have a different Resource View depending on their file type. Solodev CMS supports four primary file types described below.

**File Type** | **Description**
:--- | ---
**HTML** | A file type that has a WYSIWYG editor for manipulating HTML content.
**Image** | The most widely used formats on the Web are PNG, GIF and JPEG.
**Text** | An ANSCII based file type such as .txt, .css, and .tpl.
**Document** | Word processing document, spreadsheet, PDF, etc.

To add file you have to fill out formular presented in the screenshot below.

><img src="../../../images/websites-update10.jpg" alt="websites-update10" style="width: 40%; display: block"></a>

Follow steps in the table.

**Element** | **Description**
:--- | ---
**Name** | To add it, type a name in the text box.
**Title** | To add it, type a name in the text box.
**File Type** | To select file type, expand the file types list and choose one.

After passing all the steps submit your changes by clicking blue "Submit" button.

You can open your file from the level of the tree on the left. You will be redirected to the page where you can manage your file.

><img src="../../../images/websites-update38.jpg" alt="websites-update38" style="width: 100%; display: block"></a>

In the table you can find descriptions of actions from Actions Menu that can be used to edit and update file properties.

**Action** | **Description**
:--- | ---
**Draft** | Saves a file on the backend without publishing it to the front end. 
**Stage** | Saves the file and publish it to the staging server (if one is being used). 
**Publish** | Saves the file and pushes the file to the live website. 
**Copy** | Creates a duplicate of a file. 
**Move** | Moves the file to a new location. 
**Delete** | Removes a file permanently from the CMS.
**Add to Group** | 	Adds a file to a file group. 
**History** | A directory of previous versions of a file that can be used to roll back changes.

#### Draft

To use this option just click "Draft" button.

#### Publish

To use this option just click "Publish" button.

#### Add to Group

To add file to group fill out the formular below.

><img src="../../../images/websites-update40.jpg" alt="websites-update40" style="width: 40%; display: block"></a>

To do that, follow the steps in the table.

**Element** | **Description**
:--- | ---
**File** | Choose file you would like to add to the group.
**Start Date** | Select when you would like your file published. 
**End Date** | Select when you would like your file removed. 

After passing all the steps submit your changes by clicking blue "Submit" button.

#### History

To check history of changes click "History" button. 

><img src="../../../images/websites-update41.jpg" alt="websites-update41" style="width: 70%; display: block"></a>

#### Copy

To copy your file to another folder, select the folder you want to copy the file to and click blue "Submit" button.

><img src="../../../images/websites-update42.jpg" alt="websites-update42" style="width: 40%; display: block"></a>

#### Move

To move your file to another folder, select the folder you want to move the file to and click blue "Submit" button.

><img src="../../../images/websites-update43.jpg" alt="websites-update43" style="width: 40%; display: block"></a>

#### Delete

To delete file mark an file that you want to delete and click blue "Submit" button.

><img src="../../../images/websites-update44.jpg" alt="websites-update44" style="width: 40%; display: block"></a>

!!! Alert:
Deleting a file will permanently remove the file and cannot be undone.
!!!

#### Meta Information

All Solodev files contain a Meta option in the Actions Menu. With the Meta option, users can define meta attributes for each file. Users can optimize their site’s visibility in search engine results with meta keywords and meta data.

To open Meta Information click on information icon on the right.

Meta Information is divided into three subsections: About, Meta and Advanced.

><img src="../../../images/websites-update45.jpg" alt="websites-update45" style="width: 40%; display: block"></a>

In section About you can manage features presented in the screenshot below.

><img src="../../../images/websites-update46.jpg" alt="websites-update46" style="width: 40%; display: block"></a>

To change any of features follow the steps in the table.

**Element** | **Description**
:--- | ---
**Title** | The title of the file that will be displayed on both the back and front end. To change it, type it in the text box.
**Description** | A description of the contents of the file. To add it, type it in the text box.

After making changes submit them by clicking blue "Submit" button.

Next subsection is Meta. Below is the form that relates to this section

><img src="../../../images/websites-update47.jpg" alt="websites-update47" style="width: 40%; display: block"></a>

To change any of features follow the steps in the table.

**Element** | **Description**
:--- | ---
**Rank** | The ranking of your file (1, 2, 3) relative to the other files. To add it, type it in the text box.
**Meta Description** | A description of the file that will help improve SEO. To add it, type it in the text box.
**Meta Keywords** | Keywords attached to the file that will help improve SEO. To add it, type it in the text box.

After making changes submit them by clicking blue "Submit" button.

The last subsection is Advanced. Below is the form that relates to this section

><img src="../../../images/websites-update48.jpg" alt="websites-update48" style="width: 40%; display: block"></a>

To change any of features follow the steps in the table.

**Element** | **Description**
:--- | ---
**Publish Date** | The date you should like the file to be published. To add it, type it in the text box.
**Expire Date** | The date you would like the file to be pulled from your website. To add it, type it in the text box.s

After making changes submit them by clicking blue "Submit" button.

### Add Link

You can add URL link to your website. To do that follow the steps in the table.

><img src="../../../images/websites-update12.jpg" alt="websites-update12" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**Name** | To add it, type a name in the text box.
**Fully Qualified Link Address** | Add link address here. To do that, type address in the text box.
**Open In New Window** | Tick this option to allow opening page in the new window.
**Rank** | Rank order of the URL when displayed in the menu navigation. To add it, type a rank in the text box. **Lowest number listed first.**
**Description** | To add it, type a description in the text box.

After passing all the steps submit your changes by clicking blue "Submit" button.

You can add, modify and delete your links. To do that open added link from the level of the tree. You will be redirected to the page presented in the screenshot below.

><img src="../../../images/websites-update34.jpg" alt="websites-update34" style="width: 100%; display: block"></a>

To modify link implement changes and click "Save" button.

To copy your link to another folder, select the folder you want to copy the link to and click blue "Submit" button.

><img src="../../../images/websites-update36.jpg" alt="websites-update36" style="width: 40%; display: block"></a>

To move your link to another folder, select the folder you want to move the link to and click blue "Submit" button.

><img src="../../../images/websites-update35.jpg" alt="websites-update35" style="width: 40%; display: block"></a>

To delete link mark link that you want to delete and click blue "Submit" button.

><img src="../../../images/websites-update37.jpg" alt="websites-update37" style="width: 40%; display: block"></a>

!!! Alert:
Deleting link will permanently remove the link and cannot be undone.
!!!

### Add Group

File Groups are a resource for managing and displaying groups of related files (images, documents, etc) on a Web page. Users can leverage file groups to categorize and display files based on certain criteria or similarity. Administrators commonly leverage File Groups to display a document list with set permissions that grant users access to files in the File Group. Authorized users can add or edit files in the File Group without accessing the web page directly. 

A file group can be used to: 

- Display a list of files of a file group and their content on the front-end of a website.
- Create an internal document repository where users can upload and share an array of file types grouped by type, category, relevance, date, etc.

To add group follow steps in the table.

><img src="../../../images/websites-update13.jpg" alt="websites-update13" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**Name** | To add it, type a name in the text box.
**Title** | To add it, type a title in the text box.
**Description** | To add it, type a description in the text box.

After passing all the steps submit your changes by clicking blue "Submit" button.

You can add, modify and delete entry.

><img src="../../../images/websites-update33.jpg" alt="websites-update33" style="width: 100%; display: block"></a>

You can add file to the group by clicking button "Add Entry".

To create entry follow the steps from the table.

><img src="../../../images/websites-update30.jpg" alt="websites-update30" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**File** | Choose file you would like to add to the group.
**Start Date** | Select when you would like your file published. 
**End Date** | Select when you would like your file removed. 

After passing all the steps submit your changes by clicking blue "Submit" button.

You can modify entry by clicking button "Modify Entry".

To modify entry follow the steps from the table.

><img src="../../../images/websites-update31.jpg" alt="websites-update31" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**Name** | To add it, type a name in the text box.
**Title** | To add it, type a title in the text box.
**Description** | To add it, type a description in the text box.

After making changes submit them by clicking blue "Submit" button.

You can delete entry by clicking button "Delete".

><img src="../../../images/websites-update32.jpg" alt="websites-update32" style="width: 40%; display: block"></a>

To delete entry mark file that you want to delete and click blue "Submit" button.

!!! Alert:
Deleting a file from a group will permanently remove the scheduler and cannot be undone.
!!!

To completely remove a group follow the steps from the section General.

### Add Experiment

A/B Testing is the most essential tool marketers can use to target visitors by testing their responses to varying content. Experiments allows users to test different iterations of content on different pages and track the iterations receiving the most conversions and engagement. It gives an opportunity to experiment with different pieces of content on a page, the copy on a page, images on page, different hero iterations and sliders.

To add experiment follow the steps from the table.

><img src="../../../images/websites-update14.jpg" alt="websites-update14" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**Name** | To add it, type a name in the text box.
**Google Experiment ID** | Users can send conversion data to google optimize, which is integrated with google analytics, for granular tracking. To leverage Google Optimize, create a new experiment that mimics the variations configured in Solodev and place the Google Optimize key in the  field.

After passing all the steps submit your changes by clicking blue "Submit" button.

Now you can open experiment from the level of tree from the left. You will be redirected to the page as in the screenshot below.

><img src="../../../images/websites-update24.jpg" alt="websites-update24" style="width: 100%; display: block"></a>

Here you can add content to your experiment. to do that, click blue "Browse" button, choose file and click bllue "Choose" button.

Your item has been added. To configure the content, enter the name, adjust the frequency and click the checkbox located under the Active column. Then you should click button "Save".

To remove item, click orange "-" button.

To disable iteration uncheck the field located under the Active column.

!!!Note:
**Conversion rate**  = (Conversions or goals achieved / Total visitors) * 100. For example: website got 30,000 visitors during a chosen time frame; of those 30,000 visitors, 5,000 completed a transaction. Then, your conversion rate is 16.67%.
!!!

To completely remove an experiment follow the steps from the section General.

### Add Scheduler

Solodev provides the ability to schedule publication of content to a live website in advance. Users can leverage the Scheduler tool to remove and replace the content of a webpage based on a predefined schedule. For example, users can create five different variations of the web page content, upload them to Solodev Scheduler, and set the dates to replace the content along with the frequency of replacement. After setting these parameters, Solodev automates the entire process. 

Schedulers can be used for two main purposes: 

- Set specific dates and times for the publication of content. 
- Display a series of announcements on a web page at a given time. 

To create collection follow the steps from the table.

><img src="../../../images/websites-update15.jpg" alt="websites-update15" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**Name** | To add it, type a name in the text box.
**Title** | To add it, type a title in the text box.
**Description** | To add it, type a description in the text box.

Scheduler has been created. You can open it from the level of tree from the left.

After passing all the steps submit your changes by clicking blue "Submit" button.

You can add, modify and delete entry.

><img src="../../../images/websites-update21.jpg" alt="websites-update21" style="width: 100%; display: block"></a>

You can add entry by clicking button "Add Entry".

To create entry follow the steps from the table.

><img src="../../../images/websites-update20.jpg" alt="websites-update20" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**Name** | To add it, type a name in the text box.
**File** | Choose file which the scheduler will apply to.
**Start Date** | Choose start date.

After passing all the steps submit your changes by clicking blue "Submit" button.

You can modify entry by clicking button "Modify Entry".

To modify entry follow the steps from the table.

><img src="../../../images/websites-update22.jpg" alt="websites-update22" style="width: 40%; display: block"></a>

**Element** | **Description**
:--- | ---
**Name** | To add it, type a name in the text box.
**Title** | To add it, type a title in the text box.
**Description** | To add it, type a description in the text box.

After making changes submit them by clicking blue "Submit" button.

You can delete entry by clicking button "Delete".

><img src="../../../images/websites-update23.jpg" alt="websites-update23" style="width: 40%; display: block"></a>

To delete entry mark scheduler that you want to delete and click blue "Submit" button.

!!! Alert:
Deleting a scheduler will permanently remove the scheduler and cannot be undone.
!!!

### Add Collection

Category pages allow your organization to optimize SEO and enhance overall user experience. In Solodev developers can attach category pages to modules by attaching them to category collections and attaching their collection of categories to the module itself. Before you can create a category, you must first create a collection.

><img src="../../../images/websites-update16.jpg" alt="websites-update16" style="width: 40%; display: block"></a>

To create collection follow the steps from the table.

**Element** | **Description**
:--- | ---
**Name** | Name of the collection is required. It is recommended that the collection name should be lowercase, devoid of spaces and special characters. Use dashes and underscores to represent spaces. To add it, type a name in the text box.
**Title** | To add it, type a title in the text box.
**Description** | To add it, type a description in the text box.
**Page Template** | These are pages that can be re-used to build out more pages. To add page template to your collection click blule "Browse" button and choose item. Page template will serve as an index for Datatable Categories.

After passing all the steps submit your changes by clicking blue "Submit" button.

### Stage

This option is used to publish content to a staging server. To do that, click the blue "Stage" button". 

### Publish

### Permissions

To learn more about permissions, go to <a href="/workspace/websites-overview/permissions">permissions page</a>.

><img src="../../../images/websites-update9.jpg" alt="websites-update9" style="width: 40%; display: block"></a>

---

## Redirects

URL/page redirects can help direct users away from pages that no longer exist or to more preferred locations. To do that, you need to create an .htaccess file with the creation of each website. To do that open redirects page. 

><img src="../../../images/redirects.jpg" alt="redirects" style="width: 30%; display: block"></a>

After clicking redirects page you will open formular where you are able to enter the code.

><img src="../../../images/redirects2.jpg" alt="redirects2" style="width: 70%; display: block"></a>

If the administrator has created and customized their error 404 document, enter the following lines of code to direct the browser to the error document:

```
RewriteEngine On
RewriteBase /
.htaccess file
ErrorDocument 404 /404.stml
```

Then you should enter the 301 redirect in the following format: 

```
Redirect 301 /old-page.stml http://www.mydomain.com/new-page.stml
```

The administrator can add additional 301 redirects by placing each redirect on its own line in the .htaccess file. 

To save your changes click blue "Submit" button.

To check history of changes click "History" button. 

><img src="../../../images/redirects3.jpg" alt="redirects3" style="width: 70%; display: block"></a>

---

## Settings

To learn more about website settings, go to <a href="/workspace/websites-overview/settings">settings page</a>.

><img src="../../../images/redirects.jpg" alt="redirects" style="width: 30%; display: block"></a>

---

## Update Website

Click the blue "Update Website" button on the right to open additional update options.

><img src="../../../images/websites-update3.jpg" alt="websites-update3" style="width: 40%; display: block"></a>

### Site Title

Here you can add site title. Enter text in text box and submit your changes.

### Twitter Handle

A handle on Twitter is username and begins with the "@". It appears at the end of your account URL.

To add Twitter handle enter handle in text box and submit your changes.

### Facebook URL

To add Facebook URL enter URL in text box and submit your changes.

### Global HTML Tag

All HTML documents must start with a <!DOCTYPE> declaration.

Example:

```
<!DOCTYPE html>
<html>
<head>
<title>Title of the document</title>
</head>

<body>
The content of the document......
</body>

</html>
```

To declare your DOCTYPE enter text in text box and submit your changes.

### Global Header Insert

To add global header insert enter text in text box and submit your changes.

### Body Class

The body class in is a class or series of classes that are applied to the HTML body element. This is useful for applying unique styles to different areas of a WordPress site as body classes can be added conditionally.

The body class is normally included in a theme using the following code:

```
<body <?php body_class(); ?>>
```

To add your own class to this, you can pass an argument in to the function, like so:

```
<body <?php body_class( 'my-class' ); ?>>
```

This would add a body class of ```my-class``` on each page of your site.

To add body class enter text in text box and submit your changes.

---

## Permissions

To learn more about permissions, go to <a href="/workspace/websites-overview/permissions">permissions page</a>.

---

## Confirm

Click the blue "Submit" button at the bottom right to apply your changes.

!!!Please Note:
Any changes made above will not be applied unless the submit button is clicked.
!!!

