Returns the date formatted according to PHP's date function. This allows for precise control over date and time display, enabling customization to fit any regional or stylistic preference. Whether you need to show dates in a simple format like "MM/DD/YYYY" or a more complex structure, this shortcode adapts to your needs effortlessly.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[format]``` | **(Required)** The date format to be returned. A list of date functions can be found here. 
```[datestring]``` | **(Optional)** Preformatted date that needs to be changed into another format. 
```[timestamp]``` | **(Optional)** Epoch timestamp (default: Today's Date).

**Shortcode:**

```js
[print_date]
``` 

**Code Example:**

```js
<p>[print_date format="F d, Y g:ia" timestamp="{{start_time}}"]</p>
```
<!-- {{{start_time}}} -->