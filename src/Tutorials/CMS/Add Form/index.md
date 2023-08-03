# Add form

In Solodev, you can add a <a href="/workspace/forms/">form</a> to a web page to collect information for almost any kind of application. This includes contact forms, order forms, newsletter subscriptions, product registrations, and more. In this article, you will learn the different ways to create a form using Solodev and how to add it to your web page.  

## Prerequisites

-	You will need to <a href="/workspace/websites/add-website/">add a website</a> to your Solodev CMS
-	After selecting a website, you will need to <a href="/tutorials/cms/add-page/">add a page</a> for your form
-	To map a form to a Solodev module, you will need to <a href="/workspace/modules/add-module/">add a module</a> (optional)

## Add Form Options

<img src="../../../images/form-main.png" alt="form main image" style="width: 100%; display: block"></a>

From the main dashboard, there are three ways to add a form to Solodev:

*	**Form Studio**
Solodev’s drag-and-drop Form Studio lets you build your own custom forms with granular control – without touching a line of code. Instantly add text, images, input fields, radio buttons, and more. Save your form and apply it to your page in minutes.  

* **Upload TPL File**
If you already have an existing template for your form, you can upload it directly as a .tpl file into Solodev and apply it to your page. 

* **Upload HTML**
If you prefer working in raw HTML, you can code your own form and upload to Solodev.

## Form Studio

<img src="../../../images/Form-Studio1.jpg" alt="form main image" style="width: 100%; display: block"></a>

Form Studio is a built-in drag-and-drop WYSIWYG editor that allows you to directly compose your own custom form. The visual editor consists of a left toolbar for dragging layout, content, and form components onto the canvas in the center. See table below for details. 

The right toolbar enables you to control the text, styling, and specific details of the components in your form. Under the **Settings** icon, you can adjust your form header, links, and other details. 

<img src="../../../images/form-settings.png" alt="form settings" style="width: 25%; display: block"></a>

Using the **Pencil** icon, you can customize attributes such as layout, position, border radius, size, typography, and background components by entering values or clicking/dragging arrows. The right toolbar also provides **Body** attributes that detail the components in each div. 

<img src="../../../images/form-body.png" alt="form body" style="width: 25%; display: block"></a>

### Building a form with Form Studio

**Step 1:** First, provide a name to your form in the **Name** field.

**Step 2:** Pick an install location in Solodev by clicking **Browse**. Select an object and click **Choose**.

<img src="../../../images/form-choose-object.jpg" alt="form choose object" style="width: 25%; display: block"></a>

**Step 3:** Use the drag-and-drop Form Studio tools to build your form:

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

**Step 4:** Once complete, click **Save**.

## Upload TPL File 

**Step 1:** First, provide a name to your form in the **Name** field.

**Step 2:** Pick an install location in Solodev by clicking **Browse**. Select an object and click **Choose**.

Next Steps

-	Add Module 


<!-- ## Step 1 - Adding a form

Click **Forms** from the Solodev dashboard and click **Add Form**.

<img src="../../../images/addform1.png" alt="base template" style="width: 100%; display: block"></a>

## Step 2 - Set up a form and save

The developer is directed into a visual drag-and-drop editor where the form can be set up. After setting up:

* Enter the **Name** of the form module.
* Click **Browse** to choose the form's location in the Solodev filesystem.
* Click **Save**.

<img src="../../../images/addform2.png" alt="base template" style="width: 100%; display: block"></a>

## Form Studio

Forms are created based on the Form Studio editor. It has a robust built-in drag-and-drop WYSIWYG editor and the option to toggle to edit sources directly.

<img src="../../../images/form-studio.png" alt="FormStudio" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
**Layout** | Create a page layout by using containers, columns, and divs.
Container | Place the container to pad the content inside of it.
Columns | Organize your content with columns.
**Content** | Add the page content.
Header | Add the header element which, represents a container for introductory content or a set of navigational links.
Paragraph |  Add the paragraph which starts on a new line and is usually a block of text. 
Image | Place the image.
**Forms** | Create interactive forms for user input.
Input | Insert an input field, allowing users to enter text, numbers, or other information.
File | Add a file input element, enabling users to upload files from their local device.
Text Area | Include a larger text input area, useful for capturing longer text inputs or comments from users.
Checkbox | Add a checkbox, allowing users to select one or more options from a list of choices.
Select | Provide a dropdown menu, giving users a selection of options to choose from.
Radio Button | Include radio buttons, enabling users to select a single option from a list of mutually exclusive choices.
Form Button | Insert a button element, which triggers actions like form submission or other interactive operations.

!!!Note:
Click and hold the icon to drag and drop the element in the workspace.
!!!

## Upload Form

### Step 1 - Prepare Form

To begin the template upload process, locate the **Upload TPL File** button and click on it. This button will initiate the template uploading procedure.

<img src="../../../images/upload-form.png" alt="upload tpl button" style="width: 25%; display: block"></a>

### Step 2 - Select Template File

After clicking on the **Upload TPL File** button, a file selection dialog will appear. Browse through your local files and choose the **.tpl** file that you wish to upload. Ensure that the selected file is in the appropriate **.tpl** format, as this is the supported file format for the upload.

### Step 3 - Confirm the Upload

Once you have successfully uploaded the desired **.tpl** file, click on the **Save** button to confirm the upload. This will save the template to the system, making it available for further use.

!!!Note:
Please make sure that the uploaded package is in the correct **.tpl** format, as any other file format will not be accepted for the template upload.
!!!

## Add HTML Code
 
### Step 1 - Access the Code Editor

To begin the HTML process, locate the **Coding** button in the bottom right and click on it. This button will switch the content area to a code editor view.

<img src="../../../images/html-form.png" alt="coding button" style="width: 20%; display: block"></a>

### Step 2 - Write Your HTML Code

After clicking on the **Coding** button, your screen will give you the ability to write your code. 

<img src="../../../images/html-form-code.png" alt="form screen" style="width: 100%; display: block"></a>

Example code:
```js
<div class="row row-cols-1 row-cols-lg-2">
  <div class="col mt-4">
    <label for="first_name">First Name</label>
    <input type="text" class="form-control" name="first_name" id="first_name" required>
  </div>
  <div class="col mt-4">
    <label for="last_name">Last Name</label>
    <input type="text" class="form-control" name="last_name" id="last_name" required>
  </div>
  <div class="col mt-4">
    <label for="email">Email</label>
    <input type="text" class="form-control" name="email" id="email" required>
  </div>
  <div class="col mt-4">
    <label for="phone">Phone Number</label>
    <input type="tel" class="form-control" name="phone" id="phone" required>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</div>
```

### Step 3 - Confirm Code

Once you have successfully added your code, click on the **Save** button to confirm. This will save the template to the system, making it available for further use.

## Drag and Drop

### Step 1 - Access Form Studio

To begin the template your drag and drop process, give your form a name and choose your install location

### Step 2 - Create a New Form

On the form editor interface, you will find a list of available form elements on the sidebar or toolbox. Browse through the available form elements and select the one you want to add to your form.

### Step 3 - Drag and Drop

Click and hold the selected form element with your mouse cursor. While holding the element, drag it to the desired location on the form canvas.

### Step 4 - Adjust Element Position
Once the form element is placed on the canvas, you can adjust its position by dragging it to a new location if needed. Align the element with other form elements or adjust its spacing as required. 

### Step 5 - Customize Element Properties
After placing the form element, you can customize its properties such as label text, input type, validation rules, and more. Look for options or properties panel associated with the selected form element, and make the necessary changes.

### Step 6 - Save Changes
Once you have successfully added your code, click on the **Save** button to confirm. This will save the template to the system, making it available for further use.

## Add Form to Page

### Step 1 - Access CMS

* Open your content management system (CMS).
* Navigate to the specific page where you want to add the form.

### Step 2 - Locate the Form Area and Edit Dynamic Div

* Locate the area on the web page where you want the form to appear. This could be within a specific section, a sidebar, or anywhere else you'd like the form to be displayed.
* Edit the dynamicDiv of that section or area.
* Add the following shortcode to the code at the desired location: [form id="your_form_id"]. Replace `your_form_id` with the actual ID of your form. The ID is a unique identifier used to reference the form.

# Step 3 - Add the Form Shortcode

* After adding the form shortcode, ensure that all other necessary changes or updates to the page are completed.
* Publish the changes made to the web page.
* In the Preview section, you can use it to check how the form looks.
* Once you are satisfied with the changes, publish the updated page to make the form visible to your website visitors. -->

## Confirm