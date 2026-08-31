# Permissions

Permissions is a single searchable index of every User and User Group in the CMS &mdash; a fast way to find who you're looking for without digging through Organization > Users or Organization > Groups separately. It doesn't manage permissions directly; each row links to that user's or group's own real detail page, where roles are actually granted.

<p><img src="../../../images/admin/settings/permissions/permissions-list.png" alt="Permissions list showing User Groups and Users"></p>

**Name** | **Description**
:--- | ---
Filter dropdown | Narrow the list to **All**, **User**, or **User Group**.
Search | Filter by name.
Name | Click a row to open that user's or group's own detail page.
Type | **User** or **User Group**.

Clicking a row takes you to the real management screen for that entity:

**Name** | **Description**
:--- | ---
A User Group row | Opens [Group Overview](/organization/groups/group-overview/), where you manage members and, from the **...** menu, [Permissions](/organization/groups/group-overview/permissions/) &mdash; the group's actual role (View, Stager, Editor, or Admin) per app or folder.
A User row | Opens [User Overview](/organization/users/user-overview/), where you manage that user's own [Permissions](/organization/users/user-overview/permissions/) the same way, plus which groups they belong to.

!!! Note:
A user or group can be assigned one of four roles per app or folder:

- **View:** Can see items and content.
- **Stager:** Can create or modify content, but not publish.
- **Editor:** Can view, create, edit, and publish.
- **Admin:** Full editor control, plus management of group members.
!!!
