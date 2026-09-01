A date filter allows users to refine content by specifying a date range or selecting particular dates. It helps narrow down results, such as events, articles, or transactions, to show only those that fall within the selected timeframe.

**Attributes:**
 
**Attributes** | **Description** 
:--- | ---
```[class]```(optional) | Add classes to the date filter.
```[id]```(optional) | Add an ID to the date filter.
```[years]```(optional) | Comma separated years(2001, 2002, 2005), or two years separated by dash (2000-2010).
```[years_format]```(optional) | Accepts “range,” “simple”(default: range).
```[show_all_option]```(optional) | Show all dates.
```[all_value=””]``` | Enables Bootstrap Selectize.
```[label]```(optional) | Generates the label for the select box.

**Shortcode:**
 
```js
[date_filter]
```

**Code Example:**
 
```js
  [date_filter years="2010-2015" all_value=" "]
```