# Forms

A form collects information from website visitors -- a newsletter signup, a contact request, an event RSVP -- and stores each submission as an entry you can review later. Every form is one of two types, chosen when you [add it](/forms/add-form/):

**Name** | **Description**
:--- | ---
**Contact Form** | Submissions are saved as [Contacts](/organization/contacts/) -- the same centralized, fixed-schema record used everywhere else in the CMS (First Name, Last Name, Email, Phone, Company, and so on). This is the default, and the recommended choice for any form that collects personal information.
**Module Form** | Submissions are saved to a custom module you design yourself, with your own schema -- the same schema builder used by [Add Module](/modules/add-module/#calendar-vs-datatable-modules). Use this only for structured, non-personal data that doesn't fit the Contact model.

!!! Note:
Module Form used to be the default, and it's still what a lot of long-time users reach for out of habit. It was moved out of the default position deliberately: every Module Form creates its own one-off database table, and over time that produced a sprawl of scattered, inconsistently-governed tables that often ended up holding personal information (names, emails, phone numbers) outside the centralized Contacts model. If a form is collecting anyone's personal details, use Contact Form -- it keeps that data in one place with consistent permissions, instead of one more ad-hoc table to track.
!!!

The Forms dashboard lists every form in your Solodev CMS, along with its location and members.

<img src="../../../images/forms-dashboard-workspace.png" alt="forms" style="width: 100%; display: block"></a>

**Name** | **Description**
:--- | ---
[Add Form](/forms/add-form/) | Create a new form.
Location | Filter your list by selecting a location from the dropdown menu at the upper right.
Search | Locate a form in your system by entering its name in the search field at the upper right.

Click a form's name to open it and manage its submissions -- see [Form Overview](/forms/form-overview/).

## Member Permissions

Click on any of the icons under the member column in the table to add, remove, or manage user roles.

<img src="../../../images/member-permissions.jpg" alt="member permissions" style="width: 30%; display: block"></a>

**Name** | **Description** 
:--- | ---
Name | Enter the name of a member you want to add to your form.
Role | Assign a View, Stager, Editor, or Admin role to an existing member via the dropdown menus.
Add | Click the orange **"+"** button to add a new member to your form.
Delete |  Click the **"x"** on the right side of the table to remove a member from your form.
Submit | Click **Submit** to apply your changes 

!!! Note:
A form member can be assigned one of four roles:

* **View:** Allows a member to see items and content.
* **Stager:** Enables a member to create or modify content but not publish.
* **Editor:** Gives a member the ability to view, create, edit, and publish.
* **Admin:** Provides full editorial control and management of group members.
!!!
