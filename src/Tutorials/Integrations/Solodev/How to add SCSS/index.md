# How to add SCSS to your website

SCSS stands for "Sassy Cascading Style Sheets." As the name implies, these are a more advanced variant of standard web CSS (Cascading Style Sheets), and a syntax for the popular CSS preprocessor called SASS, or "Syntactically Awesome Style Sheets." 

SCSS can be used to style more complex visual elements on a web page, including hero sliders, galleries, buttons, images, color palettes, fonts, and even themes and layouts. In this article, you will learn how to add SCSS to your website to add more of these advanced features. 

## Prerequisites

- You will need to complete the <a href="/tutorials/websites/add-website/#adding-a-site">How to add a website</a> tutorial.
- You will need to complete the <a href="/tutorials/websites/add-page-template/">How to add a page</a> to a website tutorial.
- Familiarity with Bootstrap is highly recommended. 

## Setting up your web files 

**Step 1**: Click on the **web files** folder in your menu. Using the menu on the right, click **Add File**. 

<img src="../../../../images/base-template-add-file1.png" alt="add-website" style="width: 20%; display: block"></a>

!!!**Note**: 
For more details on how to add a file or folder to your CMS, read the  <a href="/workspace/websites/manage-folder/addfile/">Add File</a> article. 
!!!

**Step 2**: In the menu, create a file called **package.json** and select **Code** from the dropdown. You can add an optional title, but it is not required. Once complete, click **Submit**. 

<img src="../../../../images/base-template-add-file2.png" alt="add-website" style="width: 30%; display: block"></a>

!!!**Note**:
A package.json file is used to identify and understand how to handle your website’s dependencies. It is composed of functional metadata about your project, such as its name and version. You will add these details later using the <a href="/workspace/websites/update-website/">Update Website</a> form. 
!!!

**Step 3**: Once your **package.json** file is created, click on it to open the code editor.

**Step 4**: Download the sample json code below, add it to your file and click **Publish**. 

<a href="package.json" download>**package.json**</a>

**Step 5**: In the menu, create a file called **webpack**. You can add an optional title and description, but it is not required. Once complete, click **Submit**. 

<img src="../../../../images/base-template-add-folder2.png" alt="add-website" style="width: 30%; display: block"></a>

**Step 6**: Click on the new **webpack** folder in your left menu. Following steps 1 and 2, create two additional files under the folder:

- **webpack.css.config.js**
- **webpack.js.config.js**

**Step 7**: Download the two webpack files below, add it to the files you just created and click **Publish**.

<a href="webpack.css.config.js" download>**webpack.css.config.js**</a>

<a href="webpack.js.config.js" download>**webpack.js.config.js**</a>

!!!**Note**:
Webpack is a modular bundler that compiles JavaScript files, SCSS, and CSS files into packages that are used to manage frontend assets at the browser level.  
!!!

**Step 8**: Click on **web files** and <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a> called **js**.

**Step 9**: Click on the new **js folder** in your left menu. Following steps 1 and 2, <a href="/workspace/websites/manage-folder/addfile/">create a file</a> under the folder:
- **app.js**

**Step 10**: Download the code below and paste it into the file:

<a href="app.js" download>**app.js**</a>

**Step 11**: Click on **web files** and <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a> called **scss**.

**Step 12**: Click on the new **scss folder** in your left menu. Following steps 1 and 2, <a href="/workspace/websites/manage-folder/addfile/">create a file</a> under the folder:

- **app.scss**

**Step 13**: Download the code below and paste it into the file:

<a href="app.scss" download>**app.scss**</a>

## Setting up your www folder

When creating a new website, a **www** folder is automatically generated. The folder contains only one file called **index.stml**, which corresponds to the **index.html** file under the **content** folder of your **web files**. 


<img src="../../../../images/1.png" alt="add-website" style="width: 20%; display: block"></a>


An index file is what a browser reads first under your website domain, which is why it is referred to as your website’s **homepage**. 

In the next lesson, you will learn about the additional files and folders that are required for your www folder and how to create them. 

!!!**Note**: 
For more details on the Website Dashboard and the web files and www folders, read the <a href="/workspace/websites/website-overview/">Website Overview</a> article. 
!!!

**Step 1**: Click on the **www** folder in your menu. Using the menu on the right, click **Add Folder**. 

**Step 2**: In the menu, create a folder called "**_**" (the underscore character). You can add an optional title and description, but it is not required. Once complete, click **Submit**. 

<img src="../../../../images/base-template-add-file3.png" alt="add-website" style="width: 30%; display: block"></a>

**Step 3**: Following steps 1 and 2, create four additional folders under the "**_**" folder: 
- **css**
- **fonts** 
- **images**
- **js**
 
!!!**Note**:
The "**_**" folder is a general repository for your website’s resources:
- CSS will compile the cascading style sheets that govern your website. 
- Fonts will contain your web-safe font libraries, such as FontAwesome. 
- Images will host all the graphics, photos, and visual assets.
- js will contain the compiled JavaScript used on your website. 
!!!

Once your web files and www have been set up, it should contain the 
following files and folders:

<img src="../../../../images/2.png" alt="add-website" style="width: 20%; display: block"></a>


**Step 1:** In the left-hand menu of your main dashboard, click **Websites**. From the table, select the site you want to add **SCSS** to (such as *www.testsite<span>.<span>com*)

<img src="../../../../images/add-scss.png" alt="scss folder" style="display: block"></a>

**Step 2:** Under web files, click on the **SCSS** folder. 

<img src="../../../../images/scss-folder.png" alt="scss folder" style="display: block"></a>

**Step 3:** Using the right-hand menu, click <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a>. Name it **utilities**. Once Complete click **Submit**.

<img src="../../../../images/scss-utilities.png" alt="scss utilities" style="display: block"></a>

**Step 4:** Click on the **utilities** folder and, using the same right-hand menu, click <a href="/workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file called **variables.scss** and select **Code** for the **File Type**. Once complete, click **Submit**.

<img src="../../../../images/scss-utilities-vars.png" alt="scss utilities vars" style="display: block"></a>

**Step 5:** In the file code editor, add the following code sample. 

<img src="../../../../images/scss-import.png" alt="scss import" style="display: block"></a>

!!!Note:
This sample code contains a few color variables you can use to style your template.
!!!

**Step 6:** To link your newly created file, click on the top of the **app.scss** file under the **scss** folder. Add the following import before Bootstrap code. Click **Publish**.

```js
@import 'utilities/variables';

/* =======================
  # Theme Color pallette
======================= */
$theme-colors: (
  'white': #fff,
  'primary': #008ae1,
  'danger': #c30065,
  'dark': #000,
);

@function theme-color($key: "primary") {
  @return map-get($theme-colors, $key);
}
```

Once complete, click **Publish**.

!!!Note:
Your variables.scss file needs to be before the bootstrap import. All other scss files you add need to go after the fontawesome imports. Solodev highly recommends creating a **components** folder for all your other styles and to keep some level of organization within your CMS.
!!!!

**Step 7:** Go to your front end and see the new colors.