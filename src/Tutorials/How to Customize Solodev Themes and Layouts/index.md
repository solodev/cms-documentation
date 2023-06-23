# How to Customize Solodev Themes and Layouts

While .tpl files allow users ti recycle blocks of HTML code for each section or page of their website, users can leverage .tpl files to customize their website's layout, color scheme and logo. The first example will show the user how to customize the top-navbar. In the screenshot provided below, the navbar has a white background colour. This example shows the user how to change the colour of the top-navbar.

## How to customize themes in Solodev

### Customizing the navbar

* Expand the **web files -> templates -> navigation folder**. 
* Open the file labeled **top-nav.tpl**.
* Place the cursor within the brackets of the opening navigation tag.
* Since the example site leverages bootstrap, add the following style and class.
```js
class="navbar-light" style="background-color: #e3f2fd;"
```
* Click **Publish**.
* Open the **index.stml** page to see the changes.   

### How do I customize the layout of page?

The first example discussed how to leverage .tpl files to customize themes. This example shows the user how to use tpl files to structure the layout of a page. A screenshot of the news page with a navbar, title and footer are provided below. 

Here, the user will customize the page title, create an additional dynamic div in the .tpl file, create an html file with structured content, and insert it into the newly created dynamic div. Start by creating a **news.tpl** file in the **web files -> template** folder; a **news.stml** file in the **www** folder; and an **news.html** file in the **web files** ->  **content** -> **news folder**. 

## Step 1 - Adding a Dynamic div

* Open the **news.tpl** file. 
* Type the following code to insert a third dynamic div.
```js
<div class="dynamicDiv"></div>
```
* Click **Publish**.
* Open the **news.stml** file to preview the results. 

## Step 2 - Stylize the header

* In the **news.tpl** file, delete the code in the section tags.
* Add the following code inside the section tags
```js
<div class="jumbotron jumbotron-fluid text-center text-dark" style="background-color: #ffffff;">
    <div class="container">
        <h1 class="display-4">[page_title]</h1>
        <small class="font-weight-light">Get the latest in SpaceJet News</small>
    </div>
</div>
```
* Click **Publish**

## Step 3 - Create an html file, structure your content, and add it to the page

* Open the newly created **news.html** file
* Click the **Source** button to structure your content with html code
* Click **Publish**
* Open the **news.stml** file
* Click the empty dynamic div
* Click the news.html to insert the newly structured content
* Click **Publish**
