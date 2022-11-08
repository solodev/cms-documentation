# Update Website

Solodev has a unique site structure that is designed for easily building efficient, well-organized websites. After your website has been setup in Solodev, your website will be broken into two folders: web files and www.

- The **web files** folder is where all of the individual elements that make up those pages are located. It stores your site templates, content blocks, individual modules, and other components

- The **www** folder is your public website folder; everything in this folder is publicly accessible. This folder is where all of the site's pages are located.

While it is entirely up to you how to name your files, Solodev suggests that the **www** folder mirror your website's main navigation and your **web files** folder be made up of folders for content, navigation, and templates.

Click on the drop-down icon next to the folder to open it and display all its contents:

## Web Files Folder

The web files folder is the one that contains the elements that power your Solodev CMS website. It is typically structured in the manner shown below, with commonly used folders storing various website elements such as HTML and image content, datatable forms and managers, as well as navigational and layout templates for your site.

Although not required for your website to work in Solodev CMS, Solodev recommends organizing your web files folders in this manner:

- **Content:** Used to store content (HTML files, images, text files, etc.)

- **Forms:** Used to store any datatables that power forms

- **Modules:** Used to store any managers related to your website(s) such as calendars (Events, Blog, News, etc.)

- **Templates:** Used to store the various templates that make up the structural foundation for the pages.

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

## Managing Content

You can manage website content by using plenty of options that are available after clicking on web files and www folders.

---

### Update Folder

#### Name

#### Title

#### Description

#### Website Properties

#### Delete

---

### Upload

####

####

####

####

---

### Add Folder

---

### Add File

---

### Add Page

---

### Add Link

---

### Add Group

---

### Add Experiment

---

### Add Scheduler

---

### Add Collection

---

### Stage 

---

### Publish

---

## Redirects



---

## Update Website

Click the blue "Update Website" button on the right to open additional update options.

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

```<body <?php body_class(); ?>>```

To add your own class to this, you can pass an argument in to the function, like so:

```<body <?php body_class( 'my-class' ); ?>>```

This would add a body class of ```my-class``` on each page of your site.

To add body class enter text in text box and submit your changes.

---

## Submit

Click the blue "Submit" button at the bottom right to apply your changes.

!!!Please Note:
Any changes made above will not be applied unless the submit button is clicked.
!!!

