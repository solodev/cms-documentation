# Webpack

Webpack is a modular bundler that compiles JavaScript, SCSS, and CSS into packages used to manage frontend assets at the browser level. You'll need it installed with your website to add more advanced styling features. This page covers both the fast way to get started (the Webpack provider) and the full manual setup for SCSS and JavaScript bundling.

## Connect the provider

The fastest way to get a website started with Webpack. Connect the Webpack provider once, map it to a website, and Solodev scaffolds the starter setup into that website's `web files` folder for you -- no manual file creation needed.

<p><img src="../../images/providers/webpack-provider-detail.png" alt="Webpack provider detail page"></p>

From [Providers](/providers/), open **Webpack** and click **Add**. There's nothing to configure -- name the connection and save.

## Map it to a website

Open the website's [Update Website](/websites/website-overview/update-website/) form, expand **Providers**, and choose your connection under **Webpack Connection**. Click **Submit**.

<p><img src="../../images/providers/update-website-webpack-picker.png" alt="Webpack Connection picker inside Update Website's Providers section"></p>

That's it -- Solodev creates these files in the website's `web files` folder at that point:

**File** | **Description**
:--- | ---
[package.json](package.json) | Dependencies and build scripts (`npm run compile`).
[webpack/webpack.config.js](webpack.config.js) | Bundles JavaScript from `js/app.js` into `www/_/js/app.js`.
[webpack/webpack.css.config.js](webpack.css.config.js) | Bundles SCSS from `scss/app.scss` into `www/_/css/app.css`.

!!! Note:
Each file is only ever created once. If a file already exists -- whether from a previous connection or your own manual setup -- Solodev leaves it alone. Reconnecting or resaving never overwrites your changes.
!!!

## Prerequisites for the rest of this page

- You will need to [add a website](/websites/add-website/).
- You will need to [add a page](/websites/add-page/) to that website.
- Familiarity with Bootstrap is highly recommended. 

## Add SCSS to your site

With `package.json` and `webpack/webpack.css.config.js` in place (via the provider above, or the [download](webpack.css.config.js) if you're setting this up by hand), you'll need to install SCSS, which stands for "Sassy Cascading Style Sheets." As the name implies, these are a more advanced variant of standard web CSS (Cascading Style Sheets), and a syntax for the popular CSS preprocessor called SASS, or "Syntactically Awesome Style Sheets."

SCSS can be used to style more complex visual elements on a web page, including hero sliders, galleries, buttons, images, color palettes, fonts, and even themes and layouts.

**Step 1**: From the left-hand menu, click on the **"_"** folder under **www**. Using the menu on the right, click **Add Folder**.

<img src="../../images/add-page-www.png" alt="Underscore folder" style="width: 25%;"></br>

**Step 2**: In the modal, create a folder called **"css"**. You can add an optional title and description, but it is not required. Once complete, click **Submit**.

<img src="../../images/add-css-folder.jpg" alt="Add css folder"></br>

**Step 3**: Click on the **css** folder and [Add a File](/websites/folder-overview/add-file/) called **app.css**.

<img src="../../images/add-app-css.jpg" alt="Add css folder"></br>

!!!Note
Please leave this file empty. This file will dynamically include the compiled CSS for your site.
!!!

**Step 4**: Click on **web files** and [Add Folder](/websites/folder-overview/add-folder/) called **scss**. Once Complete, click **Submit**.

<img src="../../images/add-scss-folder.jpg" alt="Add SCSS folder"></a>

**Step 5**: On the new scss folder, [create a file](/websites/folder-overview/add-file/) called **app.scss**:

<img src="../../images/add-app-scss.jpg" alt="Add app.scss file"></a>

**Step 6**: Paste the following sample code into the file. Once Complete, click **Submit**.

```js
@import '~bootstrap/scss/bootstrap';
```

**Step 7**: Go to your website dashboard and click on **Update Website** and navigate to the **Meta Information** accordion.

<img src="../../images/update-website-meta-information.png" alt="Update website meta information" style="width: 500px;"></a>

**Step 8**: Under **"Global Header Insert"** add the following script:

```js
<link rel="stylesheet" href="/_/css/app.css">
```

!!!Note:
If you have a CDN reference for bootstrap added from the previous tutorial, replace it with the above.
!!!

## Add JavaScript to your site

JavaScript is a high-level, versatile, and widely used programming language primarily known for its ability to add interactivity and dynamic behavior to web pages. It is one of the core technologies of web development, along with HTML and CSS. JavaScript is commonly used in conjunction with HTML and CSS to create modern, dynamic, and interactive web applications.

With `package.json` and `webpack/webpack.config.js` in place (via the provider above, or the [download](webpack.config.js) if you're setting this up by hand):

**Step 1**: From the left-hand menu, click on the **"_"** folder under **www**. Using the menu on the right, click **Add Folder**.

<img src="../../images/add-page-www.png" alt="Underscore folder" style="width: 25%;"></br>

**Step 2**: In the modal, create a folder called **"js"**. You can add an optional title and description, but it is not required. Once complete, click **Submit**.

<img src="../../images/webpack/add-js-folder.jpg" alt="Add js folder" style="width: 500px;"></a>

**Step 3**: Click on the **js** folder and [Add a File](/websites/folder-overview/add-file/) called **app.js**.

<img src="../../images/webpack/add-app-js.jpg" alt="Add js file" style="width: 500px;"></a>

**Step 4**: Click on **web files** and [Add Folder](/websites/folder-overview/add-folder/) called **js**.

<img src="../../images/webpack/js-folder-web-files.jpg" alt="JS folder under web files"></a>

**Step 5**: On the new **js folder** in your left menu, [create a file](/websites/folder-overview/add-file/) called **app.js**.

<img src="../../images/webpack/add-app-js.jpg" alt="Add js file" style="width: 500px;"></a>

**Step 6**: Paste the following sample code into the file. Once Complete, click **Submit**.

```js
'use strict';

// Packages
import 'jquery';
import '@popperjs/core';
import 'bootstrap';
```

**Step 7**: Go to your website dashboard and click on **Update Website** and navigate to the **Meta Information** accordion.

<img src="../../images/update-website-meta-information.png" alt="Update website meta information" style="width: 500px;"></a>

**Step 8**: Under **"Global Header Insert"** add the following script:

```js
<script defer src="/_/js/app.js"></script>
```

!!!Note:
If you have a CDN reference for bootstrap added from the previous tutorial, replace it with the above.
!!!

## Add additional SCSS to your site

In this section, we will show you how you can add your own SCSS to your site.

**Step 1:** Under web files, click on the **SCSS** folder. 

<img src="../../images/scss-folder.png" alt="scss folder"></a>

**Step 2:** Using the right-hand menu, click [Add Folder](/websites/folder-overview/add-folder/). Name it **utilities**. Once Complete click **Submit**.

<img src="../../images/scss-utilities.png" alt="scss utilities"></a>

**Step 3:** Click on the **utilities** folder and, using the same right-hand menu, click [Add File](/websites/folder-overview/add-file/). Create a new file called **variables.scss** and select **Code** for the **File Type**. Once complete, click **Submit**.

<img src="../../images/scss-utilities-vars.png" alt="scss utilities vars"></a>

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
This sample code contains a few color variables you can use to style your template. These variables will overwrite Bootstrap's colors used on our SpaceJet theme.
!!!

**Step 5:** To link your newly created file, click on the **app.scss** file under the **scss** folder. Add the following import before Bootstrap code. Click **Publish**.

```js
@import 'utilities/variables';
```

<img src="../../images/scss-vars.jpg" alt="SCSS app.scss file with list of imports"></a>

Once complete, click **Publish**.

!!!warning Note:
Your variables.scss file needs to be added before the bootstrap import. All other scss files you add need to go after the bootstrap imports. Solodev highly recommends creating a components folder for all your other styles and to keep some level of organization within your CMS.
!!!!

**Step 6:** Go to your front end and see the new colors.
