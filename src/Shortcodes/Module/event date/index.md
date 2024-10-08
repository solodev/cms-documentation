This function prints the event end date, typically displayed alongside the event's [print date](/shortcodes/core/print-date/) shortcode, using PHP’s date function. It is utilized within the events module to provide users with clear and organized information about the duration of each event.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[format]```| (Required) The date format to be returned.
```[separator]```| (Optional) Separates the month, day, and year.

**Shortcode:**

```js
[print_event_end]
```
  
**Code Example:**
 
```js
[entry]
  <h2>{{event_title}}</h2>
  [print_date format="F j, Y g:ia" timestamp="{{start_time}}"]
  [print_event_end format="F j, Y g:ia"]
[/entry]
```

<!-- {{{start_time}}} -->