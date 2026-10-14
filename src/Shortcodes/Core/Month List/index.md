Loops through the months of the year starting with current month `start_month`/`start_year` (default: current), exposing `{{name}}`, `{{abbr}}`, `{{number}}`, `{{id}}`, `{{year}}` per iteration.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[start_month]``` |	(Optional) The first month to show, as a number from 1 to 12. Default: the current month.
```[start_year]``` |	(Optional) The year of the first month. Default: the current year.

Tokens you can use inside the shortcode

**Token** | **Output** 
:--- | ---
{{name}} / {{month}} | Full month name (October)
{{abbr}} | Short month name (Oct)
{{number}} / {{id}} | Month number with no leading zero (10)
{{year}} | Four-digit year (2026)

**Shortcode:**

```js
[month_list]
``` 

**Code Examples:**

Month filter dropdown (starts at the current month):

```js
<select name="month">
  [month_list]
  <option value="{{year}}-{{number}}">{{name}} {{year}}</option>
  [/month_list]
</select>
```

**Output (in October 2026):** October 2026, November 2026, December 2026, January 2027 … September 2027

Fixed calendar year, January to December:

```js
<ul class="nav nav-pills">
  [month_list start_month="1" start_year="2026"]
  <li class="nav-item"><a class="nav-link" href="?month={{number}}&year={{year}}">{{abbr}}</a></li>
  [/month_list]
</ul>
```

**Output:** Jan, Feb … Dec, each linking to `?month=1&year=2026` and so on.

!!!Note:
One thing to know before publishing these: each month is built from today's day of the month. So on the 29th–31st, a shorter month can roll over into the next one.
!!!

<!-- {{{start_time}}} -->