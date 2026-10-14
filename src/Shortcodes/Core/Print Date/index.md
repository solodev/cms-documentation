Returns the date formatted according to [PHP's date](https://www.php.net/manual/en/function.date.php) function. This allows for precise control over date and time display, enabling customization to fit any regional or stylistic preference. Whether you need to show dates in a simple format like "MM/DD/YYYY" or a more complex structure, this shortcode adapts to your needs effortlessly.

**Shortcode:**

```js
[print_date]
``` 

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[format]``` | **(Required)** The date format to be returned. A list of date functions can be found here. 
```[datestring]``` | **(Optional)** A date string to convert to the new format.
```[timestamp]``` | **(Optional)** Epoch timestamp (default: Today's Date).

**Code Example:**

```js
[print_date format="F d, Y g:ia" timestamp="{{start_time}}"]
```

**Output:**

```
October 13, 2026 3:45pm
```

<!-- {{{start_time}}} -->