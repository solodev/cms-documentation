Shows the enclosed content depending on whether a Calendar module [repeater](/shortcodes/module/repeater) with the same attributes would return any entries.

**Shortcode:**

```js
[repeater_entries_exists]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[id]` | **(Required)** The ID of the Calendar module to check.
`[type]` | **(Optional)** Use `does` to show the content when the calendar has matching entries, or `does_not` to show it when there are none. Default: `does`.

Any other repeater attributes, such as category or date filters, are passed through, so the check matches the entries that repeater would show.

**Code Example:**

```js
[repeater_entries_exists id="12"]
<h2>Upcoming Events</h2>
  [repeater id="12"]<p>{{title}}</p>[/repeater]
[/repeater_entries_exists]

[repeater_entries_exists id="12" type="does_not"]
  <p>There are no upcoming events. Check back soon.</p>
[/repeater_entries_exists]
```

**Output:**

If calendar 12 has entries:

```html
<h2>Upcoming Events</h2>
<p>Fall Festival</p>
<p>Winter Concert</p>
```

If it has none:

```html
<p>There are no upcoming events. Check back soon.</p>
```

<!-- {{{title}}} -->