# Add Form

In Solodev, you can add a <a href="/workspace/forms/">form</a> to a web page to collect information for almost any kind of application. This includes contact forms, order forms, newsletter subscriptions, product registrations, and more. In this article, you will learn the different ways to create a form using Solodev and how to add it to your web page.  

## Prerequisites

-	You will need to <a href="/workspace/websites/add-website/">add a website</a> to your Solodev CMS.
-	After selecting a website, you will need to <a href="../../../workspace/websites/manage-website/add-page/">add a page</a> for your form.
- You will need to be familiar with using <a href="/shortcodes/">shortcodes</a>.

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

<img src="../../../images/form-studio1.jpg" alt="form main image" style="width: 100%; display: block"></a>

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

## Add HTML Code

**Step 1:** Click the **Coding** button in the bottom right to access the code edit

**Step 2:** Write your HTML code in the code editor.

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

## Drag and Drop Form

**Step 1:** Access **Form Studio** by clicking **Add Form**.

**Step 2:** Give your form a name and select the location in which you want to save your form.

**Step 3:** Browse the sidebar/toolbox to find the desired form element.

**Step 4:** Click and hold the form element, then drag it to the desired location on the form canvas.

**Step 5:** Adjust the element's position and spacing if needed by dragging it to a new location or aligning it with other elements.

**Step 6:** Customize the element properties, such as label text, input type, and validation rules, using the properties panel on the right.

**Step 7:** Save your changes by clicking the **Save** button to store the template.

## Next Steps

-	<a href="/tutorials/add-module/">Add Module</a>

