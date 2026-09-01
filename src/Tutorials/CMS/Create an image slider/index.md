# Create an image slider in Solodev

A slider allows you display a single image or rotating display of images. This is good for feeding users the most valuable content on your site, and prompting them to take action. The following steps will show you how to create a home image slider module from scratch in Solodev.

This tutorial utilizes <a href="http://kenwheeler.github.io/slick/">Slick Slider by Ken Wheeler</a>. You can use any slider you want, but will have to ensure you include all of the necessary resources, both in the CMS itself and in the template files.

## Adding Homepage Slider Module

All modules should be built inside the managers folder under /web files/managers/ to make them easy to find and access. Each module should have its own folder within this directory. <a href="https://help.solodev.com/en/articles/3574400-create-and-manage-your-folder-structure-in-solodev">Click here for more information on how to add a folder</a>. In this tutorial, we'll be creating and using a folder named "Image Sliders".

## Step 1 - Add A Module

Go to the main menu and under the **Workspace** section, click on **Modules**. You'll see all the modules you currently have. To add a module, click on **Add A Module** button on the right side.

Select the **Custom Builder** option from the menu and click **Install**:

When you click on Install, a side menu will show up with the following fields:

* **Name:** Pick a name for your module that describes it well.
* **Type:** The type of the module. There are two types of modules in Solodev: Calendars and Datatables. We'll pick Calendar as the type for the image slider. For more information * about the differences between the two type modules, you can refer to this link: <a href="https://intercom.help/solodev/en/articles/3561472-what-are-modules">What Are Modules</a>?
* **Display:** Pick **Custom** from the dropdown menu.
* **Install Location:** Where you would like to install the module. The default place is Data Center so click on the Browse button, find and pick the folder you created for the image sliders to install the module in.

The customization option menu should look like the screen below. Once you're done, click on Submit and the module will be installed in the folder you specified.

## Step 2 - Create a Form for the Module
In order to create and customize all the fields for the image slider, we need to create a structure and a table schema. This all depends on what you're looking to put inside an image gallery. For example if you'd like yo place an h1 heading, an h2 heading, paragraph text, buttons, button link and so on, first you need to create the HTML structure with everything in order and then put in the names of the fields that you'd like to insert into your image gallery. For this purpose, we need to create an HTML form. In this tutorial, we'll supply you with a sample form that you can use and customize for your own needs. First you will need to save this code to your computer. You can use a text editor such as Sublime, or Text Edit. Save the file as a simple text document with .tpl at the end of the file name such as "homepage-slider-form.tpl".

```js
<div class="row">
  <div class="col-md-6 form-group">
    <label class="control-label" for="small_text">Small Heading Text</label>
    <p class="card-subtitle">(Optional) The first line of the slide title.</p>
    <input class="form-control" id="small_text" name="small_text" type="text">
  </div>
  <div class="col-md-6 form-group">
    <label class="control-label" for="large_text">Large Heading Text</label>
    <p class="card-subtitle">(Optional) The second line of the slide title.</p>
    <input class="form-control" id="large_text" name="large_text" type="text">
  </div>
</div>
<div class="row">
  <div class="col-md-3 form-group">
    <label class="control-label" for="button_link">Link</label>
    <p class="card-subtitle">(Required) The link URL of the slide button.</p>
    <input class="form-control" id="button_link" name="button_link" type="text">
  </div>
  <div class="col-md-3 form-group mt-md-5">
    <div class="form-check checkbox-custom mt-md-2">
      <input id="url_new_window" name="link_external" type="checkbox" value="1">
      <label class="control-label" for="link_external">External Link?</label>
    </div>
  </div>
  <div class="col-md-6 form-group">
    <label class="control-label" for="button_text">Button Text</label>
    <p class="card-subtitle">(Required) The text included inside the slide button.</p>
    <input class="form-control" id="button_text" name="button_text" type="text">
  </div>
</div>
<div class="row">
  <div class="col-md-12 form-group">
    <label class="control-label" for="slider_content">Slider Content</label>
    <p class="card-subtitle">(Required) The content of the slide under its title.</p>
    <textarea class="form-control wysiwyg-basic" id="slider_content" name="slider_content" required=""></textarea>
  </div>
</div>
<div class="row">
  <div class="col-md-6 form-group">
    <label class="control-label" for="slide_picture">Featured Image</label>
    <p class="card-subtitle">(Required) The main content section for an entry. <strong>Dimensions:</strong> 3000px by 840px.</p>
    <input class="form-control" id="slide_picture" name="slide_picture" type="file">
  </div>
</div>
```

The above code was written in HTML and built with Bootstrap. When it is rendered by the browser, this is the output:

The most important thing to pay attention is the **names** such as **small_text**, **button_link**, **link_external**, **button_text**, **slider_content**, and **slide_picture**. The rows all form the structure of the slider form and the id names make up the table schema. You'll see how everything comes together below. 

## Step 3 - Upload the Form to the Image Slider Module

Once you copy paste the code above and save the code in a **.tpl** file, go to the folder inside the managers folder and click on the image slider module:

*Note: Take a note of the ID number on the top left side. We'll use this ID number when we will be creating the form for the slider content. When you create your own image slider or any other module, this ID number will be different. We will use this number for this tutorial only.*

Click on the **Modify** button to open the settings for the image slider module:

From the opening side menu, go to **Advanced Options** and under **Form Template**, click on **Upload Form**. Find the **.tpl** file you created on your computer and upload it.

When the form is uploaded, under Grid Display, all the names will automatically appear:

The **Table Schema** will also be automatically updated:

We will see how this all works when we start creating individual slides next.

## Step 4 - Create the Slides

To create a slide, click on the **Add Entry** button:

As you can see, all the form fields are populated as we designated in the form template beginning with Small Heading Text (small_text), Large Heading Text (large_text), Link (button_link), an option for External Link (link_external), Button Text (button_text), Slider Content (slider_content), and finally, the Featured Image (slide_picture).

The fields marked as optional can be left blank. For example, you can choose to write a large heading text, put a button and leave other fields empty. The ones who are left blank won't show up in slides. 

### Add A Slide

Now that you have created your home slider, its time to add slides.

In the **Add Entry Image Slider** menu, give a name to your slide (this won't show up on the slide), choose a status - **Draft** or **Publish**, fill out the fields you'd like, upload an image and the hit the **Submit** button.

We've added our first slide:

Go ahead and add more slides with the content you'd like to put. Here is the final version of our slider items:

## Step 5 - Add A Repeater

The repeater template will generate the code to repeat all slides. This generally goes into the page file, but it ultimately depends on the website structure. For this case, it will go into the page file.

### Step 5.1 - Create A Repeater File

Just like how we created the home slider tpl file, we will create the repeater file and upload it. We need to add the code to make our slide entries appear.

For the purposes of this tutorial, however, we have provided a repeater template for this tutorial. Add this code to the folder that contains the homepage slider module you created. Copy the code below and **make the edit that is required to pull the ID of the correct module**.

**repeater.tpl**

```js
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<!-- Slick Slider CSS -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<!-- Slick Slider JS -->
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<header aria-label="Home Hero" class="h-lg-553p position-relative" id="home-hero" role="banner">
  <div class="slick slick-home w-100" data-arrows="true" data-autoplay="true">
    [repeater id="60" display_type="news"]
    <div class="slide position-relative" style="background: url('[get_asset_file_url id={{slider_image}}]'); background-repeat:no-repeat;background-position:center;background-size:cover;">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 h-400p h-md-600p d-flex flex-column justify-content-center text-white py-md-5">
            <h2 class="display-4 mb-0">{{small_text}} <span class="d-block font-weight-bold">{{large_text}}</span></h2>
            <p class="lead my-4">{{slider_description}}</p>
            [cond type="is" subject="{{link_external}}" value="1"]
            <a class="btn btn-primary w-max mt-2 text-white" href="{{button_link}}" target="_blank">{{button_text}}</a>
            [/cond]
            [cond type="is_not" subject="{{link_external}}" value="1"]
            <a class="btn btn-primary w-max mt-2 text-white" href="{{button_link}}">{{button_text}}</a>
            [/cond]
          </div><!--  col-->
        </div><!-- row-->
      </div><!-- container-->
    </div>
    [/repeater]
  </div>
</header>
```

***Note - the only thing that needs to be edited in this code, is the following section:***
```js
repeater id="60" display_type="news"
```

The repeater id="" needs the ID of the homepage slider manager. Open the homepage slider manager and look for the ID at the top left under the name of the module. Place the ID number inside the quotes ("").

The image below outlines where to find the **ID** of the module.

Open the same folder into which you added the home slider manager. Hover over the **Add** button and click **File**.

### Step 5.2 - Upload the Repeater File

We used the name "repeater" for this file but you can use any name you would like. Name the file and add the extension .tpl at the end of the file name.

The file name should have no spaces. You can add a hyphen (-) between words. <a href="https://help.solodev.com/en/articles/3580261-managing-files">Click here for more information on adding a file</a>.

## Step 6 - Add the Repeater to the Page

If you haven't already, create a page that will hold your repeater template. 

Navigate to the page that will contain your repeater template. In order to place the file into your STML, you need to select the Dynamic Div in which you’d like to place it by clicking on it. Once it turns blue, select the file from the left hand file tree and hit **Publish**.


### Adding CSS Styling

Everything done right now achieves the objective of getting the slider working and placed on a specific page. While, optional, it is highly recommended that you apply CSS styling to make the slider look sharp and professional. For more information and guidance on how to create image sliders with Slick Slider and style them, you can read our tutorials on our blog:

<a href="https://www.solodev.com/blog/web-design/adding-a-hero-slider-to-your-homepage-using-slick-slider.stml">Adding a Hero Slider to your Homepage Using Slick Slider</a>.

<a href="https://www.solodev.com/blog/web-design/how-to-use-text-animations-with-slick-slider.stml">How to Use Text Animations with Slick Slider</a>.

<a href="https://www.solodev.com/blog/web-design/creating-a-featured-content-slider-with-slick-slider.stml">Creating a Featured Content Slider with Slick Slider</a>.

<a href="https://www.solodev.com/blog/web-design/how-to-combine-fontawesome-with-a-slider-to-create-quick-links.stml">How to Combine FontAwesome with a Slider to Create Quick Links</a>.

**Congratulations!** If you followed all the steps correctly, your homepage slider should be in place and working, looking similar to this:

Your homepage slider should look something like the following hierarchy, with all necessary assets: