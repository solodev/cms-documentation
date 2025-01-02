# Add Form

In Solodev, you can add a <a href="/workspace/forms/">form</a> to a web page to collect information for almost any kind of application. There are two ways to create a form in Solodev:

## Add Form Options

From the main dashboard, there are two ways to add a form to Solodev:

* **<a href="/workspace/forms/add-form/#upload-tpl-file">Upload TPL File</a>**
If you have an existing form template, you can upload it as a .tpl file directly into Solodev and seamlessly integrate it into your webpage.

*	**<a href="/workspace/forms/add-form/#form-studio">Form Studio</a>**
Solodev's drag-and-drop Form Studio lets you to create highly customized forms effortlessly, offering fine-grained control without the need to write any code. Instantly incorporate text, images, input fields, radio buttons, and more to craft your ideal form. Save your form and apply it to your page within minutes.

<!-- * **<a href="/workspace/forms/add-form/#add-html-code">Add HTML Code</a>**
If you're more comfortable with raw HTML, you have the option to create your own custom form using HTML code and then upload it to Solodev. -->

## Upload TPL File 

Solodev allows you to seamlessly integrate an existing form template directly into your website by uploading as a .tpl file.

1. **Navigate to Forms:** From the main navigation menu, select Forms.

<p><img src="/static/images/workspace/form/forms-main-nav.jpg" alt="Main navigation with Forms link highlighted" style="width: 15%;"></p>

2. **Create a New Form:** Click Add Form to start creating your new form.

<p><img src="/static/images/workspace/form/add-form.jpg" alt="Add Form" style="width: 80%;"></p>

3. **Name Your Form:** Enter a descriptive name to easily identify your form.

<p><img src="/static/images/workspace/form/add-form-name.jpg" alt="Name form field" style="width: 70%;"></p>

4. **Upload Your Template:** Click the Upload button under the Template section.

<p><img src="/static/images/workspace/form/add-form-template.jpg" alt="Add form template button" style="width: 70%;"></p>

5. **Add the HTML Form File:** Select and upload your .tpl file containing the HTML form.

!!!Note:
You can use the following Bootstrap form:

```js
<div class="my-4">
  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="name">Name <span class="text-red">*</span></label> 
      <input class="form-control required" id="name" name="name" type="text">
    </div>
    <div class="col-md-6 mb-3">
      <label for="email">Email <span class="text-red">*</span></label> 
      <input class="form-control required" id="email" name="email" type="email">
    </div>
  </div>
  
  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="company">Company <span class="text-red">*</span></label> 
      <input class="form-control required" id="company" name="company" type="text">
    </div>
    <div class="col-md-6 mb-3">
      <label for="phone">Phone <span class="text-red">*</span></label> 
      <input class="form-control required" id="phone" name="phone" type="tel">
    </div>
  </div>

  <div class="mb-3">
    <label for="message">Message <span class="text-red">*</span></label>
    <textarea class="form-control" id="message" name="message"></textarea>
  </div>
</div>

<input class="btn btn-primary" type="submit" value="Send">
```
!!!

6. **Save Your Form:** Click Save to finalize and store your new form.

### Add the form to your page

Once your form is created, follow these steps to add it to your STML page.

1. **Access the Filesystem:** From the main navigation menu, select Filesystem.

2. **Locate the STML Page:** Navigate to the STML file where you want to embed the form.

3. **Find Your Form:** With the stml opened, navigate to the form from the navigation menu.

4. **Insert the Form:** Select the dynamic div in the STML, then insert your form.

5. **Select  the Form:** With the dynamic div active, click on the form to confirm the insertion.

6. **Publish Your Changes:** Click Publish to save and apply your updates.

## Form Studio

<p><img src="/static/images/form-main.png" alt="form main image" style="width: 100%; display: block"></p>

Use the built-in drag-and-drop WYSIWYG editor that allows you to create custom forms without any coding knowledge. It provides variety of features to help you create a professional-looking form, including:

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