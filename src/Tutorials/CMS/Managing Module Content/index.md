# Managing Module Content

This will provide the user with a high-level overview of leveraging modules to manage their content. 

## Step 1 – Creating a module

* Click **Modules** located in the Workspace section of the Solodev Dashboard.
* Click **Add Module**.
* The user is taken to a page with a list of modules.
* Click the **Install** button on the **Blog Module** to bring up the Module Window.
* Enter the **Name** of the module and click **Browse** to set the installation location.
* Solodev recommends installing modules into **web files -> managers** folder.
* Click **Submit**.
* The module can be found in the **web files -> managers -> Blog Module** folder.

!!!Note: 
The module folder reflects the name of the module. 
!!!

## Step 2 – Adding a module entry

* Open the **web files -> managers -> Blog Module** folder. 
* Click on the **Blog Module** to open it. 
* Click the **Add Entry** button to bring up the Add Entry Blog Module. 
* Enter the **Name** and choose the **Status** of the Blog. 
* Under the **Image Uploads** section, select the **Image Type** and upload the appropriate the **Listing Image**.
* Enter the title, introductory paragraph and blog content in the **Heading Overwrite**, **Intro/Subtitle** and **Body Content** fields located in the **Post Content** Section. 
* Under the **META Data** section, enter the **Meta Title**, **Meta Description**, and **Meta Keywords**. 
* Under the **Advanced** section, enter any custom JavaScript
* Enter a Start and End Date for publication. 
* Select the predefined categories or create a custom category for the post.  
* Select the **Groups** that can access the entry.
* Click **Submit**. 

!!!Note: 
To save the blog entry without publishing it to the front end click Draft. To save the changes and make them publicly available on the front end click Publish. 
!!!

!!!Note: 
Leaving the **End Date** blank makes the blog post permanent. Leaving the **End Date** blank on an event based calendar removes the event 24 hours after the **Start Date**. 
!!!

## Step 3 – Viewing entry details

* Open the Blog Module folder and click Blog Module to open it.
* Click on the pen and paper icon to open the entry in a new tab.

## Step 4 – Exporting module entries

* Open the **Blog Module** folder and click **Blog Module** or the name of the module to open it. 
* Click the checkbox to the left of the **Status** column to select all entries or the checkbox next to each entry to select specific entries. 
* Click **Export**.
* A .csv  file with all the entries and their corresponding columns will be downloaded to the user’s machine.

!!!Note: 
Users can export up to 250 entries at once. Click the select box below all the entries and choose the desired number entries per page before selecting all entries.  
!!!

## Step 5 – Deleting module entries

* Open the **Blog Module** folder and click **Blog Module** to open it.
* Click the checkbox to select the desired entry.
* Click **Delete** to bring up the Delete window for the module.
* Review the warning and click **Submit**. 

## Step 6 – Modifying a module 

* Open the **Blog Module** folder and click **Blog Module** to open it.
* Click **Modify** to bring up the module window.
* Users are given the ability to hide columns from the module schema, define advanced options, modify the table schema, or change the name and type of module. 
* After making the desired changes click **Submit**.

## Step 7 – Delete a module

* Open the folder that contains the module. 
* Click the checkbox to select the **Blog Module**. 
* Click the **Delete** to bring up the Delete modal window. 
* Click **Submit**. 

## Step 8 – Creating a repeater template

The repeater template, although optional, displays all entries in the module used. The repeater is written in Solodev Short codes and refers to the user interface template, printing fields in the form of PHP variables through an $item array.

Shortcode: 
```js
[repeater]
```

Attributes:

**Attributes($atts)** | **Description** 
:--- | ---
[id](required) | ID of the module from which the data is pulling
[limit](required) | 0 starting at the first entry and the second integer specifying the number of entries to display on the page
[order](optional) | Specifies how the repeater will organize the data such as by "start_time desc" which will organize entries by the latest start time first
[type](optional) | Specifies the type of manager that provides the data (default: calendar)
{{field_name}} | Insert the names of your HTML fields inside these curly braces to print out the appropriate variable. You can find the field_name on your Table Schema

* Open the desired folder that will contain the repeater file. 
* Click **Add File** and enter the **Name**, **Title**, and **Description**. 
* Select **Code** for the **File Type**.
* Click **Submit**.
* In the file enter the following code: 
```js
[repeater id="##" limit="0,2"]

<h2>{{event_title}}</h2>

<p>{{blog_intro}}</p>

<a href="{{path}}">{{event_title}}</a>

[/repeater]
```
* Click Publish. 

## Step 9 – Creating a detail template

The display template shows the specifics of an individual entry from a repeater template. An example would be clicking on an individual blog entry from a list of entries to see the entire blog post. The detail page is a subpage of its parent page on the repeater template. 

Shortcode: 
```js
[entry]
```

* Open the desired folder that will contain the detail file. 
* Click **Add File** and enter the **Name**, **Title**, and **Description**. 
* Select Code for the **File Type**.
* Click **Submit**.
* In the file enter the code: 
```js
[entry]

<h1>{{name}}</h1>

<p>{{blog_content}}</p>

[/entry]
```
* Click **Publish**.

## Step 10 – Create a page to house the repeater template

* Expand the **www** folder and open the folder that will contain the repeater page. 
* Click **Add Page**. 
* In the **Add Page** modal and enter the **Name**, **Title**, and **Description** for the page. 
* Click **Submit**.
* Open the page and click the dropzone that will contain the repeater template file. 
* Select the repeater template to insert into the dropzone.
* Click **Publish**.

## Step 11 – Create a page to house the detail template

* Expand the **www** folder and open the folder that will contain the detail page. 
* Click **Add Page**. 
* In the **Add Page** modal and enter the **Name**, **Title**, and **Description** for the page. 
* Click **Submit**.
* Open the page and click the dropzone that will contain the detail template file. 
* Select the detail template to insert into the dropzone. 
* Click **Publish**. 

## Step 12 – Linking the repeater page to the detail page

* Open the **Blog Module** located in the **web files -> managers -> Blog Module** folder.
* Click **Modify**. 
* In the **Modify Blog** modal click the arrow located to the right of **Website Properties**. 
* Click **Browse** in the **Detail Page Template** section. 
* Select the .stml page that contains the detail template. 
* Click **Choose**.
* Click **Browse** in the ***Detail Folder Location***. 
* Click **Choose** to select the folder that contains the news detail page. 
* Click **Submit**. 

!!!Note: 
Solodev recommends creating the detail and repeater templates and pages before adding entries to the blog. If the user had added entries before doing so, the user must open and save each entry for the linking process to take effect.   
!!!