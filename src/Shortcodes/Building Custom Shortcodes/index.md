# Building Custom Shortcodes

## Overview

With Solodev CMS, users can utilize shortcodes to build dynamic, feature rich applications with maximum functionality and little coding knowledge. Solodev CMS 9 allows developers to create their own custom shortcodes that can be leveraged to create custom modules inside Solodev. This article teaches developers how to build custom shortcodes in Solodev 9. For example, this document will build a hello world short code. 

Step 1 Create a PHP short code file 
 
Open the www folder and create a shortcodes folder. 

Open the shortcodes folder and create a shortcodes.php file. 

Select Code under the File Type section of the Add File modal and append the .php extension to the file name. 

In the shortcodes.php file create a shortcode function called ‘hello’ The name of the function is the name of the shortcode. In the code below, attributes are passed to the function as arguments and the required Solodev function is called.  
```js
<?php
function hello($atts, $content = null){

notify_solodev_shortcode();

}
?>
```
Create a PHP variable called $hello to store the string value “hello world” and return the contents of the variable: 
```js
$hello = "Hello world!";

return $hello;
```
After creating a function to return the contents of the $hello variable, add this function to create the shortcode: 
```js
add_shortcode('hello', 'hello');
``` 

Click Publish.

The full code block for the hello shortcode is listed below: 
```js
<?php
function hello($atts, $content = null){

notify_solodev_shortcode();

$hello = "Hello world!";

return $hello;15.96+12.

}

add_shortcode('hello', 'hello');

?>
```

Note: Every shortcode function should be written in the following format -- passing the variables $atts and $content as arguments and assigning $content to a null value.
 
```js
function foo_bar($atts, $content = null) {
  notify_solodev_shortcode(); }
```

Step 2 – Mapping the shortcode file to the website
To map the shortcode created, open the website and click Settings to bring up the Settings modal. 

Expand the Advanced accordion. 

Under the ‘Custom Shortcodes File’ section click Browse.

Select the shortcodes.php file. 

Click Submit. 

Step 3 – Adding the shortcode to a .tpl file 
Expand the web files -> content directory and open the folder that will contain the .tpl file. 

Create the .tpl file. Select Code under the File Type and append .tpl to the filename. 

Open the .tpl file and type: 
```js
[hello]
```
Click Publish.  

Step 4 – Displaying the contents of the shortcode on the website 
Open the page that will contain the .tpl file with the shortcode.

Select the dropzone.

Click the .tpl file to insert it into the dropzone. 

Click Publish. 

The contents of the string are displayed on the page. 

Note: When the $content value is set to null, users can set the content within the shortcode using the following format: 
 
```js
[hello]

My content goes here

[/hello]
```
An example of this is reflected in the repeater shortcode:
 
```js
[repeater id="##" limit="0,2"]
<h2>{{event_title}}</h2>
<p>{{blog_intro}}</p>
<a href="{{path}}">{{event_title}}</a>
[/repeater]
```
Note: The $atts variable allows users to set strings and variables when using shortcodes. With the following print_date shortcode,

```js
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

```js
[print_date format="F j, Y, g:i a"]
```
 