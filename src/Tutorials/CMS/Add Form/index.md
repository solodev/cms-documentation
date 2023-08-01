# Add form

Solodev developers can create a new form module that can be edited using Solodev's dynamic drag-and-drop graphical user interface, Forms.

## Step 1 - Adding a form

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

<img src="../../../images/form-studio.jpg" alt="FormStudio" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
**Layout** | Create a page layout by using containers, columns, and divs.
Container | Place the container to pad the content inside of it.
Columns | Organize your content with columns.
Div | Define a division or a section on your page. The `<div>` tag is easily styled by using the class or id attribute. Any content can be put inside it.
**Content** | Add the page content.
Header | Add the header element which, represents a container for introductory content or a set of navigational links.
Description | Add the description.
Paragraph |  Add the paragraph which starts on a new line and is usually a block of text. 
Title | Add the title which capitalizes any class name that will get referenced in the stylesheet without a parent class.
Image | Place the image.
List |  Organize the page content with a list.
Video | Add the video.
**Components** | Use components such as buttons and navibars.
Button | Create a styled HTML button and customize it to match their website designs.
Accordion | Use the accordion element to show (and hide) HTML content. Use the w3-hide class to hide the accordion content.
Carousel | Create a slideshow for cycling through a series of content. It works with a series of images, text, or custom markups.
Link | Add the link to any page.
Navibar | Add a navigation bar to your workspace which, is a user interface element within a webpage that contains links to other sections of the website.
Table | Organize data with table. 
**Utilities** | Use different elements such as separators and spacers.
Separator | Create a thematic break in the page by using the separator. 
Spacer | Use the spacer element to insert spaces on the page. 

!!!Note:
Click and hold the icon to drag and drop the element in the workspace.
!!!

# Upload Form

## Step 1 

To begin the template upload process, locate the **Upload TPL File** button and click on it. This button will initiate the template uploading procedure.

<img src="../../../images/upload-form.jpg" alt="base template" style="width: 100%; display: block"></a>

## Step 2

After clicking on the **Upload TPL File** button, a file selection dialog will appear. Browse through your local files and choose the **.tpl** file that you wish to upload. Ensure that the selected file is in the appropriate **.tpl** format, as this is the supported file format for the upload.

## Step 3 

Once you have successfully uploaded the desired **.tpl** file, click on the **Save** button to confirm the upload. This will save the template to the system, making it available for further use.

!!!Note:
Please make sure that the uploaded package is in the correct **.tpl** format, as any other file format will not be accepted for the template upload.
!!!

# Add Form to Page

## Step 1

* Open your content management system (CMS).
* Navigate to the specific page where you want to add the form.

## Step 2

* Locate the area on the web page where you want the form to appear. This could be within a specific section, a sidebar, or anywhere else you'd like the form to be displayed.
* Edit the dynamicDiv of that section or area.
* Add the following shortcode to the code at the desired location: [form id="your_form_id"]. Replace `your_form_id` with the actual ID of your form. The ID is a unique identifier used to reference the form.

# Step 3

* After adding the form shortcode, ensure that all other necessary changes or updates to the page are completed.
* Publish the changes made to the web page.
* In the Preview section, you can use it to check how the form looks.
* Once you are satisfied with the changes, publish the updated page to make the form visible to your website visitors.

## Confirm