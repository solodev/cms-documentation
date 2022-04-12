
# Resources

*From shortcodes to shortcuts, find quick tips and tricks to improve your content operations.* 

---

## Shortcodes

Shortcodes allows the user to enhance the functionality of their site and gives them the ability to create special features that will distinguishes their site from the competition. Solodev shortcodes are the contextual templating language of Solodev. With a templating language, users are able to code directly against their site content – allowing developers and content editors to work in tandem. 

 

Similar to other templating, Solodev uses double brackets `[]` to open and close templated expressions and double curly braces for HTML fields `{{ }}`. Inside these brackets a developer can use shortcode functions and reference content schema properties. These templating expressions are written alongside standard HTML. 

 

This framework enables developers to create special kinds of content and functionality that users can attach to certain pages by adding the corresponding shortcode into the page text. Shortcodes handle all of the tricky parsing eliminating the need for writing a custom regular expression for each shortcode. Helper functions are included for setting and fetching default attributes. This framework supports both self-closing and enclosing shortcodes. 

---

### Basic shortcodes

**Admin Only:** This shortcode specifies that the content inside of the `[admin_only] [/admin_only]` code should be shown on the backend. Developers may use this shortcode in conjunction with `[non_admin_only] [/non_admin_only]` shortcode to partition frontend and backend content and prevent them from interfering with one another. This shortcode has no attributes. 

 


***Shortcode:***

`[admin_only]`

***Code Example:*** 

``` 
[admin_only]
 hello backend
[/admin_only]

```

---


**Non Admin:** This shortcode specifies that the content inside of the `[non_admin_only] [/non_admin_only]` should be shown on the frontend. Developers may use this shortcode in conjunction with `[admin_only] [/admin_only]` shortcode to partition front end and backend content and prevent them from interfering with one another. This shortcode has no attributes.

***Shortcode:***

`[non_admin_only]`

***Code Example:***

```
[non_admin_only]
  hello frontend
[/non_admin_only]

```

---

**Get Asset File URL:** This self-closing shortcode returns the URL path to the specified asset file in the database. Typically, this shortcode is used within an entry or repeater shortcode.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(required) | The file's asset file ID. |


***Shortcode:***

`[get_asset_file_url]`

***Code Example:***

```html
[entry]
<div class="blog-wrapper">
<h1>{{article_title}}</h1>
<img alt="[get_asset_file_name id={{article_image}}]" class="img-responsive" src="[get_asset_file_url id={{blog_image}}]" />
<p>{{article_content}}</p>
</div>
[/entry]

```

---

**Get Asset File Name:** Returns the name of the specified asset file. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(required) | The file's asset file ID. | 

***Shortcode:***

`[get_asset_file_name]`

***Code Example:***

```html
<div class="row">
  <div class="col-md-8">
    <img alt="[get_asset_file_name id={{image}}]" src="[get_asset_file_url id={{image}}]">
  </div>
</div>

```

---

**Print Date:** Returns the date formatted according to PHP's [date function](https://www.php.net/manual/en/function.date.php).

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[format]`(required) | The date format to be returned. A list of date functions can be found [here](https://www.php.net/manual/en/function.date.php). |
| `[datestring]`(optional) | Preformatted date that needs to be changed into another format. |
| `[timestamp]`(optional) | Epoch timestamp (default: Today's Date). |

***Shortcode:***

`[print_date]`

***Code Example:***

```html
<div class="col-sm-8">
  <h2>{{event_title}}</h2>
  <span class="news-date">[print_date format="F d, Y g:ia" timestamp="{{start_time}}"]</span>
</div>

```

---

**Lower Case:** Returns lowercased version of the string value within the enclosing shortcode. This shortcode has no attributes.

***Shortcode:***

`[lower_case]`

***Code Example:***

```html

<a class="[lower_case]{{event_title}}[/lower_case]">
  <img alt="[get_asset_file_url id={{clientLogo}}]" src="[get_asset_file_url id={{clientLogo}}]">
</a>

```

---

**Report Errors:** Enables PHP error messages and warning for development purposes. This self-closing shortcode contains no attributes. 

***Shortcode:***

`[report_errors]`

***Code Example:***

`[admin_only] [report_errors] [/admin_only]`

**No Spaces:** Removes spaces from the content within the enclosing shortcode to make it database friendly. This shortcode contains no attributes. 

***Shortcode:***

`[no_spaces]`

***Code Example:***

```html

<a class="[no_spaces]{{event_title}}[/no_spaces]">
  <img alt="Image" src="/images/logo.png">
</a>

```

---

### Shortcodes for users

***Contact Form Login:** provides a form wrapper for users to login on the frontend of the website. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[forward_to]`(required) | URL of the account page that the user is directed to after submitting login credentials. |

***Shortcode:***

`[contact_form_login]`

***Code Example:***

```html
[contact_form_login forward_to="/my-account/" username_field="username" password_field="password"]
          <div class="form-group">
            <label for="username">Email</label>
            <input type="text" id="username"  name="username" class="form-control">
          </div>
          <div class="form-group">
            <div class="d-flex align-items-center justify-content-between">
              <label for="password">Password</label>
              <!--<a href="" class="text-underline mb-2">Show Password</a>-->
            </div>
            <input type="password" id="password"  name="password" class="form-control">
          </div>
          <div class="form-group mt-4">
            <input type="submit" class="btn btn-lg btn-sky-blue w-100 btn-rounded-lg" value="Sign in">
          </div>
[/contact_form_login]

```

---

**Contact Form Signup:** provides a form wrapper that enables users to register for an account. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[forward_to]`(required) | URL of the account page that the user is directed to after signing up. |

***Shortcode:***

`[contact_form_signup]`

***Code Example:***

```html
[contact_form_signup forward_to="/my-account/" username_field="email" password_field="password"]
        <div class="form-group row">
          <label class="col-md-3 control-label" for="email">Email</label>  
          <div class="col-md-9">
            <input id="email" name="email" class="form-control input-md required validate" required="" type="text">
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 control-label" for="email">Password</label>  
          <div class="col-md-9">
            <input id="password" name="password" class="form-control input-md required validate" required="" type="password">
          </div>
        </div>

        <div class="form-group row">
          <label class="col-md-3 control-label" for="email">Confirm Password</label>  
          <div class="col-md-9">
            <input id="password_confirm" name="password_confirm" class="form-control input-md required validate" required="" type="password">
          </div>
        </div>

        <div class="form-group text-center">
          <input class="btn btn-primary" value="REGISTER" name="image" type="submit" width="164" height="27" />
        </div>
[/contact_form_signup]

```

---

**Contact Form Update:** provides a form wrapper that allows users to update their accounts. This shortcode has no attributes.

***Shortcode:***

`[contact_form_update]`

***Code Example:***

```html

[contact_form_update username_field="accountname" password_field="password" email_field="email"]
<div class="row">
  <div class="col-sm-12">
      <div class="form-group">
         <h2>Login Information</h2>
      </div>
      <div class="form-group">
          <label class="control-label" for="oldaccountname">User Name</label>
          <input id="=accountname" disabled readonly name="accountname" class="form-control" type="text" value="<?=$contact->accountname?>">
      </div>
      <div class="form-group">
          <label class="control-label" for="password">New Password</label>
          <input id="password" name="password" class="form-control" type="password" value="">
      </div>
      <div class="form-group">
          <label class="control-label" for="password_confirm">Confirm Password</label>
          <input id="password_confirm" name="password_confirm" class="form-control" type="password" value="">
      </div>
      <div class="form-group">
          <input type="submit" class="btn form-control btn-primary" name="Submit" value="Update User">
      </div>
  </div>
</div>

[/contact_form_update]

```
---

**Contact Form Forgot Password:** Populates a forgot password utility linked to the Solodev form.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[forward]`(required) | URL of the page that the user is directed to after submitting the form. |

***Shortcode:***

`[contact_form_forgot]`

***Code Example:***

```html

[contact_form_forgot forward_to="/password-confirm.stml" username_field="username" password_field="password" email_field="mail"]
          <div class="form-group row">
            <label class="col-md-3 control-label" for="email">Email</label>  
            <div class="col-md-9">
              <input id="username" name="username" class="form-control input-md required validate" required="" type="text">
            </div>
          </div>
         <div class="form-group text-center">
          <input class="btn btn-primary" value="Reset" name="image" type="submit" width="164" height="27" />
        </div>
[/contact_form_forgot]

```

---

**Contact Form Reset Password** provides a form wrapper that allows users to reset their password.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[forward_to]`(required) | URL of the page that the user is directed to after resetting their password. |


***Shortcode:***

`[contact_form_reset]`

***Code Example:***

```html

[contact_form_reset forward_to="/my-account/"]
         <div class="form-group">
          <input class="form-control input-lg rounded-0" id="password" name="password" placeholder="Password" type="password" required >
        </div>
        <div class="form-group">
          <input class="form-control input-lg rounded-0" id="password_confirm" name="password_confirm" placeholder="Confirm Password" type="password" required>
        </div>
         <div class="form-group text-center">
          <input class="btn btn-primary" value="Reset" name="image" type="submit" width="164" height="27" />
        </div>
[/contact_form_reset]

```

---

### Shortcodes for pages & sectionals

**Page Title:** Retrieves the current title of a page.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[exclude]`(optional) | When this option is set the function does not search for the specified title. |

***Shortcode:***

`[page_title]`

***Code Example:***

`<h1>[page_title]</h1>`

---

**Page Description:** Retrieves the description of the page from the fields in the Meta tab of the corresponding page. This self-enclosing shortcode contains no attributes.

 ***Shortcode:***

 `[page_description]`

***Code Example:***

```html
<h1>[page_title]</h1> --> Services
<p>[page_description]</p> --> The Best Services on the Web!

```

---

**Parent Folder Title:** Retrieves the current title of the parent folder. This self-enclosing short code contains no attributes. 

***Shortcode:***

`[parent_title]`

***Code Example:***

```html
<h2 class="aside-header">[parent_title]</h2> 
<a class="btn btn-arrow btn-motive" href="/contact-us.stml"><span>Contact Us</span>
  <img src="/core/fileparse.php/14751/urlt/assets/images/arrow-right.png" alt="Arrow Right">
</a>

```

---

**Parent Description:** Retrieves the current description of the parent folder. This self-enclosing short code contains no attributes. 

***Shortcode:***

`[parent_description]`

***Code Example:***

`<p>[parent_description]</p>`

---

**Section Title:** Retrieves the folder title that contains a page but reverts to the page title if the parent folder of the page is the site root. This self-enclosing shortcode has no attributes.

***Shortcode:***

`[section_title]`

***Code Example:***

```html
<section class="ct-page_title">
  <h1>[section_title]<h1>
</section>

```

---

**Section Description:** This retrieves the folder description that contains a page but refers to the page description if parent folder of the page is the site root. This self-enclosing shortcode has no attributes.

***Shortcode:***

`[section_description]`

***Code Example:***

```
<div class="ct-page_title-content">
   <h1>About Us</h1>
   <p>[section_description]</p>
</div>

```

---

**Solodev Nav:** Displays the structured folders in the navigation (left or main). 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[parent_category_id]`(required) | The ID of the www folder. |
| `[levels]`(optional) | How deep the navigation should display(numeric value). |
| `[nav_class]`(optional) | Classes can be added. |

***Shortcode:***

`[solodev_nav]`

***Code Example:***

```html
<div class="nav main-nav">
  [solodev_nav parent_category_id="14742" levels="2" nav_class="navbar-nav navbar-right"]
</div>

```

---

**Breadcrumb:** Returns the formatted breadcrumb tail for the current page. This shortcode creates dynamic breadcrumbs on every web page to which it is added. Breadcrumb refers to a navigation element that displays the path in which the current page resides. The breadcrumb displays all parent folders up to the www folder. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[delimter]`(optional) | Sets the delimiter between folders. Supports font awesome and text. | 
| `[home_overwrite]`(optional) | Overrides the home link to replace the word home with an icon. Supports font awesome and text. |

***Shortcode:***

`[breadcrumb]`

***Code Example:***

```html

<div class="breadcrumb-container">
  <ul class="breadcrumb">
   [breadcrumb home_overwrite='<i class="fas fa-home fa-lg"></i>' delimiter="-"]
  </ul>
</div>

```

---

**Social Share:** Adds social share buttons that link to social media accounts using images or Font Awesome icons.

 ***Attributes [social_share_img]:***

| Attributes | Description |
| ----------- | ----------- |
| `[domain]`(required) | "www.yourdomain.com". |
| `[protocol]`(required) | HTTP or HTTPS. |
| `[facebook]`(required) | Boolean (true or false). |
| `[twitter]`(required) | Boolean (true or false). |
| `linkedin`(required) | Boolean (true or false). |
| `[image_location]`(optional) | Path to the image folder. If not set, the default is /assets/portal/images/solodev. |
| `[image_extension]`(optional) | Extension of the social media image. If not set the default is .jpg. |


***Attributes  [social_share_fa]:***

| Attributes | Description |
| ----------- | ----------- |
| `[domain]`(required) | "www.yourdomain.com". |
| `[protocol]`(required) | HTTP or HTTPS. |
| `[facebook]`(required) | Boolean (true or false). |
| `[twitter]`(required) | Boolean (true or false). |
| `linkedin`(required) | Boolean (true or false). |

***Shortcode:***

```
[social_share_img] 
[social_share_fa]

```

***Code Example using Font Awesome:***

```html
<div class="col-md-4">
  [social_share_fa domain="www.webcorpco.com" protocol="http" facebook="true" twitter="true" linkedin="true"]
</div>

```

***Code Example using Images:***

```html

<div class="col-md-4">
  [social_share_img domain="www.webcorpco.com" protocol="http" facebook="true" twitter="true" linkedin="true"]
</div>

```

---

**Page Path:** Retrieves the URL path to a page. This self-enclosed attribute has no attributes. 

***Shortcode:***

`[page_path]`

***Code Example:***

```

<ul>
  <li><a href="[page_path]">Home</a></li>
<ul>

```

---

**URL var:** returns the name of the $_REQUEST variable that is set. Developers can use this to dynamically populate confirmation or thank you form submission pages. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[name]`(required) | name of the $_REQUEST variable being used. |

***Shortcode:***

`[url_var]`

***Code Example:***

```

[url_var name = "firstname"]
Code block here
[/url_var]

```

---

### Shortcodes for modules

**Repeater:**  refers to the user interface template, printing fields in the form of PHP variables through an $item array.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(required) | ID of the module from which the data is pulling. |
| `[limit]`(required) | 0 starting at the first entry and the second integer specifying the number of entries to display on the page. |
| `[order]`(optional) | Specifies how the repeater will organize the data such as by “start_time desc” which will organize entries by the latest start time first. |
| `[type]`(optional) | Specifies the type of manager that provides the data (default: calendar). |
| `[display_type]`(optional) | Changes the date filter (Options: “news”, “events”). |
| `[category_filter]`(optional) | Filter list of entries by category. |
| `[tag_filter]`(optional) | Filter list of entries by tags selected in a textbox. |
| `[pages]`(optional) | Paginate list of entries. |
| `[offset]`(optional) | Skip entries at the start of the query. (For example, offset = “5” skips the first five entries in the list. |
| `[where]`(optional) | Perform a SQL query on the database. |
| `[website_filter]`(optional) | Filter list of news items by website. |
| `{{field_name}}` | Insert the names of your HTML fields inside these curly braces to print out the appropriate variable. You can find the field_name on your Table Schema. |


***Shortcode:***

`[repeater]`

***Code Example:***

```

[repeater id="23" limit="0,4"]
  <h2>{{event_title}}</h2>
  <p>{{blog_intro}}</p>
[/repeater]

```

---

**Detail:** shows the specifics of an individual entry from a repeater template. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
|`[id]`(optional) | Used to reference a specific entry or map the list of repeater entries to detail page entries. | 

***Shortcode:***

`[entry]`

***Code Example:***

```html
[entry]
  <h1>{{name}}</h1>
  <p>{{blog_content}}</p>
[/entry]

```
---

**Sub Entry:** Queries a specific entry within a detail page.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(required) | Used to query a specific entry. |

***Shortcode:***

'[sub_entry]`

***Code Example:***

```html

[entry]
  <h1>{{name}}</h1>
  [sub_entry id="###"]
    <p>{{name}} - {{blog_content}}}</p>
  [/sub_entry]
[/entry]

```
---

***Category Filter:** Provides users with the ability to filter module entries by category.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[category_group_id]`(required) | Specifies the ID of the datatable category group from which to pull the module’s categories. | 
| `[calendar_id]`(optional) | Specifies the ID of the calendar from which to pull its categories. |
| `[all_value]`(optional) | Enables Bootstrap Selectize to function, improving the UI of the category dropdown. When set to “ ” it uses the first option in the select box as the all value. |
| `[all_text]`(optional) | Sets the All value. |
| `[input_class]`(optional) | Adds classes to the category filter. |
| `[input_id]`(optional) | Adds an ID to the category filter. |

***Shortcode:***

`[category_filter]`

***Code Example:***

`[category_filter category_group_id="32" all_value=" "]`

---

***Date Filter:** Provides users with the ability to filter module entries by date.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[class]`(optional) | Add classes to the date filter. | 
| `[id]`(optional) | Add an ID to the date filter. |
| `[years]`(optional) | Comma separated years(2001, 2002, 2005), or two years separated by dash (2000-2010). | 
| `[years_format]`(optional) | Accepts “range,” “simple”(default: range). |
| `[show_all_option]`(optional) | Show all dates. | 
| `[all_value=””]` | Enables Bootstrap Selectize. |
| `[label]`(optional) | Generates the label for the select box. |

***Shortcode:***

`[date_filter]`

***Code Example:***

```html

<div class="row">
  <div class="col-md-4">
   [date_filter years="2010-2015" all_value=" "]
  </div>
</div>

```

---

**Month List:** Loops through the months of the year starting with current month.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| [class](required) | Specify a class for CSS styling. |
| [start_year](optional) | The default start year (default: current year). |
| [start_month](optional) | The default start month(default: current month). |


***Shortcode:***

`[month_list]`

***Code Example:***

`[month_list class="month_list"]`

---

**Search Filter:** Allows the user to search module entries using strings or integers.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(optional) | Specify an id for CSS styling. Applies to the search bar. | 
| `[class]`(optional) | Specify a class for CSS styling. Applies to the search bar. |
| `[button_id]`(optional) | Specify an id for CSS styling. Applies to the button. |
| `[button_class]`(optional) | Specify a class for CSS styling. Applies to the button. |
| `[button_text]`(optional) | Set the text for the search button. |

***Shortcode:***

`[search_filter]`

***Code Example:*** 

`[search_filter]`

---

**Tag Filter:** Provides users with the ability to filter module entries by tags. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(optional) | Specify an id for CSS styling. | 
| `[class]`(optional) | Specify a class for CSS styling. | 


***Shortcode:***
`[tag_filter]`

***Code Example:*** 

`[tag_filter id="my-select-id" class="my-select-class]`

---

**Entry Tags Repeat:** Retrieves the tags to be displayed.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(required) | id of the manager where the data is pulling from. |
| `[type]`(optional) | Specifies what type of manager the data is pulling from (default: calendar). |


***Shortcode:***

`[entry_tags_repeat]`


***Code Example:*** 

```html
[entry_tags_repeat id="{{calendar_entry_id}}"]
      <a class="text-capitalize" href="/blog/tags/{{{name}}}.stml"><u>  {{{title}}}</u></a>
[/entry_tags_repeat]

```

---

**Category Repeat:** Retrieves the categories to be displayed.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[parent_id]`(optional) | Allows the user to create subcategories. |
| `[order]`(optional) | | 

***Shortcode:***

`[cat_repeat]`

***Code Example:*** 

`[cat_repeat parent_id = "###"]`

---

**Repeat Entries Exist:** Checks to see if blog entries exist. 

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(required) | id of the manager where the data is pulling from. |
| `[type]`(optional) | Specifies what type of manager the data is pulling from (default: calendar). | 
| `[order]`(optional) | Specifies how the repreater will organize the data such as by "start_time desc" which will organize entries by the latest start time first. |
| `[display_type]`(optional) | Changes the date filter (Options: “news”, “events”). |
| `[category_filter]`(optional) | Filter list of entries by category. |
| `[tag_filter]` (optional) | Filter list of entries by tags selected in a textbox. |
| `[pages]` (optional) | Paginate list of entries. |
| `[offset]` (optional) | Skip entries at the start of the query. (For example, offset = “5” skips the first five entries in the list. |
| `[where]`(optional) | Perform a SQL query on the database. |
| `[website_filter]`(optional) | Filter list of news items by website. |
| `{{field_name}}` | Insert the names of your HTML fields inside these curly braces to print out the appropriate variable. You can find the field_name on your Table Schema. |

***Shortcode:***

`[repeater_entries_exists]`

***Code Example:*** 

`[repeater_entries_exists id = '###' type = "calendar" limit="0,4"]`

**Calendar Entry Attachments:** Gathers the attachments of a module and prints them, much like a repeater, onto a single web page. This is used in the photo gallery modules and document share. 

***Note:*** The photo gallery option must be activated on the module. The steps to do so are outlined below.

***Activating Photo Gallery***

- Open the blog module and click Modify.

![activate your photo gallery step 1](act_photo_gallery_1.png)

- Click the arrow in the Advanced accordion in the modal window to expand it.

![activate your photo gallery step 2](act_photo_gallery_2.png)

- Scroll down and click the checkbox beside Enable Attachments / Gallery.

- Click Submit. 

![activate your photo gallery step 2](act_photo_gallery_3.jpg)

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(required) | ID of the module from which the data pulling. |

***Shortcode:***

`[calendar_entry_attachments_repeat]`

***Code Example:*** 

```html

[calendar_entry_attachments_repeat id={{calendar_entry_id}}]
  <div class="item">
    <a data-gallery="multiimages" data-toggle="lightbox" href="{{{attachment_url}}}">
      <img src="{{{attachment_url}}}" />
    </a>
  </div>
[/calendar_entry_attachments_repeat]

```

---

**Calendar Entry Categories:** Gathers the categories of a module and prints them onto a single web-page.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(optional) | ID of the module from which the data is coming. |

***Shortcode:***

`[entry_categories_repeat]`

***Code Example:*** 

```html

<div class="services">
  <h3>Services Included</h3>
  [entry_categories_repeat id="{{calendar_entry_id}}"]
    <p>{{{title}}}</p>
  [/entry_categories_repeat]
</div>

```

---

**Full Calendar:** This shortcode creates a representation of the full calendar plugin and retrieves calendar entries using the calendar ID of the module in question 

**Full Calendar Includes:** Returns libraries for a full calendar fullcalendar.io/ This is used on the events modules. This shortcode has no attributes. 

  
***Note:*** 

- [js_full_calendar_includes] and [js_full_calendar] work together. You will need to include both codes in the page in order for it to work.

- Add [js_full_calendar_includes] at the top of the page.

- You need to choose Events as the calendar type.

***Attributes [js_full_calendar]:***

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[calendar_id]`(required) | ID of the calendar. |


***Shortcode:***

```
[js_full_calendar_includes]
[js_full_calendar]

```

***Code Example:*** 

`[js_full_calendar calendar_id="110"]`

---

**Event Date:** Prints the event end date, typically along with the event’s start date and end time according to [PHP’s date function](https://www.php.net/manual/en/function.date.php). This is used in the events module.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[format]`(required) | The date format to be returned. | 
| `[separator]`(optional) | Separates the month, day, and year. | 

***Shortcode:***

`[print_event_end]`

***Code Example:*** 

```html

[entry]
  <h2>{{name}}</h2>
  <div class="media">
    [print_date format="F j, Y g:ia" timestamp="{{start_time}}"] [print_event_end format="F j, Y g:ia"]
  </div>
[/entry]

```

---

**Solodev Form:** Populates the form from a module by a specified datable ID. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
|`[id]`(required) | ID of the datatable where to GET and POST entries. |
| `[title]`(optional) | Name of the folder to display on the frontend. |


***Shortcode:***

`[form]`

***Code Example:*** 

`[form id="40"]`

---

**Landing Page Form:** place a form in blog entries and landing pages.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(required) | id of the form. | 


***Shortcode:***

`[landing_page_form]`

***Code Example:*** 

`[landing_page_form id="40"]`

---

**CAPTCHA:** Generates a CAPTCHA code image with input field to be included on a form to limit computer-generated form entries. This shortcode has no attributes. 

***Shortcode:***

`[captcha]`

***Code Example:*** 

```
[captcha]

<input type="submit" class="btn btn-primary" value="Submit">

```

---

###  Miscellaneous shortcodes

**Google Search with Ads:** Embed Google Custom Search with ads on the website.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[google_cse_id]`(required) | Specify Google Custom Search ID. | 


***Shortcode:***

`[google_search]`

***Code Example:*** 

`[google_search google_cse_id="XXXXXXXXXXXXXXXXXX"]`

---

**Google Search No Ads:** Embeds Google Custom Search without ads on the website.


***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[google_cse_id]`(required) | Specify Google Custom Search ID. |
| `[google_api_key]`(required) | Google Custom Search ID. |


***Shortcode:***

`[google_website_search]`


***Code Example:*** 

`[google_website_search google_cse_id="XXXXXXXXXXXXXXXXXX" google_api_key="XXXXXXXXXXXXXXXXXX"]`

---

**YouTube:** Embed YouTube videos to your website. The YouTube video shortcode has two attributes, one required and one optional, listed below.


***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[youtube id]`(required) | Specify YouTube video id. |
| `[youtube aspect_ratio]`(optional) | Specify YouTube video aspect ratio. Default is 16:9. |


***Shortcode:***

`[youtube id="fg_O2cdOQxA"]`

***Code Example:*** 

To obtain the video id: 

- Browse to the YouTube page where your video is hosted.

- Click the Share button on the right just below the vldeo.

![Embedding youtube videos with shortcodes](youtube_1.png)

- Select the Embed Link and copy the video's YouTube ID[^1]. 

![Embedding youtube videos with shortcodes](youtube_2.png)

![Embedding youtube videos with shortcodes](youtube_3.png)

- Insert the shortcode at the appropriate place in the tpl or html file associated with your page. 

- `[youtube id="fg_O2cdOQxA"]`

- Review and click Publish to save your changes.

**Note:** In terms of the best practices, we don't recommend uploading any videos to the CMS due to file size and playback performance. For alternate streaming options such as Wowza, Vimeo, or Wistia, please ==[contact us](help@solodev.com)==.


[^1]: For example, if the link reads https://www.youtube.com/embed/fg_O2cdOQxA?controls=0, you only need to copy the fg_O2cdOQxA after the forward slash.

---

**Conditionals:** Provides functionality to add a conditional statement to the template. Much like standard if/else statements, the `[cond]` shortcodes allows the user to create conditional statements with little coding knowledge.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[type]`(required) | is, is_not, greater_than, less_than. |
| `[subject]`(required) | The thing being compared. A subject is typically a variable. For example: `[contype=is_not subject=”start_time” || [value=”end_time”] The event has not started yet…[/cond]`. |
| `[value]`(required) | What to compare it to. |


***Shortcode:***

`[cond]`

***Code Example:*** 

`[cond type=is subject="{{index}}%3" value=0] code goes here… [/cond]`

---

**Sub Conditional:** Operates much like an if/else or else statement. It is the child of the parent conditional statement. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[type]`(required) | is, is_not, greater_than, less_than. | 
| `[subject]`(required) | The thing being compared. A subject is typically a variable. For example: `[contype=is_not subject=”start_time” || [value=”end_time”] The event has not started yet…[/cond]`. |
| `[value]`(required) | What to compare it to. |


***Shortcode:***

`[sub_cond]`

***Code Example:*** 

```html
[cond type=is subject="{{index}}%3" value=0] 
  [sub_cond type=is_not subject="{{index}}" value=0]
    </div>
    <div class="row">
  [/sub_cond] 
[/cond]

```

---

**Is Set:** Verifies that a given variable is set. For example, is_set can be used to verify if a user variable is set, such as active, and execute functions accordingly. 

| Attributes | Description |
| ----------- | ----------- |
|`[value]`(required) | Value of the object set. |

***Shortcode:***

`[is_set]`

***Code Example:*** 

```html

[is_set value="{{image}}"]
  <img alt="{{event_title}}" class="img-thumbnail img-responsive" src="[get_asset_file_url id={{image}}]"> 
[/is_set]

```

---

**Is Empty:** Verifies that a given variable is empty. For example, is_empty can be used to verify is a user variable empty and execute functions accordingly. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[value]`(required) | Value of the object set. |


***Shortcode:***

`[is_empty]`

***Code Example:*** 

```html
[is_empty value="{{image}}"]
  <img alt="{{event_title}}" class="img-thumbnail img-responsive" src="/core/fileparse.php/268/urlt//placehold.it/360x245"> 
[/is_empty]

```

---

**Value Set:** Verifies that a specified value set. 

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[override]`(required) | Used if the default being passed as an argument is not set. |
| `[default]`(optional) | Default attributes. | 

***Shortcode:***

`[value_isset]`


***Code Example:*** 

```html

<div landing-section-firstContent">
  <h1 class="landing-h1">[value_isset default="{{name}}" override="{{h1_title}}"]</h1>
</div>

```

---

**Random:** Returns a random number.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[min]`(optional) | The lowest value to return(default: 0). | 
| `[max]`(optional) | The highest value to return (default: 50000). |

***Shortcode:***

`[random]`

***Code Example:*** 

`[random min = 3 max = 7] (prints a random number between 3 and 7 that includes 3 and 7).`

--- 

**Month Filter:** Month filter from January to December.


***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[id]`(optional) | Specify an id for CSS styling. | 
| `[class]`(optional) | Specify a class for CSS styling. |
| `[label]`(optional) | Specifies a label for the select box. |


***Shortcode:***

`[month_filter]`

***Code Example:*** 

```html
<div class="row">
  <div class="col-md-4 form-group">
    [month_filter class="month_filter"]
  </div>
</div>

```

---

**Login/Logout:** Creates a link to log in or log out of a given session.

***Attributes:***

| Attributes | Description |
| ----------- | ----------- |
| `[logout_redirect]`(optional) | Where to send the user after they are logged out (default: /). | 
| `[login_page]`(optional) | Page where the user can log in (default: /login.stml). |


***Shortcode:***

`[login_logout_link]`

***Code Example:*** 

```

[login_logout_link logout_redirect="/contact/" login_page="/welcome/"]

```

### Building custom shortcodes

With Solodev CMS, users can utilize shortcodes to build dynamic, feature rich applications with maximum functionality and little coding knowledge. Solodev CMS 9 allows developers to create their own custom shortcodes that can be leveraged to create custom modules inside Solodev. This article teaches developers how to build custom shortcodes in Solodev 9. For example, this document will build a hello world short code. 

 

**Step 1: Create a PHP short code file** 
 

- Open the www folder and create a shortcodes folder. 

- Open the shortcodes folder and create a shortcodes.php file. 

- Select Code under the File Type section of the Add File modal and append the .php extension to the file name. 

- In the shortcodes.php file create a shortcode function called ‘hello’ The name of the function is the name of the shortcode. In the code below, attributes are passed to the function as arguments and the required Solodev function is called.  

```php
<?php
function hello($atts, $content = null){

notify_solodev_shortcode();

}
?>

```

- Create a PHP variable called $hello to store the string value “hello world” and return the contents of the variable: 

```

$hello = "Hello world!";

return $hello;

```

- After creating a function to return the contents of the $hello variable, add this function to create the shortcode: 

`add_shortcode('hello', 'hello');`

- Click Publish.

- The full code block for the hello shortcode is listed below: 

```php

<?php
function hello($atts, $content = null){

notify_solodev_shortcode();

$hello = "Hello world!";

return $hello;

}

add_shortcode('hello', 'hello');

?>

```

**Note:** Every shortcode function should be written in the following format -- passing the variables $atts and $content as arguments and assigning $content to a null value.

```php
function foo_bar($atts, $content = null) {
  notify_solodev_shortcode(); }

```

**Step 2: Mapping the shortcode file to the website**

- To map the shortcode created, open the website and click Settings to bring up the Settings modal. 

- Expand the Advanced accordion. 

- Under the ‘Custom Shortcodes File’ section click Browse.

- Select the shortcodes.php file. 

- Click Submit. 


**Step 3: Adding the shortcode to a .tpl file**

- Expand the web files -> content directory and open the folder that will contain the .tpl file. 

- Create the .tpl file. Select Code under the File Type and append .tpl to the filename. 

- Open the .tpl file and type: `hello`

- Click Publish.


**Step 4: Displaying the contents of the shortcode on the website**

- Open the page that will contain the .tpl file with the shortcode.

- Select the dropzone.

- Click the .tpl file to insert it into the dropzone. 

- Click Publish.

- The contents of the string are displated on the page.

**Note:** When the $content value is set to null, users can set the content within the shortcode using the following format: 

```

[hello]

My content goes here

[/hello]

```

An example of this is reflected in the repeater shortcode:

```html

[repeater id="##" limit="0,2"]
<h2>{{event_title}}</h2>
<p>{{blog_intro}}</p>
<a href="{{path}}">{{event_title}}</a>
[/repeater]

```

**Note:** Note: The $atts variable allows users to set strings and variables when using shortcodes. With the following print_date shortcode,

 ```php
<?php

function print_date($atts, $content = null){
notify_solodev_shortcode();
if(!isset($atts['format']))
    return "format is required";
  if($atts["datestring"])
    $timestamp = strtotime($atts["datestring"]);
  else if($atts["timestamp"])
    $timestamp = $atts["timestamp"];
  else
    $timestamp = time();
  return date($atts["format"], $timestamp);
}
add_shortcode('print_date', 'print_date');
?>

 ```
 
 users can print the date and time by entering the following short code into a .tpl file and adding it to a page: 

 `[print_date format="F j, Y, g:i a"]`