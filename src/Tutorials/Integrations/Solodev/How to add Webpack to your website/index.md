# How to add Webpack to your website

Webpack is a modular bundler that compiles JavaScript files, SCSS, and CSS files into packages that are used to manage frontend assets at the browser level. You will need these assets installed with your website to add more advanced styling features. In this tutorial, you will learn how to add Webpack and set up both JavaScript and SCSS. 

## Prerequisites

- You will need to complete the <a href="/tutorials/cms/add-website/#adding-a-site">How to add a website</a> tutorial.
- You will need to complete the <a href="/tutorials/cms/add-page/">How to add a page</a> to a website tutorial.
- Familiarity with Bootstrap is highly recommended. 

## Setting up your web files

First, you will need to install a **package.json** file to identify and understand how to handle your website's dependencies. It is composed of functional metadata about your project, such as its name and version.

**Step 1**: Under the **web files** folder, <a href="/workspace/websites/folder/add-file/">create a file</a> called **package.json**, select **Code** as a File Type and click **Submit**. 

<img src="../../../../images/webpack/add-package-json.jpg" alt="Add package.json modal">

<br>
<br>

**Step 2**: Paste the sample json code below into the newly created file and click **Submit**.

```js
{
  "name": "solodev_webpack",
  "version": "1.0.0",
  "description": "Solodev Webpack",
  "scripts": {
    "compile": "npm run css && npm run js",
    "css": "webpack --config webpack/webpack.css.config.js",
    "js": "webpack --config webpack/webpack.config.js"
  },
  "author": "Solodev",
  "dependencies": {
    "@popperjs/core": "^2.11.4",
    "bootstrap": "^5.2.0",
    "jquery": "^3.6.0"
  },
  "devDependencies": {
    "@babel/core": "^7.16.0",
    "@babel/preset-env": "^7.22.10",
    "@webpack-cli/serve": "^1.7.0",
    "babel-loader": "^8.2.3",
    "clean-webpack-plugin": "^4.0.0",
    "copy-webpack-plugin": "^9.0.1",
    "css-loader": "^6.4.0",
    "css-minimizer-webpack-plugin": "^3.1.1",
    "expose-loader": "^3.1.0",
    "html-webpack-plugin": "^5.5.0",
    "ignore-emit-webpack-plugin": "^2.0.6",
    "mini-css-extract-plugin": "^2.4.3",
    "raw-loader": "^4.0.2",
    "sass": "^1.66.1",
    "sass-loader": "^12.2.0",
    "style-loader": "^3.3.1",
    "webpack": "^5.88.2",
    "webpack-cli": "^4.9.1",
    "webpack-dev-server": "^4.3.1",
    "webpack-merge": "^5.8.0"
  }
}
```

**Step 3**: Under web files, <a href="/workspace/websites/folder/add-folder/">create a new folder</a> called **webpack**. You can add an optional title and description, but it is not required. Once complete, click Submit.

<img src="../../../../images/webpack/add-webpack-folder.jpg" alt="Add webpack folder"></br>

## How to add SCSS to your site

After uploading your package.json file, you will need to install SCSS, which stands for "Sassy Cascading Style Sheets." As the name implies, these are a more advanced variant of standard web CSS (Cascading Style Sheets), and a syntax for the popular CSS preprocessor called SASS, or "Syntactically Awesome Style Sheets."

SCSS can be used to style more complex visual elements on a web page, including hero sliders, galleries, buttons, images, color palettes, fonts, and even themes and layouts.

Next, we will add **Webpack**.

**Step 1**: Under the **web files** folder, <a href="/workspace/websites/folder/add-file/">create a file</a> called **webpack.css.config.js**, select **Code** as a File Type and click **Submit**. 

<img src="../../../../images/webpack/add-webpack-css.jpg" alt="Add webpack css file"></br>

**Step 2**: Paste the sample code below into the newly created file and click **Submit**.

```js
'use strict';

const path = require('path');

// Plugins
const { CleanWebpackPlugin } = require('clean-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const CssMinimizerPlugin = require('css-minimizer-webpack-plugin');
const IgnoreEmitPlugin = require('ignore-emit-webpack-plugin');

module.exports = {
  mode: 'production',
  optimization: {
    minimize: true,
    minimizer: [
      new CssMinimizerPlugin(),
    ],
  },
  context: __dirname,
  entry: {
    app: '../scss/app.scss'
  },
  output: {
    path: path.resolve(__dirname, '../../www/_/css'),
    clean: true,
  },
  resolve: {
    extensions: ['.scss'],
  },
  module: {
    rules: [
      {
        test: /\.(woff|woff2|eot|ttf|otf)$/i,
        type: 'asset/resource',
        generator: {
          filename: 'fonts/[name][ext]'
        },
      },
      {
        test: /\.(jpg|jpeg|gif|png|svg)$/,
        type: 'asset/resource',
      },
      {
        test: /\.s[ac]ss$/i,
        use: [
          MiniCssExtractPlugin.loader,
          // Translates CSS into CommonJS
          'css-loader',
          // Compiles Sass to CSS
          'sass-loader',
        ],
      },
    ]
  },
	plugins: [
    new MiniCssExtractPlugin(),
    new IgnoreEmitPlugin(['app.js']),
    new CleanWebpackPlugin(),
	],
};

```

<!-- <a href="webpack.css.config.js" download>**webpack.css.config.js**</a> -->

**Step 3**: From the left-hand menu, click on the **"_"** folder your created in the previous tutorial under **www**. Using the menu on the right, click **Add Folder**.

<img src="../../../../images/add-page-www.png" alt="Underscore folder" style="width: 25%;"></br>

**Step 4**: In the modal, create a folder called **"css"**. You can add an optional title and description, but it is not required. Once complete, click **Submit**.

<img src="../../../../images/add-css-folder.jpg" alt="Add css folder"></br>

**Step 5**: Click on the **css** folder and <a href="/workspace/websites/folder/add-file/">Add a File</a> called **app.css**.

<img src="../../../../images/add-app-css.jpg" alt="Add css folder"></br>

!!!Note
Please leave this file empty. This file will dynamically include the compiled CSS for your site.
!!!

**Step 6**: Click on **web files** and <a href="/workspace/websites/folder/add-folder/">Add Folder</a> called **scss**. Once Complete, click **Submit**.

<img src="../../../../images/add-scss-folder.jpg" alt="Add SCSS folder"></a>

**Step 7**: On the new scss folder, <a href="/workspace/websites/folder/add-file/">create a file</a> called **app.scss**:

<img src="../../../../images/add-app-scss.jpg" alt="Add app.scss file"></a>

**Step 8**: Paste the following sample code into the file. Once Complete, click **Submit**.

```js
@import '~bootstrap/scss/bootstrap';
```

**Step 9**: Go to your website dashboard and click on **Update Website** and navigate to the **Meta Information** accordion.

<img src="../../../../images/update-website-meta-information.png" alt="Update website meta information" style="width: 500px;"></a>

**Step 10**: Under **"Global Header Insert"** add the following script:

```js
<link rel="stylesheet" href="/_/css/app.css">
```

!!!Note:
If you have a CDN reference for bootstrap added from the previous tutorial, replace it with the above.
!!!

## How to add JavaScript to your site

JavaScript is a high-level, versatile, and widely used programming language primarily known for its ability to add interactivity and dynamic behavior to web pages. It is one of the core technologies of web development, along with HTML (Hypertext Markup Language) and CSS (Cascading Style Sheets). JavaScript is commonly used in conjunction with HTML and CSS to create modern, dynamic, and interactive web applications.

**Step 1**: Under the **web files** folder, <a href="/workspace/websites/folder/add-file/">create a file</a> called **webpack.config.js**, select **Code** as a File Type and click **Submit**. 

<img src="../../../../images/webpack/add-webpack-js-file.jpg" alt="Add webpack js file" style="width: 500px;"></br>

**Step 2**: Paste the sample code below into the newly created file and click **Submit**.

```js
'use strict';

const path = require('path');
const webpack = require('webpack');

// Plugins
const { CleanWebpackPlugin } = require('clean-webpack-plugin');
const TerserPlugin = require('terser-webpack-plugin');

module.exports = {
  mode: 'production',
  optimization: {
    minimize: true,
    minimizer: [
      new TerserPlugin(),
    ],
  },
  context: __dirname,
  entry: {
    app: '../js/app.js'
  },
  output: {
    path: path.resolve(__dirname, '../../www/_/js'),
    filename: '[name].js',
    clean: true,
  },
  resolve: {
    extensions: ['.js'],
  },
  devtool: 'source-map',
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env']
          }
        }
      },
      {
        test: require.resolve('jquery'),
        use: [
          {
            loader: 'expose-loader',
            options: {
              exposes: ['$', 'jQuery']
            }
          }
        ]
      },
    ]
  },
	plugins: [
    new webpack.ProvidePlugin({
      jQuery: 'jquery',
      $: 'jquery',
      jquery: 'jquery'
    }),
    new CleanWebpackPlugin()
	],
};
```

**Step 3**: From the left-hand menu, click on the **"_"** folder your created in the previous tutorial under **www**. Using the menu on the right, click **Add Folder**.

<img src="../../../../images/add-page-www.png" alt="Underscore folder" style="width: 25%;"></br>

**Step 4**: In the modal, create a folder called **"js"**. You can add an optional title and description, but it is not required. Once complete, click **Submit**.

<img src="../../../../images/webpack/add-js-folder.jpg" alt="Add js folder" style="width: 500px;"></a>

**Step 5**: Click on the **js** folder and <a href="/workspace/websites/folder/add-file/">Add a File</a> called **app.js**.

<img src="../../../../images/webpack/add-app-js.jpg" alt="Add js file" style="width: 500px;"></a>

**Step 6**: Click on **web files** and <a href="/workspace/websites/folder/add-folder/">Add Folder</a> called **js**.

<img src="../../../../images/webpack/js-folder-web-files.jpg" alt="JS folder under web files"></a>

**Step 7**: On the new **js folder** in your left menu, <a href="/workspace/websites/folder/add-file/">create a file</a> called **app.js**.

<img src="../../../../images/webpack/add-app-js.jpg" alt="Add js file" style="width: 500px;"></a>

**Step 8**: Paste the following sample code into the file. Once Complete, click **Submit**.

```js
'use strict';

// Packages
import 'jquery';
import '@popperjs/core';
import 'bootstrap';
```

**Step 9**: Go to your website dashboard and click on **Update Website** and navigate to the **Meta Information** accordion.

<img src="../../../../images/update-website-meta-information.png" alt="Update website meta information" style="width: 500px;"></a>

**Step 10**: Under **"Global Header Insert"** add the following script:

```js
<script defer src="/_/js/app.js"></script>
```

!!!Note:
If you have a CDN reference for bootstrap added from the previous tutorial, replace it with the above.
!!!

## Adding additional SCSS to your site

In this section, we will show you how you can add your own SCSS to you site.

**Step 1:** Under web files, click on the **SCSS** folder. 

<img src="../../../../images/scss-folder.png" alt="scss folder"></a>

**Step 2:** Using the right-hand menu, click <a href="/workspace/websites/folder/add-folder/">Add Folder</a>. Name it **utilities**. Once Complete click **Submit**.

<img src="../../../../images/scss-utilities.png" alt="scss utilities"></a>

**Step 3:** Click on the **utilities** folder and, using the same right-hand menu, click <a href="/workspace/websites/folder/add-file/">Add File</a>. Create a new file called **variables.scss** and select **Code** for the **File Type**. Once complete, click **Submit**.

<img src="../../../../images/scss-utilities-vars.png" alt="scss utilities vars"></a>

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

<img src="../../../../images/scss-vars.jpg" alt="SCSS app.scss file with list of imports"></a>

Once complete, click **Publish**.

!!!warning Note:
Your variables.scss file needs to be added before the bootstrap import. All other scss files you add need to go after the bootstrap imports. Solodev highly recommends creating a components folder for all your other styles and to keep some level of organization within your CMS.
!!!!

**Step 6:** Go to your front end and see the new colors.
