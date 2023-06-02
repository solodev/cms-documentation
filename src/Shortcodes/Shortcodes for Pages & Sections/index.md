# Shortcodes for Pages & Sections

Learn more about the shortcodes used for pages and sectionals.


The previous article provided an overview of basic shortcodes and their use cases. This article provides an overview of the shortcodes that make it easy to add complex functionality to webpages. The shortcodes, use cases, and attributes are provided below.

 

Page Title – Retrieves the current title of a page. 

 


  Attributes:


**Attributes** | **Description** 
:--- | ---
```[exclude]```(optional) | When this option is set the function does not search for the specified title. 

 


  Shortcode:
 

 
```
  [page_title]
```

  Code Example:

 

<h1>[page_title]</h1>




Page Description – Retrieves the description of the page from the fields in the Meta tab of the corresponding page. This self-enclosing shortcode contains no attributes.

 


  Shortcode:
 

 
```
[page_description]
```
  Code Example:

 
```
<h1>[page_title]</h1> --> Services
<p>[page_description]</p> --> The Best Services on the Web!
```

 

Parent Folder Title – Retrieves the current title of the parent folder. This self-enclosing short code contains no attributes. 

 


  Shortcode:

 
```
[parent_title]
```

  Code Example:

 
```
<h2 class="aside-header">[parent_title]</h2> 
<a class="btn btn-arrow btn-motive" href="/contact-us.stml"><span>Contact Us</span>
  <img src="/core/fileparse.php/14751/urlt/assets/images/arrow-right.png" alt="Arrow Right">
</a>
```

Parent Description – Retrieves the current description of the parent folder. This self-enclosing short code contains no attributes. 

 


  Shortcode:
 

 
```
[parent_description]
```

  Code Example:

 
```
<p>[parent_description]</p>
```

 

Section Title – Retrieves the folder title that contains a page but reverts to the page title if the parent folder of the page is the site root. This self-enclosing shortcode has no attributes.

 


  Shortcode:
 

 
```
[section_title]
```

  Code Example:

 
```
<section class="ct-page_title">
  <h1>[section_title]<h1>
</section>
```

 

Section Description – This retrieves the folder description that contains a page but refers to the page description if parent folder of the page is the site root. This self-enclosing shortcode has no attributes. 

 

Shortcode: 

 
```
[section_description]
```

  Code Example:

 
```
<div class="ct-page_title-content">
   <h1>About Us</h1>
   <p>[section_description]</p>
</div>
```

 

 

Solodev Nav – Displays the structured folders in the navigation (left or main). 

 


  Attributes:

**Attributes** | **Description** 
:--- | ---
```[parent_category_id]```(required) | The ID of the www folder. 
```[levels]```(optional) | How deep the navigation should display(numeric value).  
```[nav_class]```(optional) | Classes can be added. 

 


  Shortcode:
 

 
```
[solodev_nav]
```

  Code Example:

 
```
<div class="nav main-nav">
  [solodev_nav parent_category_id="14742" levels="2" nav_class="navbar-nav navbar-right"]
</div>
```

 

Breadcrumb – Returns the formatted breadcrumb tail for the current page. This shortcode creates dynamic breadcrumbs on every web page to which it is added. Breadcrumb refers to a navigation element that displays the path in which the current page resides. The breadcrumb displays all parent folders up to the www folder. 

 

  

Attributes: 

**Attributes** | **Description** 
:--- | ---
```[delimter]```(optional) | Sets the delimiter between folders. Supports font awesome and text.  
```[home_overwrite]```(optional) | Overrides the home link to replace the word home with an icon. Supports font awesome and text. 


  Shortcode:

 
```
  [breadcrumb]
```

  Code Example:

 
```
<div class="breadcrumb-container">
  <ul class="breadcrumb">
   [breadcrumb home_overwrite='<i class="fas fa-home fa-lg"></i>' delimiter="-"]
  </ul>
</div>
```

 

Social Share -- Adds social share buttons that link to social media accounts using images or Font Awesome icons.

 

Attributes ```[social_share_img]```: 

**Attributes** | **Description** 
:--- | ---
```[domain]```(required) | "www.yourdomain.com".
```[protocol]```(required) | HTTP or HTTPS.
```[facebook]```(required) | Boolean (true or false).
```[twitter]```(required) | Boolean (true or false).
```[linkedin]```(required) | Boolean (true or false).
```[image_location]```(optional) | Path to the image folder. If not set, the default is /assets/portal/images/solodev.
```[image_extension]```(optional) | Extension of the social media image. If not set the default is .jpg.  


 
 

Attributes ```[social_share_fa]```: 

**Attributes** | **Description** 
:--- | ---
```[domain]```(required) | "www.yourdomain.com".
```[protocol]```(required) | HTTP or HTTPS.
```[facebook]```(required) | Boolean (true or false).
```[twitter]```(required) | Boolean (true or false).
```[linkedin]```(required) | Boolean (true or false).


  Shortcode:

 
```
[social_share_img] 
[social_share_fa]
```

  Code Example using Font Awesome:

 
```
<div class="col-md-4">
  [social_share_fa domain="www.webcorpco.com" protocol="http" facebook="true" twitter="true" linkedin="true"]
</div>
```

  Code Example using Images:

 
```
<div class="col-md-4">
  [social_share_img domain="www.webcorpco.com" protocol="http" facebook="true" twitter="true" linkedin="true"]
</div>
```

 

Page Path – Retrieves the URL path to a page. This self-enclosed attribute has no attributes. 

 


  Shortcode:

 
```
[page_path]
```
Code Example: 

 
```
<ul>
  <li><a href="[page_path]">Home</a></li>
<ul>
```

 

URL var – returns the name of the $_REQUEST variable that is set. Developers can use this to dynamically populate confirmation or thank you form submission pages. 

 


  Attributes:
 

**Attributes** | **Description** 
:--- | ---
```[name]```(required) | name of the $_REQUEST variable being used.

 
  Shortcode:
 

 
```
[url_var]
```

  Code Example:
 

 
```
[url_var name = "firstname"]
Code block here
[/url_var]
```
