# Creating a Contact From

Forms are often found on the front end of websites, the most common being a “Contact Us” form. This tutorial shows users how to create a Contact form that captures site visitors’ data and send it to the Solodev module.  

## Pre-requisites

Prior to following this tutorial users should: 

* Create a form with the relevant fields.
* Use shortcodes. 

## Step 1 – Install a custom module 

* On the Solodev dashboard, click **Modules**.
* Click **Add Module** on the next page. 
* On the **Custom Builder** card, click **Install**. 
* Enter the name of the module, choose ‘Datatable’ for the Type, and choose ‘Website Form’ for the Display.
* Click **Browse** and install the module in the **web files -> managers** folder of the website. 
* Click **Submit**.

## Step 2 – Create a form

* Open a text editor (for example, Notepad++, Sublime Text, Atom, Visual Code). 
* Copy the code provided below: 
```js
<div class="container p-1 my-1">

    <h3 class="display-4">Contact US</h3>

    <form>

        <div class="form-group form-row">

            <div class="col">

                <input class="form-control" name="fname" placeholder="First Name" type="text"/>

            </div>

            <div class="col">

                <input class="form-control" name="lname" placeholder="Last Name" type="text"/>

            </div>

        </div>

        <div class="form-group form-row">

            <div class="col">

                <input aria-describedby="emailHelp" class="form-control" name="email" id="exampleInputEmail1" placeholder="Enter email here" type="email" />

            </div>

        </div>

        <div class="form-group form-row">

            <div class="col">

                <input class="form-control" name="subject" placeholder="Enter subject here. . ." type="text" />

            </div>

        </div>

        <div class="form-group form-row">

            <div class="col">

                <textarea class="form-control" id="exampleFormControlTextarea1" name="comments" placeholder="Comments" rows="4"></textarea>

            </div>

        </div>

        <div>

            <button class="btn btn-primary" type="submit">Send</button>

        </div>

    </form>

</div>
```
* Save the file as an .html or .tpl file. 

***Note:* When creating a form for upload, Solodev recommends specifying a name for input and textarea tags.** 

## Step 3 – Uploading the form 

* Open the website and navigate to the **web files -> managers -> Custom Form** folder. 
* Open the Module.
* Click **Modify** to bring up the Modify Custom Form modal window. 
* Under the **Datatable Type** choose **Website Form**.
* Click the **arrow** in the **Advanced** section of the Modal.
* Under the **Form Template** section, click **Upload Form**. 
* Choose the desired form and click **Submit** to complete the upload. 

## Step 4 – Creating a form template

* Open the contact-us folder located in **web files -> content -> contact-us**. 
* Click the **Add File** button to bring up the Add File Modal.
* Enter the **Name (contact-form.tpl)**, **Title** and set the **File Type** to **Code**. 
* Click **Submit**. 
* Open the file and type the following line of code: 
```js
[form id='##' ]
```
* Click **Publish**. 

***Note:* The id value in the form shortcode should match the id value of the module.** 

## Step 5 – Embedding a form into a page 

* Open the contact us folder located in **www -> contact-us**.
* Click **Add Page**. 
* Enter the **Name**, **Title**, and **Description** of the page.
* Choose a template
* Click **Submit**. 
* The user is directed to the .stml page. 
* On the page click an empty DynamicDiv. 
* Click the **contact-form.tpl** file located in **web files -> content -> contact-us** to insert it into the DynamicDiv.
* Click **Publish**. 

***Note:* The purpose of the form shortcode is to pull the fields in the table schema of the module and display them on the front end of the website. Soldev recommends inserting a template with the form shortcode into the DynamicDiv instead of inserting the Module into the DynamicDiv directly.**  