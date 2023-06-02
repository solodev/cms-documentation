# Basic Shortcodes

Learn more about basic shortcodes 

The previous document provided an overview of shortcodes. This document will discuss the basic shortcodes, their attributes, and use case scenarios.

Admin Only – This shortcode specifies that the content inside of the ```[admin_only]``` ```[/admin_only]``` code should be shown on the backend. Developers may use this shortcode in conjunction with ```[non_admin_only]``` ```[/non_admin_only]``` shortcode to partition frontend and backend content and prevent them from interfering with one another. This shortcode has no attributes. 

Shortcode:

```
[admin_only]
```
  Code Example:

```
[admin_only]
 hello backend
[/admin_only]
``` 

Non Admin – This shortcode specifies that the content inside of the ```[non_admin_only]``` ```[/non_admin_only]``` should be shown on the frontend. Developers may use this shortcode in conjunction with ```[admin_only]``` ```[/admin_only]``` shortcode to partition front end and backend content and prevent them from interfering with one another. This shortcode has no attributes.



  Shortcode:

``` 
[non_admin_only]
```
  Code Example:

 ```
[non_admin_only]
  hello frontend
[/non_admin_only]
```

Get Asset File URL -- This self-closing shortcode returns the URL path to the specified asset file in the database. Typically, this shortcode is used within an entry or repeater shortcode.

 
  Attributes:

**Attributes** | **Description** 
:--- | ---
```[id](required)``` | The file's asset file ID.

  Shortcode:
 

 
```
[get_asset_file_url]
```
  Code Example:
 

 
```
[entry]
<div class="blog-wrapper">
<h1>{{article_title}}</h1>
<img alt="[get_asset_file_name id={{article_image}}]" class="img-responsive" src="[get_asset_file_url id={{blog_image}}]" />
<p>{{article_content}}</p>
</div>
[/entry]
```



Get Asset File Name -- Returns the name of the specified asset file. 

 


  Attributes:
 

 

**Attributes** | **Description** 
:--- | ---
```[id](required)``` | The file's asset file ID.


  Shortcode:

 
```
[get_asset_file_name]
```
  Code Example:

 
```
<div class="row">
  <div class="col-md-8">
    <img alt="[get_asset_file_name id={{image}}]" src="[get_asset_file_url id={{image}}]">
  </div>
</div>
```

Print Date -- Returns the date formatted according to PHP's date function.

 


  Attributes:

 

**Attributes** | **Description** 
:--- | ---
```[format](required)``` | The date format to be returned. A list of date functions can be found here. 
```[datestring](optional)``` | Preformatted date that needs to be changed into another format. 
```[timestamp](optional)``` | Epoch timestamp (default: Today's Date).


  Shortcode:
 

 
```
[print_date]

 ``` 
 
 Code Example:
 

 
```
<div class="col-sm-8">
  <h2>{{event_title}}</h2>
  <span class="news-date">[print_date format="F d, Y g:ia" timestamp="{{start_time}}"]</span>
</div>

```

Lower Case -- Returns lowercased version of the string value within the enclosing shortcode. This shortcode has no attributes.

 


  Shortcode:
 

 ```
[lower_case]
```
  Code Example:

 

```
<a class="[lower_case]{{event_title}}[/lower_case]">
  <img alt="[get_asset_file_url id={{clientLogo}}]" src="[get_asset_file_url id={{clientLogo}}]">
</a>
```


Report Errors -- Enables PHP error messages and warning for development purposes. This self-closing shortcode contains no attributes. 

 


  Shortcode:
 

 
```
[report_errors]
```
  Code Example:

 
```
[admin_only] [report_errors] [/admin_only]
```

No Spaces -- Removes spaces from the content within the enclosing shortcode to make it database friendly. This shortcode contains no attributes. 

 


  Shortcode:
 

 
```
[no_spaces]
```

  Code Example:

 
```
<a class="[no_spaces]{{event_title}}[/no_spaces]">
  <img alt="Image" src="/images/logo.png">
</a>
```
