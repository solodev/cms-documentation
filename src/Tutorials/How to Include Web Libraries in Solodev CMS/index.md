# How to Include Web Libraries in Solodev CMS

With Solodev CMS, users can import any web library or framework that can be included from a script or a CDN. Solodev recommends that users utilize simple web libraries or frameworks (for e.g. jQuery, Bootstrap, or Google Fonts) when creating websites in the CMS system. This article shows the user how to include the jQuery library from a script file and CDN. 


## Step 1 – Including web libraries via Script file

* Open the website. 
* Expand the **www ->** _ folder (Create a _ folder if one does not exist).
* Open the **script** folder.
* Click the **Upload** button. 
* Drag the **jquery-3.4.1.min.js** file into the dropbox and click **Upload**.
* Click the tab with the website url to open the website
* Click the **Update Website** button.
* Scroll down to the **Global Header Insert** text area.
* Use script tags and enter the file path as the value of the src attribute to load the **jquery-3.4.1.min.js** file.
```js
<script src="/_/script/jquery-3.4.1.min.js"></script>
```
* Click **Submit**.

## Step 2 Including web libraries via CDN

* Open the Website.
* Click the **Update Website** button.
* Scroll down to the **Global Header Insert** text area.
* Use script tags and enter the url of the CDN as the value of the src attribute to load the jQuery library.
```js
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
``` 
* Click **Submit**. 

***Note:* In the example below, an html file (about-us.html) with a simple animation script is created and inserted in the about-us.stml file.**
