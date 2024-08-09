# Modify 

Here, you have the ability to customize your module, offering a wide array of options at your disposal. These options are conveniently categorized into various sections, including "Website Properties" for fine-tuning the module's appearance and behavior, "Advanced Options" for advanced settings, "Table Schema" for managing the data structure, and "API Info" for integration purposes. Feel free to explore these sections and tailor your module to meet your specific needs.

<p><img src="../../../../images/modules/modify-module.jpg" alt="Modify Module" style="width: 60%;"></p>

**Name** | **Description** 
:--- | ---
Name | Modify the module name.
Type | Assign news, events, blog, photos, landing page, file map, or custom module type using the dropdown menu. <br>You can find more information about module types in <a href="/workspace/modules">Modules</a>.
Display/Hide Columns | Use this option to display/hide columns from the module's table. To do so, use arrows in the middle of the fields.
Confirm | Once you have completed all the fields, click **Submit** to apply your changes.

## Website Properties

Map your module to the front end and to categories, and manage your images settings.

<p><img src="../../../../images/modules/module-website-properties.jpg" alt="Website Properties" style="width: 50%;"></p>

**Name** | **Description** 
:--- | ---
Detail Page Template | Select the page template (stml) you'd like to use to show the details of your entry.
Detail Folder Location | Select the base folder (under www) where your detail page is.
Datatable Category Group | Select the category group you'd like to associate with your calendar.
Tag Template | Select the page template (stml) you wish to use as a template for tags.
Social Media Image | Select the field name of the image you would like to use for social media sharing.
Force Dimension for Uploaded Photos | Ensure precise image dimensions for your website by specifying the width in pixels.
Create Thumbnail for Uploaded Photos | Create thumbnails for the images utilized in your module by specifying the desired width in pixels.

## Table Schema

Manage your database table schema, by adding or removing fields.

<p><img src="../../../../images/modules/module-table-schema.jpg" alt="Table Schema" style="width: 55%;"></p>

**Name** | **Description** 
:--- | ---
Name | Refers to the name of a database field or column.
Type | Select a field type to define how data is stored and how it can be manipulated or processed.
Length | Designates the maximum number of characters or digits that can be stored in a particular field.
Allow Null | Specifies whether a particular database field can contain null values.
Default | Defines a default value that is automatically assigned to a field when a new record is created.
**+/-** | Use these buttons to add / remove the column.

## API Info

Here you can find API Info that can be used in <a href="/admin/api">API section</a> to connect.

<p><img src="../../../../images/module-overview8.jpg" alt="module-overview8" style="width: 50%;"></p>

## Advanced Options

Manage your module, add custom code, and export or delete your module.

<p><img src="../../../../images/module-overview9.jpg" alt="module-overview9" style="width: 50%;"></p>

**Name** | **Description** 
:--- | ---
Upload Form | Choose this option if you want to upload the form from your PC.
Edit Form | Choose this option if you want to edit the form.
Custom Icon | Enter font awesome icon class.
Geo-Coded Fields | Enter a comma-separated list of fields used to generate latitude and longitude that will be saved in fields named "lat" and "lng" respectively.
Field Name to use in URL | Designate a field name to be accessed via URL. (event_title is the default).
Error Document | Designate what contents should show when an event expires by clicking the **Browse** button.
Asset Fields | Link a field in your Calendar to a public URL.
Post Processing | Write your PHP to handle form submissions.
Enable Attachments / Gallery | Choose this option to enable attachments/gallery.
Enforce User Permissions | Choose this option to enforce user permissions.
Enable User Groups | Choose this option to enable user groups.
Protect Fields | Choose this option to protect fields.
Enable Website Mapping | Choose this option to enable website mapping.
Resave All Entries (On Submit) | Choose this option to resave all entries.
Export Module | Choose this option to export the module.
Add Template Map | Choose this option to add a template map - you can define custom attributes for future access. To do that click button "Add Template Map" and enter the name and value then. 
Delete Module | To remove your entry, type DELETE in all caps into the field and click the red Delete button.

## Export Module

Choose this option to export the module.

<p><img src="../../../../images/module-overview10.jpg" alt="module-overview10" style="width: 30%;"></p>

**Name** | **Description** 
:--- | ---
Include manager entries in export | You can mark this option to include manager entries in export.
Continue Export | Choose this option to finalize the export process.