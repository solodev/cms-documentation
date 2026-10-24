Add, store, and manage API tokens associated with your account, allowing you to authenticate your connection to different apps and services.

Existing tokens are listed in a table on this page, each with its name, API key, status, and version.

<p><img src="../../../images/profile/tokens-list.png" alt="API Tokens list with a real, active token" class="border"></p>

**Name** | **Description** 
:--- | ---
Name | The name you gave the token when you created it.
API Key | The token itself. Hidden by default &mdash; click the eye icon to reveal it, or the copy icon to copy it.
[Status](/profile/security/api-tokens/#change-status) | **Active** or **Inactive**. Click **Make inactive** / **Activate** to toggle it.
Version | The API version this token is scoped to.
[Delete](/profile/security/api-tokens/#delete) | Permanently remove the token.

## Add Token

Click the **Add API Token** to add a new API key.

<p><img src="../../../images/admin/api/add-api-token.png" alt="Add API Token form" class="border" style="max-width: 38%;"></p>

**Name** | **Description**
:--- | ---
Name | Enter a name to identify the API key.

Click **Submit** to create the token.

## Change status

To deactivate an API key, click **Make Inactive** next to it in the API Keys table. To reactivate it, click **Make Active**.

<p><img src="../../../images/admin/api/toggle-token.png" alt="Toggle API Token" class="border"></p>

!!! Note:
Deactivating a token immediately stops it from working &mdash; you won't be able to use that API key until you reactivate it. Deleting a token cannot be undone; once removed, you'll need to create a new one.
!!!

## Delete

To delete an API key, click **Delete** button in the API Keys table.

<p><img src="../../../images/admin/api/delete-token.png" alt="Delete API Token" class="border" style="max-width:46%;"></p>

**Name** | **Description**
:--- | ---
Type DELETE to confirm | Type **DELETE** (all caps) to enable the button.
Delete | Permanently deletes this workflow rule. This can't be undone.