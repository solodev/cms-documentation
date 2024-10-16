In Solodev, you can update any page on your website under the www folder. You can directly edit your page using in-line editing tools with a visual preview, or by accessing component code elements for each div on your page. 

<p><img src="/static/images/websites/page/page.jpg" alt="Micro Main Page"></p>

**Name** | **Description**
:--- | ---
[Publish](/workspace/websites/pages/publish) | Push your code or content to live production. 
[Draft](/workspace/websites/pages/draft) | Create a draft version of your code or content.
[Stage](/workspace/websites/pages/stage) | Set up a staged version of your code or content for review as part of your workflow. 
[Copy](/workspace/websites/pages/copy) | Copy a page or asset for editing or additional use elsewhere in your website. 
[Move](/workspace/websites/pages/move) | Relocate a page or asset based on your taxonomy.
[Delete](/workspace/websites/pages/delete) | Delete a page or asset permanently from your website.
[History](/workspace/websites/pages/history) | Review previous versions of your content or code and restore a saved version.
[Add to File Group](/workspace/websites/pages/add-to-file-group) | Assign your page or asset to a specific file group.

!!!NOTE:
You will need to [add a website](/workspace/websites/add-website/) to your CMS before adding a page.
!!!

## Toolbar Actions

Pages also have the option to upload a file, create or manage tasks, expand your screen or collapse the right menu.

<p><img src="/static/images/websites/page/page-toolbar-actions.jpg" alt="Page Toolbar Actions" style="width: 50%;"></p>

**Name** | **Description**
:--- | ---
Mobile View | Toggle to a responsive view for a smartphone.
Tablet View | Toggle to a responsive view for a tablet. 
Desktop View | Toggle to a responsive view for a desktop/laptop computer.
Show/Hide Dynamic Divs | Apply a blue dotted line to identify the sections of your page.
Fullscreen | Fully expand the rendered view of your page to remove toolbars.
View Page | Launch a new browser tab to view your live, published page.

## STML Files

The most important assets in your www folder are STML files (.stml), the individual website files that are served in a browser when a user visits your website. STML files are built with templates using [dynamic divs](#using-dynamic-divs). A template imports common elements to a page such as the header and footer, while dynamic divs allow you to include unique page content, such as text, images, and more.

While a page is composed of hypertext markup and served in a browser, all pages in the Solodev CMS are given a “.stml” extension. An STML is an HTML file that contains server-side includes (SSI), which are used to generate page-generated content. STML files are processed by the server when a user accesses the related webpage.

!!!Note:
If your website uses a CDN and you need to immediately clear a page’s cache, you can publish the page to trigger a cache refresh.
!!!

## Using dynamic divs

Page templates are composed of dynamic divs – or “dropzones” – where HTML and content can be inserted and arranged in various places on a website page. Dynamic divs work fluidly with the Bootstrap grid system, allowing you to easily insert content once the layout of your page has been created. Here is the simple HTML code to create a dynamic div in Solodev:

```js
<div class="dynamicDiv"></div>
```

Dynamic divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several dynamic divs, allowing you to easily insert HTML content into the page itself.

Dynamic divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several dynamic divs, allowing you to easily insert HTML content into the page itself.

## Add a file to a page

To insert your file into your page, [follow these simple steps](/tutorials/cms/file-to-page/).