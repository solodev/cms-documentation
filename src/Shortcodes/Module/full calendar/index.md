This shortcode creates a representation of the full calendar plugin and retrieves calendar entries using the calendar ID of the module in question.

## Full Calendar Includes

Returns libraries for a full calendar [fullcalendar.io](https://fullcalendar.io/). This is used on the events modules.

```[js_full_calendar_includes]``` and ```[js_full_calendar]``` work together. You will need to include both codes in the page in order for it to work.

!!! Note:
You need to choose Events as the calendar type.
!!!

To include the necessary JavaScript and CSS files for the calendar functionality, add the shortcode [js_full_calendar_includes] at the top of the page. This shortcode does not have any attributes and ensures that all required resources are properly loaded for the full calendar to function correctly.

**Attributes**:

**Attributes** | **Description** 
:--- | ---
```[calendar_id]```| (Required) ID of the calendar.
 
**Shortcode:**

```js
[js_full_calendar_includes]

[js_full_calendar]
```
  
**Code Example:**
 
```js
[js_full_calendar calendar_id="110"]

[js_full_calendar]
```