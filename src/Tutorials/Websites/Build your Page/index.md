# Build your Page

In this article, we'll show you how to actually build a page by adding components inside dynamic divs.

Below is a product page of a site we will use as an example:

<img src="../../../images/ships-product-page.jpg" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Step 1: Identify the components of the page

Looking at the image above, there are 6 main components on the page:

1. Top Navigation area
2. The hero section with a title of "Ships"
3. Breadcrumbs
4. The main content area with a left-side navigation and content on the right side
5. A footer contact form
6. The footer

That means initially we need 6 blue drop zones on the page. 

## Step 2: Add the DynamicDivs in the Base Template

Since we need 6 main components, we need to create 6 dynamicDivs in the base template:

!!! Note: 
The text inside brackets is for leaving comments.  All the text inside <!--  --> characters will be uncommented therefore won't be visible on the page.
!!!
 
<img src="../../../images/base-template-dynamic-divs.png" alt="LunarXP-Homepage-Wireframe" style="width: 50%; display: block"></a>

## Step 3: Insert the Base Template on the page

In Solodev, by default, every empty stml page comes with at least one blue drop zone:

<img src="../../../images/empty-page.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

Insert the basetemplate.tpl in the blue drop zone:

<img src="../../../images/empty-page(1).png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

As you can see, we now have 6 blue drop zones inside the basetemplate.tpl.

## Step 4: Insert the main components inside the base template
Insert all the components beginning with the top navigation template ending with the footer inside the base template:

## Top Navigation

<img src="../../../images/1-top-nav.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Hero Section
 
<img src="../../../images/2-hero.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Breadcrumbs
 
<img src="../../../images/3-breadcrumbs.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Main Content Area
 
<img src="../../../images/4-main-content-area.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Footer Contact Form
 
<img src="../../../images/5-footer-form.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Footer
 
<img src="../../../images/6-footer.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

Whenever you need to add more drop zones, pick the template you'd like to add drop zones to and add more dynamicDivs in the template file. Make sure you pick the right location to insert the dynamicDiv inside the template file as the drop zone will appear in the exact place you placed the dynamicDiv code.