# How to add a form to a page

In Solodev, you can add a <a href="/workspace/forms/">form</a> to a web page to collect information for almost any kind of application. This includes contact forms, order forms, newsletter subscriptions, product registrations, and more. In this tutorial, you will learn the different ways to create a form using Solodev and how to add it to your web page.  

## Prerequisites

-	You will need to <a href="/workspace/websites/add-website/">add a website</a> to your Solodev CMS.
-	After selecting a website, you will need to <a href="../../../workspace/websites/manage-folder/add-page/">add a page</a> for your form.
- You will need to be familiar with using <a href="/shortcodes/">shortcodes</a>.

## Form options

From the main dashboard, there are three ways to add a form to Solodev:

*	**Form Studio:**
Solodev’s drag-and-drop Form Studio lets you build your own custom forms with granular control – without touching a line of code. Instantly add text, images, input fields, radio buttons, and more. Save your form and apply it to your page in minutes.  

* **Upload Template:**
If you already have an existing template for your form, you can upload it directly as a .tpl file into Solodev and apply it to your page. 

* **Upload HTML:**
If you prefer working in raw HTML, you can code your own form and upload to Solodev.

## Building a form with Form Studio

Form Studio is a built-in drag-and-drop WYSIWYG editor that allows you to directly compose your own custom form. The visual editor consists of a left toolbar for dragging layout, content, and form components onto the canvas in the center. <a href="/tutorials/websites/add-form/#building-a-form-with-form-studio">See table below for details</a>. 

The right toolbar enables you to control the text, styling, and specific details of the components in your form. Under the **Settings** icon, you can adjust your form header, links, and other details. 

<img src="../../../images/form-settings.png" alt="form settings" style="width: 25%; display: block"></a>

Using the **Pencil** icon, you can customize attributes such as layout, position, border radius, size, typography, and background components by entering values or clicking/dragging arrows. The right toolbar also provides **Body** attributes that detail the components in each div. 

<img src="../../../images/form-body.png" alt="form body" style="width: 25%; display: block"></a>

**Step 1:** From your main CMS dashboard, click **Forms** in the left-hand menu.

**Step 2:** On the main forms dashboard, click **Add Form**. 

<img src="../../../images/forms-dashboard1.png" alt="form upload" style="width: 100%; display: block"></a>

**Step 3:** First, provide a name to your form in the Name field. For this example, call it **contact-form**.

**Step 4:** Pick an install location in Solodev by clicking **Browse**. Select an object and click **Choose**.

!!!Note:
It is recommended that you save your form in the forms folder under web files, so you have easy access to the form data table. 
!!!

<img src="../../../images/form-choose-object.jpg" alt="form choose object" style="width: 30%; display: block"></a>

**Step 5:** Use the drag-and-drop Form Studio tools to build your form. As with previous lessons, you can use the SpaceJet theme sample as a guide for creating the fields as shown:

<img src="../../../images/form-studio2.jpg" alt="form choose object" style="width: 100%; display: block"></a>

**Layout**

Left toolbar | Description | Right toolbar options
:--- | --- | ---
Container | Provides a controllable container to <br> position and pad objects like text, images,<br> and input fields | • Fluid: allows container to stretch to full browser width <br> • Non-Fluid: constrains container based on specific width<br> • Link settings: add a URL, email, or phone link.<br> • Set form to open in a new tab<br> • Full control of appearance
Columns | Allows you to organize your form content <br> into pre-defined columns | • Column settings: set the number of columns and padding <br> • Link settings: add a URL, email, or phone link<br> • Set form to open in a new tab<br> • Full control of appearance

**Content**

Left toolbar | Description | Right toolbar options
:--- | --- | ---
Header | Provides a text header to your form. | • Header settings: set the H1 or other hierarchal status of your text <br> • Link settings: add a URL, email, or phone link <br> • Set form to open in a new tab <br> • Full control of appearance
Paragraph | Insert a paragraph block of text in your form. | • Full flexibility of appearance.
Image |  Add a custom image to your form. | • Fluid: allows image to stretch to the full browser width <br> • Non-Fluid: constrains image based on specific dimensions<br> • Image properties: adjust shape, width, and height. <br> • ALT text: add data for accessibility <br> • Link settings: add a URL, email, or phone link <br> • Full control of appearance

**Forms**

Left toolbar | Description | Right toolbar options
:--- | --- | ---
Input | Add fields for input data such as name, email, phone number, etc. | • Add custom label, name, ID, and placeholder <br> • Input types: text, number, password, email, search, URL, or phone <br> • Full control of appearance
File | Enables a user to upload a file such as a document, PDF, etc. | • ID and name <br> • Button properties: adjust text and color
Text Area | Include a field for long-form text. | • Specify label, name, ID, placeholder, and helper text.
Checkbox | Create pre-defined options with corresponding checkboxes. | • Adjust label, name, and ID. <br> • Button properties: adjust text and color
Select | Add a picker with a dropdown menu of options. |• Add custom menu list text <br> • Select settings for helper text, placeholder, label, name, and ID.
Radio Button | Create pre-defined options with corresponding radio buttons. | • Adjust label, name, and ID.
Form Button | Add a custom button to submit your form. | • Link settings: add a URL, email, or phone link <br> • Button properties: adjust text, size, style, and color.

**Step 4:** Click and hold the form element, then drag it to the desired location on the form canvas.

**Step 5:** Adjust the element's position and spacing if needed by dragging it to a new location or aligning it with other elements.

**Step 6:** Customize the element properties, such as label text, input type, and validation rules, using the properties panel on the right.

**Step 7:** Save your changes by clicking the **Save** button to store the template.

## How to upload a form template (.tpl)

If you have a pre-built form template available – perhaps from a previous website project – you also have the option to upload it directly to Solodev and add it to a page.

!!!Note:
To use the upload template option, your form file must be in a .tpl file format. 
!!!

**Step 1:** From your main CMS dashboard, click **Forms** in the left-hand menu.

**Step 2:** On the main forms dashboard, click **Add Form**. 

<img src="../../../images/forms-dashboard.png" alt="form upload" style="width: 100%; display: block"></a>

**Step 3:** In the header at the top of the **Form Builder** screen, provide a name to your form in the **Name** field.

**Step 4:** To the right of the Name field, locate where it says Template (Optional). Click the button that reads **Upload TPL file**.

<img src="../../../images/add-form-upload-tpl.png" alt="form upload" style="width: 100%; display: block"></a>

**Step 5:** Pick an install location in Solodev by clicking **Browse**. Then, select a specific destination (labeled object) and click **Choose** to select the folder.

<img src="../../../images/choose-object-form.jpg" alt="form browse" style="width: 30%; display: block"></a>

**Step 6:** Once complete, click **Save**.

## How to add a form using HTML

In Solodev, you also have the option of adding your own custom form code using HTML.

**Step 1**: From your main CMS dashboard, click **Forms** in the left-hand menu.

**Step 2**: On the main forms dashboard, click **Add Form**. 

**Step 3**: In the Form Studio dashboard, locate and click the **Code** button in the lower right corner. 

<img src="../../../images/add-form-html.jpg" alt="form browse" style="width: 100%; display: block"></a>

**Step 4**: Add your HTML code to the code editor. 

<img src="../../../images/add-form-html2.jpg" alt="form browse" style="width: 100%; display: block"></a>

**Step 5**: Once complete, click **Save**.

!!!**Note**:
You can use the sample code below to match the SpaceJet theme.

```js
<div class="my-5">
    <div class="row align-items-center">
      <div class="col-sm-6">
        <div class="mb-3">
          <label class="sr-only" for="firstname">Your first name </label>
          <input class="form-control bg-light" placeholder="First Name" required="" id="first_name" name="first_name" type="text">
        </div>
        <div class="mb-3">
          <label class="sr-only" for="last_name">Your last name </label>
          <input class="form-control bg-light" placeholder="Last Name" required="" id="last_name" name="last_name" type="text">
        </div>
        <div class="mb-3">
          <label class="sr-only" for="email">Your email address</label>
          <input class="form-control bg-light" placeholder="Email" required="" id="email" name="email" type="email">
        </div>
        <div class="mb-3">
          <label class="sr-only" for="company">Your company name</label>
          <input class="form-control bg-light" placeholder="Company" required="" id="company" name="company" type="text">
        </div>
      </div>
      <div class="col-sm-6">
        <div class="mb-3">
          <label class="sr-only" for="message">Message</label>
          <textarea class="form-control bg-light" placeholder="Message" required="" id="message" name="message" rows="8"></textarea>
        </div>
      </div>
    </div>
    <input class="btn fs-5 btn-danger text-white px-sm-5 py-1 pb-2 mx-auto d-block mt-4 fw-bold" type="submit" value="Submit">
  </div>
```

!!!

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

## How to add a submission message

Whether you are creating a lead form or a contact form, it is always a best practice to display that a visitor's information has been received. This is referred to as a submission or "thank you" message, and can be customized to meet your specific requirements.

For the purposes of this lesson, you can use the sample code below to create a submission message.

**Step 1:** Create an **HTML** file with the message you want to display after a form has been submitted, and save it to your local system. You can use the sample code below:

```js
<h3 class="text-center mt-5">Thank you for contacting us. Someone will be in touch soon.</h3>
```

**Step 2:** Click modify and go to the **Email Options** accordion.

<img src="../../../images/email-modify.jpg" alt="email modify" style="display: block"></a>

**Step 3:** Click **Upload Return Page** and select the file you previously created. 

<img src="../../../images/email-options.jpg" alt="email options" style="display: block"></a>

**Step 4:** Click **Submit**.

**Step 5:** Access your forms module from the main dashboard or via your **forms** folder under **web files**. Check the data table to confirm that your submission has been received. 

## How to add an email tickler

You can use this option to send form submissions to an email address you designate. For example, when a potential customer signs up for a free trial of your product, an email can be sent to your sales team to notify them of a possible lead.

**Step 1:** Follow the previous step 2 to navigate to the **Email Options** section. 

**Step 2:** Under tickler information, add a valid email address on the Tickler Email Address field and click the **Add** button. You will see the email address added to the textarea below.

<img src="../../../images/tickler.jpg" alt="tickler" style="display: block"></a>

**Step 3:** You can add as many email addresses as you want. When you are done, click **Submit**.

<img src="../../../images/tickler-list.jpg" alt="tickler-list" style="display: block"></a>

!!!Note: 
If you need to add more options to your form submissions, like having each department on your company receive the form submission based on what the user selects on the forms, please visit <a href="/workspace/forms/form-overview/workflow/">workflows</a>.
!!!

## Next Steps

-	<a href="/tutorials/websites/createmodule/">How to create a module in your CMS</a>
