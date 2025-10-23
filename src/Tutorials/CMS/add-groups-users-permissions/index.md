Admins (or "super users") in Solodev can add users and groups, assign permissions to unlock access to key CMS areas, and control what each user can do within the platform.

## Step 1: Add a Group

Start by creating a group to organize your users:

1. Navigate to Groups in the left navigation under the Organization section

<p><img src="/static/images/navigation/navigation-groups.jpg" alt="Groups link selected in the navigation" style="width: 10%;"></p>

2. Click Add Group on the right side

3. Enter a group name and optional description

4. Click <span class="text-blue">**Submit**</span>

!!!warning **Note**
Solodev CMS includes a pre-configured Default group that has no permissions assigned. Users added to this group won't have access to anything until you grant permissions.
!!!

## Step 2: Assign Group Permissions

After creating your group, assign permissions to control access:

1. Go to your newly created group in the Groups section.

2. Click **Manage** 

3. Select the desired views and roles to grant access to users in this group.

!!! Roles in Solodev:
- **View:** Allows members to see items and content.
- **Stager:** Create or modify content but not publish.
- **Editor:** View, create, edit, and publish content.
- **Admin:** Full control, including managing group members.
!!!

### Assign Access to Specific Areas

You can grant group access to Websites, Modules, or specific Folders. Navigate to the area you want to grant access to and follow these steps:

**For Websites:**

1. Navigate to Websites in the left-hand menu

<p><img src="/static/images/navigation/navigation-websites.jpg" alt="Websites link selected in the navigation" style="width: 10%;"></p>

2. Select the specific Website

3. Click **Permissions** from the dropdown menu

4. Enter the Group Name, choose the Role, and click <span class="text-orange">**orange + button**</span>

5. Click <span class="text-blue">**Submit**</span>

**For Folders:**

1. Navigate to the specific folder

2. Click **Permissions**

3. Enter the Group Name, choose the Role, and click <span class="text-orange">**orange + button**</span>

4. Click <span class="text-blue">**Submit**</span>

**For Modules:**

1. Navigate to the specific module

2. Click **Permissions**

3. Enter the Group Name, choose the Role, and click <span class="text-orange">**orange + button**</span>

4. Click <span class="text-blue">**Submit**</span>

!!! **Best Practice:** 
Always assign permissions to groups rather than individual users. This makes managing access easier as your team grows.
!!!

## Step 3: Invite or Add Users to the Group

Once permissions are set, you can invite new users or add existing users to the group:

### Invite New Users

1. Click **Users** in the left navigation under the Organization section

<p><img src="/static/images/navigation/navigation-users.jpg" alt="Users link selected in the navigation" style="width: 10%;"></p>

2. Click **Invite User** on the right side

3. Enter the email address(es) of the user(s) to invite

4. Assign them to the group you created

5. Optionally customize the invitation email message

6. Click **Submit** to send the invite

!!!warning Note:
Ensure your CMS is configured to send emails. Learn more about [email settings](/admin/settings/config/#email).
!!!

### Add Existing Users

1. Click **Groups** in the left navigation

2. Click on **Add User(s)**

3. Enter the User(s) Name, choose the Role, and click <span class="text-orange">**orange + button**</span>

4. Click <span class="text-blue">**Submit**</span>

## Step 4: Verify User Access

After adding users, verify they have the correct access:

1. Navigate to **Users** in the left navigation

2. Select the user and use the **Login as User** feature to view the CMS from the user's perspective

3. Confirm the user sees the correct access in the main navigation

4. Adjust permissions if needed

## Summary

By following these steps, you've:

- Created a group
- Assigned permissions at the group level (not individual users)
- Added users to the group
- Verified their access

You can always adjust permissions as your team or project evolves. Remember: group-level permissions make management easier and more scalable!