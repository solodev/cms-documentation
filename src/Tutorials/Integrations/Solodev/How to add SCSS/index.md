# How to add Webpack to your website

Webpack is a modular bundler that compiles JavaScript files, SCSS, and CSS files into packages that are used to manage frontend assets at the browser level. You will need these assets installed with your website to add more advanced styling features. In this tutorial, you will learn how to add Webpack and set up both JavaScript and SCSS. 

<!--First, you will need to install a **package.json** file to identify and understand how to handle your website's dependencies. It is composed of functional metadata about your project, such as its name and version. You will add these details later using the <a href="/workspace/websites/update-website/">Update Website</a>  form.-->

## Prerequisites

- You will need to complete the <a href="/tutorials/websites/add-website/#adding-a-site">How to add a website</a> tutorial.
- You will need to complete the <a href="/tutorials/websites/add-page-template/">How to add a page</a> to a website tutorial.
- Familiarity with Bootstrap is highly recommended. 

## Setting up your web files 

A **package.json** file is used to identify and understand how to handle your website’s dependencies. It is composed of functional metadata about your project, such as its name and version. <!--You will add these details later using the  <a href="/workspace/websites/update-website/">Update Website</a> form. -->

**Step 1**: Download the sample json code below. 

<a href="package.json" download>**package.json**</a>

**Step 2**: Click on the **web files** folder in your menu. Using the menu on the right, click **<a href="https://cms.solodev.net/workspace/websites/manage-folder/upload/">Upload</a>**.

<img src="../../../../images/upload-webfiles.jpg" alt="add-website" style="width: 20%; display: block"></a>

**Step 3**: Browse or drag the **package.json** file into the uploader and click **Submit**.

<img src="../../../../images/uploader.jpg" alt="add-website" style="display: block"></a>

**Step 4**: Create a new folder called **webpack**.

<img src="../../../../images/base-template-add-folder2.png" alt="add-website" style="width: 40%; display: block;"></br>

## How to add SCSS to your site

After downloading your package.json file, you will need to install SCSS, which stands for "Sassy Cascading Style Sheets." As the name implies, these are a more advanced variant of standard web CSS (Cascading Style Sheets), and a syntax for the popular CSS preprocessor called SASS, or "Syntactically Awesome Style Sheets."

SCSS can be used to style more complex visual elements on a web page, including hero sliders, galleries, buttons, images, color palettes, fonts, and even themes and layouts. 

**Step 1**: Download the webpack file below

<a href="webpack.css.config.js" download>**webpack.css.config.js**</a>

**Step 2**: On the new webpack folder click **Upload** on the right-side menu and add the webpack file you previously downloaded on step 1.

**Step 3**: Click on the **"_"** under the **www** folder in your menu. Using the menu on the right, click **Add Folder**.

<img src="../../../../images/under-folder.jpg" alt="_ folder" style="display: block"></a>

**Step 4**: In the modal, create a folder called **"css"**. You can add an optional title and description, but it is not required. Once complete, click **Submit**.

<img src="../../../../images/www-css.jpg" alt="www css" style="display: block"></a>

**Step 5**: Click on the **css** folder and <a href="/workspace/websites/manage-folder/addfile/">Add a File</a> called **app.css**.

<img src="../../../../images/app-css.jpg" alt="add-website" style="display: block"></a>

!!!Note
Please leave this file empty. This file will dynamically include the compiled CSS for your site.
!!!

**Step 6**: Click on **web files** and <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a> called **scss**.

<img src="../../../../images/scss-folder1.jpg" alt="scss folder" style="display: block"></a>

**Step 7**: On the new scss folder, <a href="/workspace/websites/manage-folder/addfile/">create a file</a> **called app.scss**:

- **app.scss**

<img src="../../../../images/scss-file1.jpg" alt="scss file" style="display: block"></a>

**Step 8**: Paste the following sample code into the file:

```js
@import '~bootstrap/scss/bootstrap';
```

<!-- <a href="app.scss" download>**app.scss**</a> -->

**Step 9**: Go to your website dashboard and click on **Update Website** and navigate to the **Meta Information** accordion.

**Step 10**: Under **"Global Header Insert"** replace the CDN reference for bootstrap with the following:

```js
<link rel="stylesheet" href="/_/css/app.css">
```

## How to add JavaScript to your site

<!--SCSS stands for "Sassy Cascading Style Sheets". As the name implies, these are a more advanced variant of standard web CSS (Cascading Style Sheets), and a syntax for the popular CSS preprocessor called SASS, or "Syntactically Awesome Style Sheets".

SCSS can be used to style more complex visual elements on a web page, including hero sliders, galleries, buttons, images, color pallette, fonts, and even themes and layouts.
-->

**Step 1**: Download the webpack file below

<a href="webpack.config.js" download>**webpack.config.js**</a>

**Step 2**: On the webpack folder under **web files**, click **Upload** on the right-side menu and add the webpack file you previously downloaded on step 1.

**Step 3**: Click on the **"_"** under the **www** folder in your menu. Using the menu on the right, click **Add Folder**.

**Step 4**: Following step 1, create an additional folder under the **"_"** folder, called **js**.

<img src="../../../../images/www-js.jpg" alt="www js" style="display: block"></a>

**Step 5**: Click on the **js** folder and <a href="/workspace/websites/manage-folder/addfile/">Add a File</a> called **app.js**.

<img src="../../../../images/app-js.jpg" alt="add-website" style="display: block"></a>

**Step 6**: Click on **web files** and <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a> called **js**.

<img src="../../../../images/js-folder1.jpg" alt="js folder" style="display: block"></a>

**Step 7**: Click on the new **js folder** in your left menu. Following steps 1 and 2, <a href="/workspace/websites/manage-folder/addfile/">create a file</a> under the folder:

- **app.js**

<img src="../../../../images/js-file1.jpg" alt="js file" style="display: block"></a>

**Step 8**: Download the sample file below, click **Upload** on the right-side menu and add the file you previously downloaded on step 5.

<a href="app.js" download>**app.js**</a>

**Step 9**: Go to your website dashboard and click on **Update Website** and navigate to the **Meta Information** accordion.

**Step 10**: Under **"Global Header Insert"** replace the CDN reference for bootstrap with the following:

```js
<script defer src="/_/js/app.js"></script>
```

## Adding additional SCSS to your site

In this section, we will show you how you can add your own SCSS to you site.

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
