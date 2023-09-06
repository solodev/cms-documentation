# How to add a form to a page

Once you have created or uploaded your form to Solodev, you are now ready to add it to a page. While a form can be added to any page on your website, we are going to use the SpaceJet “Get Started” page, which provides a contact form for visitors. For this application, we are using a Solodev data table form. 

!!!Note:
For this lesson, you will need to create a new folder and page for your contact form. For additional details, refer to the Add Folder and Add Page articles. 
!!!

**Step 1:** From your main dashboard, click on the **www** folder in the left-hand menu.

**Step 2:** Using the right-hand menu, click **Add Folder**. Name the folder **contact**.

<img src="../../../images/add-form-contact-folder.png" alt="add-form-contact-folder" style="width: 20%; display: block"></a>

**Step 3:** In the right-hand menu, click **Add Page**. Name the page **index.stml**, and title it **Get Started**. Once complete, click **Submit**.

<img src="../../../images/add-page1.png" alt="add-page" style="width: 35%; display: block"></a>

!!!Note:
If you saved your sectional or content page as a template, you can select one as an option when creating a new page. For more details, read the Add Page article. 
!!!

**Step 4:** In the left-hand menu, under **web files**, click on the **content** folder. In the right-hand menu, click **Add Folder**. Name the folder **contact**. 

**Step 5:** In the right-hand menu, click **Add File**. Name it **contact.tpl** and under **File Type**, select **Code**. Once complete, click **Submit**.

<img src="../../../images/add-file-contact-tpl.png" alt="add-file-contact-tpl" style="width: 35%; display: block"></a>

**Step 6:** Click on the **contact.tpl** file. In the code editor, add the sample code below for the SpaceJet contact page. Once complete, click **Publish**. 

<img src="../../../images/add-form-page-code.png" alt="add-form-page-code" style="width: 100%; display: block"></a>

```js
<div class="container my-5">
  <div class="test-center">
    <h1><strong>Get Started</strong></h1>
    <p> Talk to one of our crew members to plan your trip </p>
  </div>
  
  [form id="70"]
</div>
```

**Step 7:** Go back to the main dashboard and click on **Forms** in the left menu. You will see your **contact-form** in the central table. 

<img src="../../../images/forms-dashboard-get-id.png" alt="forms-dashboard-get-id" style="width: 100%; display: block"></a>

!!!Note:
In your left menu, you can also click on the forms folder under web files to access your form. 
!!!

**Step 8:** In the data table, locate the **form ID** in the upper left corner. In this example, the form ID is “70.” 

<img src="../../../images/form-id.jpg" alt="form id" style="display: block"></a>

**Step 9:** Go back to **web files**, and under the **contact** folder, click on the **contact.tpl** file to access the code. In line 7, replace the form ID with the actual ID from your for data table. As previously noted, “70” is a placeholder. Once complete, click **Publish**.

<img src="../../../images/add-form-id.png" alt="add-form-id" style="width: 50%; display: block"></a>

**Step 10:** In the **www** folder, click on **index.stml** under the **contact** folder. In the editor canvas, click on the appropriate div and select the **contact.tpl** file to apply it. 

<img src="../../../images/add-form-div.png" alt="add-form-div" style="display: block"></a>

!!!Note:
Remember to add your base template first before adding your form. For a refresher on selecting dynamic divs and applying template files, refer back to <a href="/tutorials/websites/add-page-template/">How to add a page</a> to a website tutorial.
!!!

Once complete, click **Publish**.

After publishing, you will now see your form appear on your page. 

<img src="../../../images/form-page.jpg" alt="form page" style="display: block"></a>
