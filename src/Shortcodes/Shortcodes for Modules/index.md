# Shortcodes for Modules

Learn more about shortcodes used for multi-functional, date-based elements called modules.

The previous article showed users how to leverage shortcodes for pages and sections. This article provides an overview of shortcodes used for multi-functional, date-based elements called modules. 

 

Repeater – refers to the user interface template, printing fields in the form of PHP variables through an $item array.

 


  Attributes:

**Attributes** | **Description** 
:--- | ---
```[id](required)``` | ID of the module from which the data is pulling. 
```[limit](required)``` | 0 starting at the first entry and the second integer specifying the number of entries to display on the page.
```[order](optional)``` | Specifies how the repeater will organize the data such as by “start_time desc” which will organize entries by the latest start time first.
```[type](optional)``` | Specifies the type of manager that provides the data (default: calendar).
```[display_type]```(optional) | Changes the date filter (Options: “news”, “events”).
```[category_filter]```(optional) | Filter list of entries by category.
```[tag_filter]``` (optional) | Filter list of entries by tags selected in a textbox.
```[pages]```(optional) | Paginate list of entries.
```[offset]``` (optional) | Skip entries at the start of the query. (For example, offset = “5” skips the first five entries in the list.
```[where]```(optional) | Perform a SQL query on the database.
```[website_filter]```(optional) | Filter list of news items by website.



{{field_name}}

Insert the names of your HTML fields inside these curly braces to print out the appropriate variable. You can find the field_name on your Table Schema.

 
 


  Shortcode:

 
```
[repeater]
```
  
Code Example:

 
```
[repeater id="23" limit="0,4"]
  <h2>{{event_title}}</h2>
  <p>{{blog_intro}}</p>
[/repeater]
```

 

Detail – shows the specifics of an individual entry from a repeater template. 

 


  Attributes:

**Attributes** | **Description** 
:--- | ---
```[id](optional)``` | Used to reference a specific entry or map the list of repeater entries to detail page entries.



  Shortcode:

 
```
[entry]
```

  Code Example:

 ```

[entry]
  <h1>{{name}}</h1>
  <p>{{blog_content}}</p>
[/entry]
```

 

Sub Entry – Queries a specific entry within a detail page.

 

  

Attributes: 

**Attributes** | **Description** 
:--- | ---
```[id](required)``` | Used to query a specific entry.

 

  Shortcode:
 

 
```
[sub_entry]
``` 

 


  Code Examples:

 
```
[entry]
  <h1>{{name}}</h1>
  [sub_entry id="###"]
    <p>{{name}} - {{blog_content}}}</p>
  [/sub_entry]
[/entry]
```



Category Filter – Provides users with the ability to filter module entries by category.

 

 
  
Attributes: 

**Attributes** | **Description** 
:--- | ---
```[id](required)``` | Used to query a specific entry.
```[category_group_id]```(required) | Specifies the ID of the datatable category group from which to pull the module’s categories.
```[calendar_id]```(optional) | Specifies the ID of the calendar from which to pull its categories.
```[all_value]```(optional) | Enables Bootstrap Selectize to function, improving the UI of the category dropdown. When set to “ ” it uses the first option in the select box as the all value.
```[all_text]```(optional) | Sets the All value.
```[input_class]```(optional) | Adds classes to the category filter.
```[input_id]```(optional) | Adds an ID to the category filter.

 
 

 


  Shortcode:

 
```
[category_filter]
```

  Code Example:

 

[category_filter category_group_id="32" all_value=" "]
 

 

 

 

 

 

Date Filter – Provides users with the ability to filter module entries by date.

 


  Attributes:
 
**Attributes** | **Description** 
:--- | ---
```[class]```(optional) | Add classes to the date filter.
```[id]```(optional) | Add an ID to the date filter.
```[years]```(optional) | Comma separated years(2001, 2002, 2005), or two years separated by dash (2000-2010).
```[years_format]```(optional) | Accepts “range,” “simple”(default: range).
```[show_all_option]```(optional) | Show all dates.
```[all_value=””]``` | Enables Bootstrap Selectize.
```[label]```(optional) | Generates the label for the select box.

 

  Shortcode:

 
```
[date_filter]
```

  Code Example:

 
```
<div class="row">
  <div class="col-md-4">
   [date_filter years="2010-2015" all_value=" "]
  </div>
</div>
```

 

Month List – Loops through the months of the year starting with current month. 

 



  Attributes:

**Attributes** | **Description** 
:--- | ---
```[class]```(required) | Specify a class for CSS styling.
```[start_year]```(optional) | The default start year (default: current year).
```[start_month]```(optional) | The default start month(default: current month).

 

  Shortcode:

 
```
[month_list]
```
Code Example:

 

[month_list class="month_list"]
 

 

Search Filter -- Allows the user to search module entries using strings or integers.

 


  
Attributes:

**Attributes** | **Description** 
:--- | ---
```[id]```(optional) | Specify an id for CSS styling. Applies to the search bar.
```[class]```(optional) | Specify a class for CSS styling. Applies to the search bar.
```[button_id]```(optional) | Specify an id for CSS styling. Applies to the button.
```[button_class]```(optional) | Specify a class for CSS styling. Applies to the button.
```[button_text]```(optional) | Set the text for the search button.

 
 


  Shortcode:

 
```
[search_filter]
```

  Code Example:

 
```
[search_filter]
``` 

 

Tag Filter – Provides users with the ability to filter module entries by tags.

 

Attributes:

**Attributes** | **Description** 
:--- | ---
```[id]```(optional) | Specify an id for CSS styling.
```[class]```(optional) | Specify a class for CSS styling.

 

  Shortcode:

 
```
[tag_filter]
```

  Code Example: 

 

[tag_filter id="my-select-id" class="my-select-class]
 

 

 

 

Entry Tags Repeat – Retrieves the tags to be displayed.

 

  

Attributes: 

**Attributes** | **Description** 
:--- | ---
```[id]```(required) | id of the manager where the data is pulling from.
```[type]```(optional) | Specifies what type of manager the data is pulling from (default: calendar).


Shortcode: 

 
```
[entry_tags_repeat]
```

  Code Example:

 
```
[entry_tags_repeat id="{{calendar_entry_id}}"]
      <a class="text-capitalize" href="/blog/tags/{{{name}}}.stml"><u>  {{{title}}}</u></a>
[/entry_tags_repeat]
```

 

Category Repeat – Retrieves the categories to be displayed.

 

Attributes: 

**Attributes** | **Description** 
:--- | ---
```[parent_id]```(optional) | Allows the user to create subcategories.
```[order]```(optional) | Rank the categories.

 

  Shortcode:
 

 
```
[cat_repeat]
```

  Code Example:

 

[cat_repeat parent_id = "###"]
 

 

 

 

Repeat Entries Exist – Checks to see if blog entries exist.

 


Attributes:

**Attributes** | **Description** 
:--- | ---
```[id]```(required) | id of the manager where the data is pulling from.
```[type]```(optional) | Specifies what type of manager the data is pulling from (default: calendar).
```[order]```(optional) | Specifies how the repreater will organize the data such as by "start_time desc" which will organize entries by the latest start time first. 
```[display_type]```(optional) | Changes the date filter (Options: “news”, “events”).
```[category_filter]```(optional) | Filter list of entries by category.
```[tag_filter]```(optional) | Filter list of entries by tags selected in a textbox.
```[pages]```(optional) | Paginate list of entries.
```[offset]```(optional) | Skip entries at the start of the query. (For example, offset = “5” skips the first five entries in the list.
```[where]```(optional) | Perform a SQL query on the database.
```[website_filter]```(optional) | Filter list of news items by website.

{{field_name}}

Insert the names of your HTML fields inside these curly braces to print out the appropriate variable. You can find the field_name on your Table Schema.

 
 

 

 


  Shortcode:

 
```
[repeater_entries_exists]
```

  Code Example:

 

[repeater_entries_exists id = '###' type = "calendar" limit="0,4"]
 

 

Calendar Entry Attachments – Gathers the attachments of a module and prints them, much like a repeater, onto a single web page. This is used in the photo gallery modules and document share. 

 

Note: The photo gallery option must be activated on the module. The steps to do so are outlined below: 

 

Activating Photo Gallery

Open the blog module and click Modify.

 


Click the arrow in the Advanced accordion in the modal window to expand it.

 


Scroll down and click the checkbox beside Enable Attachments / Gallery.

Click Submit. 



  
Attributes:


**Attributes** | **Description** 
:--- | ---
```[id]```(required) | ID of the module from which the data pulling.

 
 

Shortcode: 

 
```
[calendar_entry_attachments_repeat]
```
  Code Example:
 

 
```
[calendar_entry_attachments_repeat id={{calendar_entry_id}}]
  <div class="item">
    <a data-gallery="multiimages" data-toggle="lightbox" href="{{{attachment_url}}}">
      <img src="{{{attachment_url}}}" />
    </a>
  </div>
[/calendar_entry_attachments_repeat]
```

 

Calendar Entry Categories – Gathers the categories of a module and prints them onto a single web-page.

 

Attributes: 

**Attributes** | **Description** 
:--- | ---
```[id]```(optional) | ID of the module from which the data is coming.
 

  Shortcodes:

 
```
[entry_categories_repeat]
```

  Code Example:

 
```
<div class="services">
  <h3>Services Included</h3>
  [entry_categories_repeat id="{{calendar_entry_id}}"]
    <p>{{{title}}}</p>
  [/entry_categories_repeat]
</div>
```

 

Full Calendar – This shortcode creates a representation of the full calendar plugin and retrieves calendar entries using the calendar ID of the module in question.

 

Full Calendar Includes – Returns libraries for a full calendar fullcalendar.io/ This is used on the events modules. This shortcode has no attributes. 

 


  Note:

 

```[js_full_calendar_includes]``` and ```[js_full_calendar]``` work together. You will need to include both codes in the page in order for it to work.

Add ```[js_full_calendar_includes]``` at the top of the page.

You need to choose Events as the calendar type.

Attributes ```[js_full_calendar]```:

**Attributes** | **Description** 
:--- | ---
```[calendar_id]```(required) | ID of the calendar
 

  Shortcode:

 
```
[js_full_calendar_includes]
[js_full_calendar]
```
  
Code Example:

 
```
[js_full_calendar calendar_id="110"]
```

 

Event Date – Prints the event end date, typically along with the event’s start date and end time according to PHP’s date function. This is used in the events module.

 

Attributes: 

**Attributes** | **Description** 
:--- | ---
```[format]```(required) | The date format to be returned.
```[separator]```(optional) | Separates the month, day, and year.



  Shortcode:

 
```
[print_event_end]
```
  
Code Example:

 
```
[entry]
  <h2>{{name}}</h2>
  <div class="media">
    [print_date format="F j, Y g:ia" timestamp="{{start_time}}"] [print_event_end format="F j, Y g:ia"]
  </div>
[/entry]
```

 

Solodev Form -- Populates the form from a module by a specified datatable ID. 

  
Attributes:

**Attributes** | **Description** 
:--- | ---
```[id]```(required) | ID of the datatable where to GET and POST entries.
Title | Name of the folder to display on the frontend.

 

  ShortCode:

 
```
[form]
```

  Code Example:

 

[form id="40"]


 

Landing Page Form – place a form in blog entries and landing pages.

 


Attributes:

**Attributes** | **Description** 
:--- | ---
```[id]```(required) | id of the form.


  Shortcode:

 
```
[landing_page_form]
```

  Code Example:

 
```
[landing_page_form id="40"]
```
  
 

 

CAPTCHA – Generates a CAPTCHA code image with input field to be included on a form to limit computer-generated form entries. This shortcode has no attributes. 

 


  Shortcode:

 

[captcha]


  Code Example:

 

[captcha]

<input type="submit" class="btn btn-primary" value="Submit">
 