# How to add SCSS to your website with Webpack

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

<img src="../../../../images/js-folder1.jpg" alt="js folder" style="display: block"></a>

**Step 9**: Click on the new **js folder** in your left menu. Following steps 1 and 2, <a href="/workspace/websites/manage-folder/addfile/">create a file</a> under the folder:

- **app.js**

<img src="../../../../images/js-file1.jpg" alt="js file" style="display: block"></a>

**Step 10**: Download the code below and paste it into the file:

<a href="app.js" download>**app.js**</a>

**Step 11**: Click on **web files** and <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a> called **scss**.

<img src="../../../../images/scss-folder1.jpg" alt="scss folder" style="display: block"></a>

**Step 12**: Click on the new **scss folder** in your left menu. Following steps 1 and 2, <a href="/workspace/websites/manage-folder/addfile/">create a file</a> under the folder:

- **app.scss**

<img src="../../../../images/scss-file1.jpg" alt="scss file" style="display: block"></a>

**Step 13**: Download the code below and paste it into the file:

<a href="app.scss" download>**app.scss**</a>

## Setting up your www folder

**Step 1**: Click on the **"_"** under the **www** folder in your menu. Using the menu on the right, click **Add Folder**.

<img src="../../../../images/under-folder.jpg" alt="_ folder" style="display: block"></a>

**Step 2**: In the menu, create a folder called **"css"**. You can add an optional title and description, but it is not required. Once complete, click **Submit**.

<img src="../../../../images/www-css.jpg" alt="www css" style="display: block"></a>

**Step 3**: Following steps 1 and 2, create an additional folder under the **"_"** folder, called **js**.

<img src="../../../../images/www-js.jpg" alt="www js" style="display: block"></a>
 
!!!**Note**:
The "**_**" folder is a general repository for your website’s resources:
- CSS will compile the cascading style sheets that govern your website. 
- js will contain the compiled JavaScript used on your website. 
!!!

**Step 4**: Click on the **css** folder and <a href="/workspace/websites/manage-folder/addfile/">Add a File</a> called **app.css**.

<img src="../../../../images/app-css.jpg" alt="add-website" style="display: block"></a>

**Step 5**: Click on the **js** folder and <a href="/workspace/websites/manage-folder/addfile/">Add a File</a> called **app.js**.

<img src="../../../../images/app-js.jpg" alt="add-website" style="display: block"></a>

Once your web files and www have been set up, it should contain the following files and folders:

<img src="../../../../images/web-files-www-final-view.png" alt="add-website" style="display: block"></a>

**Step 6**: Go to your website dashboard and click on **Update Website** and navigate to the Meta Information accordion.

**Step 7**: Under "Global Header Insert" replace the CDN reference for bootstrap with the following:

```js
<link rel="stylesheet" href="/_/css/app.css">
<script defer src="/_/js/app.js"></script>
```

**Step 8**: Click **Submit**.

## Adding additional SCSS to your site

**Step 1:** Under web files, click on the **SCSS** folder. 

<img src="../../../../images/scss-folder.png" alt="scss folder" style="display: block"></a>

**Step 2:** Using the right-hand menu, click <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a>. Name it **utilities**. Once Complete click **Submit**.

<img src="../../../../images/scss-utilities.png" alt="scss utilities" style="display: block"></a>

**Step 3:** Click on the **utilities** folder and, using the same right-hand menu, click <a href="/workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file called **variables.scss** and select **Code** for the **File Type**. Once complete, click **Submit**.

<img src="../../../../images/scss-utilities-vars.png" alt="scss utilities vars" style="display: block"></a>

**Step 4:** In the file code editor, add the following code sample. 

```js
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

!!!Note:
This sample code contains a few color variables you can use to style your template.
!!!

**Step 5:** To link your newly created file, click on the **app.scss** file under the **scss** folder. Add the following import before Bootstrap code. Click **Publish**.

```js
@import 'utilities/variables';
```

<img src="../../../../images/scss-vars.jpg" alt="scss import" style="display: block"></a>

Once complete, click **Publish**.

!!!warning Note:
Your variables.scss file needs to be added before the bootstrap import. All other scss files you add need to go after the bootstrap imports. Solodev highly recommends creating a components folder for all your other styles and to keep some level of organization within your CMS.
!!!!

**Step 6:** Go to your front end and see the new colors.