# Modify 

Here, you have the ability to customize your module, offering a wide array of options at your disposal. These options are conveniently categorized into various sections, including "Website Properties" for fine-tuning the module's appearance and behavior, "Advanced Options" for advanced settings, "Table Schema" for managing the data structure, and "API Info" for integration purposes. Feel free to explore these sections and tailor your module to meet your specific needs.

<p><img src="/static/images/workspace/module/modify-module.jpg" alt="Modify Module" style="width: 50%;"></p>

**Name** | **Description** 
:--- | ---
Name | Modify the module name.
Type | Assign news, events, blog, photos, landing page, file map, or custom module type using the dropdown menu. <br>You can find more information about module types in [Modules](/modules/#calendar-types).
Upload Form | Choose this option if you want to upload the form from your computer.
Edit Form | Choose this option if you want to edit the form code.
Display/Hide Columns | Use this option to show or hide columns in the module’s table. To do this, simply use the arrows between the fields to move them into the desired columns.

## Website Properties

Map your module to the front end and to categories, and manage your images settings.

<p><img src="/static/images/modules/module-website-properties.jpg" alt="Website Properties" style="width: 50%;"></p>

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

Manage your database table schema by adding or removing fields. The schema defines your module's data structure, including what information can be stored and how it's organized. Choose appropriate field types to optimize storage and stay within database limits.

<p><img src="/static/images/modules/module-table-schema.jpg" alt="Table Schema" style="width: 55%;"></p>

**Name** | **Description** 
:--- | ---
**Name** | The database field/column name. Use descriptive names: single words (`name`, `email`, `message`) or multiple words separated by underscores (`first_name`, `zip_code`, `department_name`). No spaces allowed or dashes.
Type | Defines how data is stored and processed.
Length | Maximum characters or digits allowed. Use the smallest length that fits your data.
Allow Null | Check to allow empty values; uncheck to make the field required.
Default | Value automatically assigned to new records. Leave blank if not needed.
**+/-** | Add (+) or remove (-) columns from the schema.

!!!warning Important
When creating or modifying a Table Schema, be aware of MySQL's 65,535 byte row size limit. If your module has many fields, you can exceed this limit, causing errors when saving entries.

**Choosing the Right Field Type**

Select the most appropriate field type for your data to minimize row size:

**Field Type** | **Best For** | **Size** | **Notes**
:--- | ---
Character | Short to medium text | Variable | Specify length: (64) for short text like names/titles/codes, (255) for longer single-line text. Use the smallest length that fits your data.
Large Text | Long text, paragraphs, HTML/WYSIWYG content | ~10 bytes | Best for descriptions, formatted content, and long-form text.
Blob | Binary data, serialized objects | ~10 bytes | Use for storing complex data structures or binary content.
File | File uploads, file references | Variable | Stores file paths, names, and metadata for uploaded files.
Date Field | Dates without time | 3 bytes | Use for deadlines, start/end dates, birthdays (format: MM/DD/YYYY).
TimeStamp | Dates with time | 4 bytes | Use for event times, created/modified dates (includes date + time).
Integer | Whole numbers, checkboxes, status codes | 4 bytes | Length (1) for yes/no/checkbox fields; (11) for IDs, counts, and general numbers.
numeric | Decimal numbers, currency, percentages | ~8 bytes | Use for budget fields, prices, and monetary values requiring 2 decimal places (up to $999,999.99).
Serial Field | Auto-incrementing primary keys | 4 bytes | Automatically generates unique sequential IDs for each record.
!!!

## API Info

Connect to your Calendar via API. This section provides:
- The API endpoint URL for making requests
- Authentication header format (use your API key)
- Complete list of available fields and their data types

Use this information to integrate with external applications, automate data entry, or build custom solutions. For detailed information, visit the [API section](link-to-api-docs).

 <a href="/admin/api">API section</a> to connect.

<p><img src="/static/images/module-overview8.jpg" alt="module-overview8" style="width: 50%;"></p>

## Advanced Options

Manage or personalize your module, add custom code, export or delete your module, and more. For more information, [click here](/workspace/modules/module/modify/advanced/).