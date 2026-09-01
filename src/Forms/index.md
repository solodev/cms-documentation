# Forms

A form collects information from website visitors -- a newsletter signup, a contact request, an event RSVP -- and stores each submission as an entry you can review later. Every form is one of two types, chosen when you [add it](/forms/add-form/):

<div style="display:flex; gap:1rem; flex-wrap:wrap; margin: 1rem 0 1.5rem;">
  <div style="flex:1 1 260px; border:1px solid #d0d7de; border-radius:8px; padding:1.25rem;">
    <h3 style="margin-top:0;"><a href="/forms/add-form/#contact-form">Contact Form</a></h3>
    <p style="margin-bottom:0;">Submissions save as a <a href="/organization/contacts/">Contact</a> using the CMS's fixed, built-in schema. This is what the Type dropdown shows first.</p>
  </div>
  <div style="flex:1 1 260px; border:1px solid #d0d7de; border-radius:8px; padding:1.25rem;">
    <h3 style="margin-top:0;"><a href="/forms/add-form/#module-form">Module Form</a></h3>
    <p style="margin-bottom:0;">Submissions save to a custom module with a schema you design yourself. This is the familiar, longer-standing pattern most users already know.</p>
  </div>
</div>

!!! Note:
Module Form is still what most users should reach for -- it's the well-tested, familiar pattern. Contact Form is newer; try it out on a low-stakes form before leaning on it for anything important. One thing worth knowing either way: every Module Form creates its own one-off database table, and over time that can produce a sprawl of scattered, inconsistently-governed tables, especially if those tables end up holding personal information (names, emails, phone numbers) outside the centralized Contacts model. Contact Form avoids that specific problem by writing into the one shared Contacts table instead -- worth keeping in mind for any form that's collecting someone's personal details.
!!!

The Forms dashboard lists every form in your Solodev CMS, along with its location and members.

<img src="../images/forms/forms-dashboard.png" alt="Forms dashboard with real forms" style="width: 100%; display: block"></a>

**Name** | **Description**
:--- | ---
[Add Form](/forms/add-form/) | Create a new form.
Location | Filter your list by selecting a location from the dropdown menu at the upper right.
Search | Locate a form in your system by entering its name in the search field at the upper right.

Click a form's name to open it and manage its submissions -- see [Form Overview](/forms/form-overview/).

## Member Permissions

Click on any of the icons under the member column in the table to add, remove, or manage user roles.

<img src="../images/forms/forms-permissions.png" alt="member permissions" style="width: 40%; display: block"></a>

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
