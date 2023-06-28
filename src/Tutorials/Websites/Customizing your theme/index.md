# Customizing your theme

After building a website with the Lunar XP theme, users can customize the logos, color-scheme, and content to suit their organization’s design and branding needs. To start customizing the website, login to Solodev CMS and click on **Websites** in the menu located to the left of the screen. Then click on the newly created website to get started. 

## Step 1 – Making CSS changes 

Users can make changes to the color scheme of their website by modifying the **_theme-variables.scss** file. 

* To access the file, open the **web files** folder located in the menu on the left side of the screen. 
* Open the **scsss** folder.
* Open the **_theme-variables.scss** file. 
* Modify the theme colors to meet the desired design and branding requirements
* Users can save the changes by clicking **Draft**, **Stage**, or **Publish**.

Users can modify the theme colors to meet their design and branding requirements. 

## Step 2 – Customize the content 

Users can customize the website’s content and layout to their liking by modifying the .html and .tpl files located in the content folder. With Template (.tpl) files users can harness the power of nested layouts, using Dynamic Div technology to create additional drop zones for html content blocks that can be embedded into STML pages.

This example modifies the content for the about page. 

* To access the html and tpl files for the about page click the arrow to the left of the **web files** to open the folder. 
* Then open the **content** directory. 
* Open the **about** directory to view the list of files. 
* To modify the text on the about page click the **about.html** file.
* Users can add HTML content using our WYSWYG editor or using source code. The WYSWYG editor is the default option. 
* To edit or add html content using source code, users can click the **source** button. 
* Users can save the changes by clicking **Draft**, **Stage**, or **Publish**. 

## Step 3  – Customize the layout

With the web files, content and about folders open, users can change the layout on the about page. To do so: 

* Open the **about-boxes.tpl** file to bring up the text editor. 
* Users can add and remove html and dynamic divs to their liking.
* To save changes, click **Draft**, **Publish**, or **Stage**.

Users can view their changes by opening the .stml file associated with the about page. To do so:

* Open the www directory.
* Then open the about directory.
* Click on the index.stml file to open the webpage and view the changes.

## Step 4 – Adding Pages

Users can further customize the prebuilt website to their needs by adding pages. A page in Solodev is a collection of HTML content that is inserted using Dynamic Divs or ‘drop zones’ throughout the page. Users can leverage the drop zones to specify where html content is inserted – further customizing the layout of the page. Pages in Solodev have the file extension .STML. Solodev recommends creating .stml pages in the **www** directory. This example will add a history page to the about folder. 

* Open the **www** folder.
* Click on the **about** folder to open a tab displaying the list of files and folders contained within.
* Click **Add Page** and a form will appear on the right.
* Type in the **Name**, **Title** and **Description** of the page.
* Choose from the available templates. The user can skip this step if they would like to build a custom template for the page and add it later. 
* Click **Submit**.
* The user is taken to the page to start adding content and the page is listed in the about directory.

Please note that the name functions as the url for the page. Solodev recommends using lower case letters for names and separating spaces with dashes or hyphens. The title is what customers will see in the tabs of their browser. Solodev recommends capitalizing titles of webpages. The description is used for internal purposes. 

## Step 5 – Changing the Logo

After building a website using prebuilt themes, users can change the logo after the fact using the **settings.json** file. To do so: 

* Upload a photo to the **_/images** directory located in the **www** folder.
* Once the upload is completed, open the **web files** folder.
* Click the **settings.json** file to open it in the text editor.
* Change the **default path** under **site_logo** or **site_logo_2**.
* To save changes, click **Draft**, **Publish**, or **Stage**.

***Note:* To save the changes without publishing it to the front end click *Draft*. To save and stage the changes, click *Stage*. To save the changes and make them publicly available on the front end click *Publish*.**

