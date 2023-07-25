# Use of DynamicDivs

In Solodev, every component is placed inside a page by using the blue drop zones.

When you select and HTML file or a template file on the file tree, you hover over a blue drop zone and place the file inside the drop zone. All these drop zones are created by DynamicDivs. Dynamic Divs allow you to use HTML markup to create drop zones where you can insert content onto a web page. The Dynamic Div system works extremely well with the Bootstrap grid system as it allows developers to insert Dynamic Divs into the Bootstrap grid allowing you to easily insert content once the layout of the page has been created. Here is the simple HTML code to create a DynamicDiv:

```js
<div class="dynamicDiv"></div>
```

As an example, let's take a look at a section inside a sample basetemplate file:
```js
<!-- Top Nav -->
<div class="dynamicDiv"></div>
<!-- End Top Nav -->

<!-- Hero -->
<div class="dynamicDiv"></div>
<!-- End Hero -->

<!-- Breadcrumbs -->
<div class="dynamicDiv"></div>
<!-- End Breadcrumbs -->

<!-- Content -->
<div class="dynamicDiv"></div>
<!-- End Content Template -->

<!-- Footer Form -->
<div class="dynamicDiv"></div>
<!-- End Footer Form -->

<!-- Footer -->
<div class="dynamicDiv"></div>
<!-- End Footer -->
```

For each component area such as the top navigation, the hero section, breadcrumbs, the main content area, and footer there is a div container with a dynamicDiv class. This means that in the code above, since there are 6 dynamicDivs, when you insert the template on the page, there will be 6 empty blue drop zones available for you to insert your top navigation, the hero section, breadcrumbs, the main content area, and footer templates. You can create as many blue drop zones as you want by inserting dynamicDivs inside your templates.

Each Dynamic Div is marked with dotted lines. Every time you select a Dynamic Div, it will highlight in blue.

Dynamic Divs are the connecting elements between your HTML content and STML pages. Generally speaking, your STML pages will contain several Dynamic Divs. These drop-zones allow you to easily drop HTML content into the page itself.
