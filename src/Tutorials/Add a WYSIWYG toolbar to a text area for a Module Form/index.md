# Add a WYSIWYG toolbar to a text area for a module form

The Solodev Visual Editor, also known as a WYSIWYG, editor is an easy-to use browser-based content editor that enables the author to capture and format HTML data without the requirement of coding knowledge. With the WYSIWYG users have access to text editing functions and file enhancements – allowing the user to visualize the end result while the document is being created. 

Users commonly encounter the WYSIWYG when editing an HTML file or adding an entry in the pre-built Solodev modules on the backend. However, users can add the WYSIWYG to their own custom modules. The steps are provided below.

## Step 1 – Create a custom module

* Open the **Modules** workspace and click **Add Module**. 
* Click the **Install** button on the **Custom Module**. 
* Enter the name of the module, choose **‘Datatable’** for the Type, and choose **‘Website Module’** for the Display.
* Click **Browse** and install the module in the **web files -> managers** folder of the website. 
* Click **Submit**.

## Step 2 – Modify the Table Schema

* Open the module located in the **web files -> managers -> moduleName** folder.
* Click **Modify**. 
* In the modify modal, set the Datatable Type to **Website Module**. 
* Click the arrow to expand the **Table Schema**. 
* Click the **red minus** sign to remove the name entry. 
* Click the **orange + sign** twice to add two fields. 
* In the first field under the **Name** column enter **“title”**, set the **Type** to **Character** and **Length** to **255**. Leave the checkbox in the **Allow Null** column **unchecked** and the text-box in the **Default** column **empty**.
* In the second field under the **Name** column enter **“article”**, set the **Type** to **text area**. Leave the checkbox in the **Allow Null** column **unchecked** and the text-box in the **Default** column **empty**. 
* Click the **Modify** button. In the modify modal notice that the Grid Display contains the name values submitted in the table schema. 
* Click the **arrow** to expand the **_Assets** folder and open the **custom-form.tpl** file. 
* In the **custom-form.tpl** file, note that there is html code for a form with a Name label and text input to capture the name. 
* Modify the html code by setting the name value in text input and text area to “title” and “article” respectively so that it matches the values submitted in the table schema. 
* In the opening tag of the text area set the class attribute to **wysiwyg** or **wysiwyg-basic**. 
```js
<input type="text" class="form-control" name="title" id="title">

<textarea name="article" form="blog" id="article" class="wysiwyg">Enter text here...</textarea>
```
* Set the labels appropriately. The full code block for the form is provided below
```js
<h2><label class="label-control" for="title">Title</label></h2>
<input type="text" class="form-control" name="title" id="title">
<h2><label class="label-control" for="article">Article</label></h2>
<textarea name="article" form="blog" id="article" class="wysiwyg">Enter text here...</textarea>
```
* Click **Publish**.

## Step 3 – Add an Entry

* Open the module
* Click **Add Entry**.
* Enter the **Title** and compose the **Article** using the WYSIWYG editor. 
* Click **Submit**. 

