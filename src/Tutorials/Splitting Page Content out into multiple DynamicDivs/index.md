# Splitting Page Content out into multiple DynamicDivs

In the Solodev CMS system, dropzones or DynamicDivs are the building blocks of .stml pages. While it is certainly possible for users to insert all the html content or elements for their pages into one dynamic div, Solodev recommends using a combination of html and .tpl files to build each page using components based upon sections of your html. 

The components can include html body content, headers, footers, navbars, forms, or even DynamicDivs themselves. 

This tutorial shows users how to split their page content out into multiple DynamicDivs.

## Templates

There are numerous ways in which a user can organize these components, but Solodev recommends organizing page components into the following templates:

* **Base Template** -- This template includes the essential resources that is included in every webpage on the site. A base template can consist of a header and footer, references to asset files or dynamic divs. Since the creation of each page, produces one dynamic div or dropzone, Solodev recommends adding additional dropzones to the base template using the following line of html code:

```js
<div class="dynamicDiv"></div>
```

* **Interior Template** - This is placed in the base template and serves as the interior Section of your webpage.
* **Sectional Template** - A sectional template is a high level overview page with links to different sections of your website

This example will create a product page for the SpaceJet themed website using the base template, nav template and footer template provided. This example will show the user how to create and insert a two column interior template and insert into the page along with a sectional template inserted into the right most column of the interior template.

## Step 1 - Create a Page

* Open the **www** folder
* Click **Add Page**
* Enter the **Name**, **Title** and **Description** of the page.
* Click **Submit**
* The user is directed to the page.

## Step 2 - Insert the base template, nav bar and footer

* On the newly created product page, select the empty dropzone. 
* Click the **base-template.tpl** file located in the **web files -> templates -> base-template** folder to insert the template into the dropzone. 
* Click **Publish**. 
* The user will see three empty dynamic divs. 
* Click the dynamic div at the top of the page.
* Click on the **top-nav.tpl** file located in the **web files -> templates -> navigation** folder to insert the top-nav bar into the drop zone. 
* Click **Publish**.
* Click the dynamic div at the bottom of the page. 
* Click the **footer.tpl** file located in the **web files -> templates -> footer** folder to insert the footer into the dropzone. 
* Click **Publish**.