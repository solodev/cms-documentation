# Form Overview

Thanks to a form overview page you can manage entries within the form.

><img src="../../../images/form-overview.jpg" alt="form-overview" style="width: 100%; display: block"></a>

!!!Note:
Please remember to mark the entry you want to do sth with before choosing any option below.
!!!

**Name** | **Description** 
:--- | ---
Add | Choose this option to add new entry.
Modify | Choose this option to modify entry.
Import | Choose this option to import entry.
Export | Choose this option to export entry.
WorkFlow |  Choose this option to add WorkFlow.
Delete | Choose this option to delete entry.

---

## Add

Adding an entry is simple process and can be completed in minutes.

><img src="../../../images/form-overview2.jpg" alt="form-overview2" style="width: 70%; display: block"></a>

**Name** | **Description** 
:--- | ---
First Name | Enter first name.
Last Name | Enter last name.
Phone Number | Enter prhone number.
Email Address | Enter email address.
Comments |  Enter comments, if needed.

## Modify

Here you can modify some entry features.

><img src="../../../images/form-overview3.jpg" alt="form-overview3" style="width: 70%; display: block"></a>

**Name** | **Description** 
:--- | ---
Name | Modify name.
Datable Type | Modify datable type. You can choose from: data storage, website module, website form.
Display/Hide Columns | Use this option to display/hide columns. To do that, you need to use arrows places between fields.

### Email Options

Here you can use email options for your datable.

><img src="../../../images/form-overview7.jpg" alt="form-overview7" style="width: 70%; display: block"></a>

**Name** | **Description** 
:--- | ---
Upload Return Page | Choose this option if you want to upload return page from your computer.
Edit | Choose this option if you want to edit document.
Upload Custom Mail | Here you can upload an email to send users upon form submission. 
Notification Type | Here you are able to choose notification type: form submission, submission + custom email or other.
Tickler Email Address | Use this option if you want to send form submissions to an email address you designate. Add the email address and click blue "Add" button.
Email List | In the email list you are able to manage the email addresses, that were added. To remove email address mark it and click "Delete" button. 
Tickler URL | You can keep users informed of the actions of your Datatable at URL. To do that, enter URL.
Auto Assign Users | You can use this option to auto assign users.

### Advanced

Here you can define advanced options.

><img src="../../../images/form-overview8.jpg" alt="form-overview8" style="width: 70%; display: block"></a>

**Name** | **Description** 
:--- | ---
Upload Form | Choose this option if you want to upload the form from your computer.
Edit Form | Choose this option if you want to edit the form.
Design Form | Choose this option to design the form in Page Studio.
Custom Icon | Enter font awesome icon class.
Geo-Coded Fields | Enter comma separated list of fields used to generate latitude and longitude that will be saved in fields named "lat" and "lng" respectively.
Field Name to use in URL | Designate a field name to be accessed via URL. (event_title is default).
Asset Fields | Here you can link a field in your Datable to a public URL.
Post Processing | Here you can write your own PHP to handle form submissions.
Enforce User Permissions | Choose this option to enforce user permissions.
Enable User Groups | Choose this option to enable user groups.
Protect Fields | Choose this option to protect fields.
Flat Entries (subtable values appear as main values) | Choose this option if you want to have the entries flat.
Honeypot Protection | Choose this option to have honeypot protection.
Enable Captcha | Choose this option to enable captcha.
Block Anonymous Submissions | Choose this option to block anonymous submissions.
Sanitize URLS from submissions | Choose this option to sanitize URLS from submissions
Resave All Entries (On Submit) | Choose this option to resave all entries.
Export Module | Choose this option to export forms.
Delete Module | Type DELETE in all-caps in the text field. Click the red "Delete" button to delete your form.

### Table Schema

Here you can manage your database table schema.

><img src="../../../images/form-overview5.jpg" alt="form-overview5" style="width: 70%; display: block"></a>

**Name** | **Description** 
:--- | ---
"+/-" option | Use these options to add/ remove the column.
Name | Use this option to modify column name.
Type | Use this option to modify column type.
Length | Use this option to modify column length.
Allow Null | Mark this option to allow null in the column.
Default | Use this option to make the column default.

### Relationships

Here you can relate the datatable to other modules.

><img src="../../../images/form-overview4.jpg" alt="form-overview4" style="width: 70%; display: block"></a>

**Name** | **Description** 
:--- | ---
"+/-" option | Use these options to add/ remove the relationship.
Relationship Name | Use this option to modify the relationship name.
Type | Here you can choose type. There are three options: one to one, one to many and many to many.
Module | Here you can choose module. To do that you need to click blue "Browse" button and choose the object.
Field | Here you can choose field.

### API Info

Here you are able to find API Info, that can be used in <a href="/admin/api">API section</a> to connect.

><img src="../../../images/form-overview6.jpg" alt="form-overview6" style="width: 70%; display: block"></a>

## Import

Here you can import entry. To do that you need to prepare file in .CSV format.

><img src="../../../images/module-overview3.jpg" alt="module-overview3" style="width: 50%; display: block"></a>

**Name** | **Description** 
:--- | ---
Browse | Select the file from your computer that you want to import.
Mark "Empty DB" | Mark this option if you want to have the database empty.

## WorkFlow

Here you can manage workflow.

><img src="../../../images/form-overview9.jpg" alt="form-overview9" style="width: 70%; display: block"></a>

**Name** | **Description** 
:--- | ---
Add WorkFlow | Choose this option to add workflow.
Save | Choose this option to save the workflow.
Delete | Choose this option to delete the workflow.

### Add WorkFlow

Here you can add WorkFlow.

><img src="../../../images/form-overview10.jpg" alt="form-overview10" style="width: 70%; display: block"></a>

**Name** | **Description** 
:--- | ---
Name | You can add a name here (lowercased and separated with dashes).
Type | Choose type. You can select from: File (Saved, Staged, Published), Task (Completed by user, Completed by user from group), Form Submission.
Select user | You can select user here by using blue "Browse" button.
Assign to | You can select assignee here by using blue "Browse" button.
Tickler Information | Enter the email address here.

## Delete

Here you can delete the entry.

><img src="../../../images/module-overview4.jpg" alt="module-overview4" style="width: 50%; display: block"></a>

**Name** | **Description** 
:--- | ---
Submit | When you get sure that entry/ all entries you want to delete are marked, click the blue "Submit" button to delete entry/entries.

## Confirm 

Click the blue "Submit" button at the bottom right to apply your changes.

!!!Note:
Any changes made above will not be applied unless the submit button is clicked.
!!!