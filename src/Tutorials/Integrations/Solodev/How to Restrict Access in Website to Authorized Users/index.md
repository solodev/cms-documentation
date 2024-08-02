# How to Restrict Access in Website to Authorized Users 

In Solodev, you can control user access to your front-end website by implementing restrictions. This article guides you through the process of restricting access based on your website structure. You'll also learn how to create a customized login page and seamlessly link it to your restricted folders, ensuring a secure and tailored user experience.

## Prerequisites 

-	You will need to [add a website](../../../../../workspace/websites/add-website) to your Solodev CMS.
- You will need to be familiar with using [shortcodes](/shortcodes).

## Restrict Access

**Step 1**. Go to the folder you want to restrict and on the right-side menu, click **Update Folder**.

<p><img src="../../../../images/tutorials/restrict-users/tutorials-folder.jpg" alt="Folder View" style="width: 75%;"></p>

**Step 2**. On the modal, open the **Website Properties** accordion.

<p><img src="../../../../images/tutorials/restrict-users/tutorials-update-folder.jpg" alt="Update Folder" style="width: 35%;"></p>

**Step 3**. Go to the bottom of the accordion and check the **"Restrict Access in Website to Authorized Users"** checkbox and click **Submit**.

<p><img src="../../../../images/tutorials/restrict-users/tutorials-checkbox.jpg" alt="Restrict Access in Website to Authorized Users Checkbox" style="width: 35%;"></p>

## Create a login page

**Step 1**. Follow [these steps](../../../../../workspace/websites/folders/add-page/) to create a page. Shortcodes for creating a login page [can be found here](/shortcodes/shortcodes-for-login-forms).

**Step 2**. Go back to the dashboard and on the right-side menu, click on **Update Website**.

<p><img src="../../../../images/tutorials/restrict-users/tutorials-update-website.jpg" alt="Update Website Button" style="width: 30%;"></p>

**Step 3**. On the Update Website modal, click on the **Custom Pages** accordion.

<p><img src="../../../../images/tutorials/restrict-users/tutorials-custom-pages.jpg" alt="Update Website Modal" style="width: 33%;"></p>

**Step 4**. Under the **Login Page** input, browse for the newly created login page and click **Submit**.

<p><img src="../../../../images/tutorials/restrict-users/tutorials-login-page.jpg" alt="Login Page" style="width: 33%;"></p>

## Link the login page

**Step 1**. Place the following [shortcode](/shortcodes/shortcodes-for-login-forms) on each page that needs to be secured.

```js
[contact_form_session]
```

<p><img src="../../../../images/tutorials/restrict-users/tutorials-shortcode.png" alt="Shortcode on file" style="width: 50%;"></p>

!!! Note:
If you go to the front-end of your site before having a login page set and after adding the shortcode, the page is going to show a 404 page.
!!!


**Step 2**. Go to the front-end to check you see the login page when you try to go to the desired restricted page. 

<p><img src="../../../../images/tutorials/restrict-users/tutorials-customer-login.jpg" alt="Login Front-end Page"></p>