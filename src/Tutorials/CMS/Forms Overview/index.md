# Forms Overview

Forms serve as the gateway for capturing and sending data from one location to another. In Solodev forms are used for two main purposes: 

**Website Forms** – these are forms found on the front end of a website, the most common being a “Contact Us” form that captures site visitors’ data and sends it to its Solodev Module. 

**Module Forms** – these are forms found on the back-end of Solodev to add, edit and delete module entries for display on user-facing websites. 

This document shows the user how to create a custom module, upload a form file to set the table schema of the module, and embed the module to a page to create a website form.

## Step 1 – Creating a Form

* Click **Modules** located in the Workspace section of the Solodev Dashboard.
* Click **Add Module**.
* The user is taken to a page with a list of modules.
* Click the **Install** button on the **Custom Builder** to bring up the Module modal window.
* Enter the **Name** of the module, set the **Type** to Datatable, set the **Display** to Website Form, and click **Browse** to set the installation location.
* Solodev recommends installing modules into **web files -> managers** folder.
* Click **Submit**.
* The module is in the **web files -> managers -> Custom Form** folder.

## Step 2 – Set the Table Schema

* Open the website and navigate to the **web files -> managers -> Custom Form** folder. 
* Open the Module.
* Click **Modify** to bring up the Modify Custom Form modal window. 
* Under the **Datatable Type** choose **Website Form**.
* Click the arrow in the **Advanced** section of the Modal.
* Under **Form Template** section, click **Upload Form**. 
* Choose the desired form and click **Submit** to complete the upload. 
* Click **Modify** to bring up the Modify Custom Form modal window.  
* Under the grid display and the table schema, the user will see that the display columns and the entries in the name field in the table schema match the names of the form columns in the .tpl file that was uploaded.

!!! Note: 
Prior to uploading a custom form, the grid display and Table Schema contain a name column. If the user opens the **custom-form.tpl** file located in the **web files -> managers -> Custom Form folder -> Assets** folder, the file contains some html for a form with one name column. 
!!!

## Step 3 – Embedding a Form into a Page 

* Open the contact-us folder located in **web files -> content** folder. 
* Click the **Add File** button to bring up the Add File Modal.
* Enter the **Name**, **Title** and **File Type**. 
* Click **Submit**. 
* Open the file and type the following line of code: 
```js
[form id=“id#”]
``` 
* Click **Publish**. 
* Open the page that will contain the .tpl form file and select the dropzone.
* Click on the .tpl file to add it to the dropzone. 
* Click **Publish**. 

!!!Note: 
When creating the File set the extension of the file by appending .tpl to the filename. 
!!!

!!! Note: 
To retrieve the form id# for the .tpl file, open the **Custom Form** module located in the **web files -> managers -> Custom Form** folder and document the id# located beside the **ID** field. The value of the id# should be substituted for the id# in the code placed in the .tpl file. 
!!! 

```js
[form id=“id#”]
```
