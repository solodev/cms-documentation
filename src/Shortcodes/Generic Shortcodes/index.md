# Generic Shortcodes

The following shortcodes can be used periodically in any Solodev website.

## Google Search with Ads

Embed Google Custom Search with ads on the website. 

Attributes: 

**Attributes** | **Description** 
:--- | ---
```[google_cse_id](required)``` | Specify Google Custom Search ID.

Shortcode:
 
```js
[google_search]
```
Code Example:
 
```js
[google_search google_cse_id="XXXXXXXXXXXXXXXXXX"]
```
-----------------------------------------------------------------------------------------------------------------------------
 
## Google Search No Ads

Embeds Google Custom Search without ads on the website.

Attributes:

**Attributes** | **Description** 
:--- | ---
```[google_cse_id](required)``` | Specify Google Custom Search ID.
```[google_api_key](required)``` | Google Custom Search ID.

Shortcode: 

```js
[google_website_search]
```
Code Example:

```js
[google_website_search google_cse_id="XXXXXXXXXXXXXXXXXX" google_api_key="XXXXXXXXXXXXXXXXXX"]
```

## YouTube

Embed YouTube videos to your website. The YouTube video shortcode has two attributes, one required and one optional, listed below.   

Attributes: 

**Attributes** | **Description** 
:--- | ---
```[youtube id](required) ``` | Specify YouTube video id
```[youtube aspect_ratio](optional)``` | Specify YouTube video aspect ratio. Default is 16:9 

Shortcode: 
 
```js
[youtube id="fg_O2cdOQxA"]
```

To obtain the video id: 
 
Browse to the YouTube page where your video is hosted.

Click the Share button on the right just below the vldeo. 

Select the Embed Link and copy the video's YouTube ID.  For example, if the link reads `https://www.youtube.com/embed/fg_O2cdOQxA?controls=0`, you only need to copy the **fg_O2cdOQxA** after the forward slash. 

Insert the shortcode at the appropriate place in the tpl or html file associated with your page. 
```js
[youtube id="fg_O2cdOQxA"]
``` 

Review and click Publish to save your changes. 

!!!Note: 
In terms of the best practices, we don't recommend uploading any videos to the CMS due to file size and playback performance. For alternate streaming options such as Wowza, Vimeo, or Wistia, please contact us. 
!!!

## Conditionals

Provides functionality to add a conditional statement to the template. Much like standard if/else statements, the ```[cond]``` shortcodes allows the user to create conditional statements with little coding knowledge.

Attributes:

**Attributes** | **Description** 
:--- | ---
```[type](required)``` | is, is_not, greater_than, less_than.
```[subject](required)``` | The thing being compared. A subject is typically a variable. For example: ```[contype=is_not subject=”start_time” || [value=”end_time”]``` The event has not started yet…```[/cond]```.
```[value](required)``` | What to compare it to. 

Shortcode:

```js
[cond]
```
Code Example:

```js
[cond type=is subject="{{index}}%3" value=0] code goes here… [/cond]
```

----------------------------------------------------------------------------------------------------------------------------- 

## Sub Conditional

Operates much like an if/else or else statement. It is the child of the parent conditional statement. 

Attributes:

**Attributes** | **Description** 
:--- | ---
```[type](required)``` | is, is_not, greater_than, less_than.
```[subject](required)``` |The thing being compared. A subject is typically a variable. For example: ```[contype=is_not subject=”start_time” || [value=”end_time”]``` The event has not started yet…```[/cond]```.
```[value](required)``` | What to compare it to.
 
Shortcode:

```js
[sub_cond]
```
Code Example:
 
```js
[cond type=is subject="{{index}}%3" value=0] 
  [sub_cond type=is_not subject="{{index}}" value=0]
    </div>
    <div class="row">
  [/sub_cond] 
[/cond]
```
-----------------------------------------------------------------------------------------------------------------------------

## Is Set

Verifies that a given variable is set. For example, is_set can be used to verify if a user variable is set, such as active, and execute functions accordingly. 

Shortcode:
 
```js
[is_set]
```
Code Example:
 
```js
[is_set value="{{image}}"]
  <img alt="{{event_title}}" class="img-thumbnail img-responsive" src="[get_asset_file_url id={{image}}]"> 
[/is_set]
```
-----------------------------------------------------------------------------------------------------------------------------

## Is Empty 

Verifies that a given variable is empty. For example, is_empty can be used to verify is a user variable empty and execute functions accordingly. 

Attributes:

**Attributes** | **Description** 
:--- | ---
```[value](required)``` | Value of the object set.  

Shortcode:
 
```js
[is_empty]
```

Code Example:

```js
[is_empty value="{{image}}"]
  <img alt="{{event_title}}" class="img-thumbnail img-responsive" src="/core/fileparse.php/268/urlt//placehold.it/360x245"> 
[/is_empty]
```
----------------------------------------------------------------------------------------------------------------------------- 

## Value Set

Verifies that a specified value set. 

Attributes:

**Attributes** | **Description** 
:--- | ---
```[override](required)``` | Used if the default being passed as an argument is not set.  
```[default](optional)``` | Default attributes.

Shortcode:

```js
[value_isset]
```
Code Example:

```js
<div landing-section-firstContent">
  <h1 class="landing-h1">[value_isset default="{{name}}" override="{{h1_title}}"]</h1>
</div>
```
-----------------------------------------------------------------------------------------------------------------------------

## Random

Returns a random number.

Attributes:

**Attributes** | **Description** 
:--- | ---
```[min](optional)``` | The lowest value to return(default: 0).
```[max](optional)``` | The highest value to return (default: 50000). 

Shortcode:
 
```js
[random]
```
Code Example: 

[random min = 3 max = 7] (prints a random number between 3 and 7 that includes 3 and 7).

----------------------------------------------------------------------------------------------------------------------------- 

## Month Filter

Month filter from January to December. 

Attributes:

**Attributes** | **Description** 
:--- | ---
```[id](optional)``` | Specify an id for CSS styling.
```[class](optional)``` | Specify a class for CSS styling.
```[label](optional)``` | Specifies a label for the select box. 

Shortcode:
 
```js
[month_filter]
```
Example Code: 
 
```js
<div class="row">
  <div class="col-md-4 form-group">
    [month_filter class="month_filter"]
  </div>
</div>
```
-----------------------------------------------------------------------------------------------------------------------------

## Login/Logout

Creates a link to log in or log out of a given session.

Attributes:

**Attributes** | **Description** 
:--- | ---
```[logout_redirect](optional)``` | Where to send the user after they are logged out (default: /).
```[login_page](optional)``` | Page where the user can log in (default: /login.stml).

Shortcode:

```js
[login_logout_link]
```
Example Code: 

```js
[login_logout_link logout_redirect="/contact/" login_page="/welcome/"]
```