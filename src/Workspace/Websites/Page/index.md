In Solodev, you can update any page on your website under the www folder. You can directly edit your page using in-line editing tools with a visual preview, or by accessing component code elements for each div on your page. 

<p><img src="../../../images/websites/page/page.jpg" alt="Micro Main Page"></p>

!!!NOTE:
You will need to [add a website](/workspace/websites/add-website/) to your CMS before adding a page.
!!!

## STML Files

The most important assets in your www folder are STML files (.stml), the individual website files that are served in a browser when a user visits your website. STML files are built with templates using [dynamic divs](#using-dynamic-divs). A template imports common elements to a page such as the header and footer, while dynamic divs allow you to include unique page content, such as text, images, and more.

While a page is composed of hypertext markup and served in a browser, all pages in the Solodev CMS are given a “.stml” extension. An STML is an HTML file that contains server-side includes (SSI), which are used to generate page-generated content. STML files are processed by the server when a user accesses the related webpage.

## Using dynamic divs

Page templates are composed of dynamic divs – or “dropzones” – where HTML and content can be inserted and arranged in various places on a website page. Dynamic divs work fluidly with the Bootstrap grid system, allowing you to easily insert content once the layout of your page has been created. Here is the simple HTML code to create a dynamic div in Solodev:

```js
<div class="dynamicDiv"></div>
```

Dynamic divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several dynamic divs, allowing you to easily insert HTML content into the page itself.

Dynamic divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several dynamic divs, allowing you to easily insert HTML content into the page itself.