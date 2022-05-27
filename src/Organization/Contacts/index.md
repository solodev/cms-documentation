# Contacts

In Solodev, users can create intranets to manage the majority of their workload from document sharing to storage. Administrators can use contacts to make the intranet accessible to the organization and manage its authoriized users. This document will show you how to assign administrators to manage intranet contacts, invite users to your intranet, set notification preferences for intranet users, and delete users from your intranet. 

---

## Assigning Administrators

**Prerequisites:**
Before configuring an administrator to manage Contacts, users should: 

- Invite at least one user to the Solodev CMS. 

- Create an intranet and secure the pages accessible to authorized users using the `contact_form_session` shortcode. [Learn more about creating intranets](https://cms.solodev.net/resources/#intranets).

- Create a custom shortcode file [Learn more about creating shortcodes](https://cms.solodev.net/resources/#building-custom-shortcodes). 

**Assigning an Adminstrator**

After you've invited at least one user to the Solodev CMS, 

- Click API. 

- Click API Tokens. 

- Click the Add API Key button. 

- In the modal window, type the name or email address of the user and click Submit. 

- Copy the Token value into a text editor. 

- Click the eye icon to reveal the token secret and copy it into a text editor. 

- Open your shortcode file and enter the code below replacing the token and token-secret with their respective values from the text editor: 

`[set_credentials "token", "token-secret"]`

- Click Publish. 


## Adding Contacts

To add contacts the administrator should follow the steps below: 

- Login to Solodev. 

- From the Solodev dashboard click Contacts. 

- Click Add Contact. 

- Enter the contact's First Name, Last Name, Email Address, and Phone Number (optional).

- Click Submit. 



## Managing Contacts

**Updating a contact's personal information**

After adding contacts, administrators can edit or update a contact's personal information. From the Solodev dashboard, 

- Click Contacts. 

- Select the desired contact. 

- Click Modify. 

- Administrators can add a Business Number, Address 1, City, State/Province, Zip Code, Country/Region, Contact Type, and Status. 

- Once the desired fields are populated, click Submit. 

**Resetting a contacts password**

In addition to updating a contacts' information, contact administrators can reset passwords for their contacts with the steps below: 

- From the Solodev dashboard click Contacts. 

- Select the desired contact. 

- Click the Reset Password link. 

- Type in the new password in the New Password input field. 

- Re-enter the new password in the Confirm Password input field. 

**Setting a contact's notification preferences**

As an Contacts administrator you can also set your contacts notification preferences and unify alerts sent from your organization's intranet. 

To do so: 

- From the Solodev dashboard click Contacts. 

- Select the desired contact. 

- Select the notify me via email or text message checkbox. 

- If notifying a contact via text message, type their phone number into the text box and select their carrier. 

- Enter the Notes. 

- Click Update. 


## Deleting a contact

To delete contacts follow the steps below: 

- From the Solodev dashboard click Contacts. 

- Select the desired contact.

- Click the Delete button. 

- Click Submit. 





