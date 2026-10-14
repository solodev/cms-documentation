Wraps one or more tab blocks into a tabbed interface.

## Tabgroup

**Shortcode:**

```js
[tabgroup]
```

## Tab

**Shortcode:**

```js
[tab]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[title]`	| (Optional) The label shown on the tab. If you leave it out, the tab is labeled with its position, starting at 0.
`[id]`	| (Required) A unique ID for the tab, such as overview. The link points to #id and the pane gets the ID idTab. If you leave it out, every tab gets the literal ID %d, so the IDs clash.


**Code Example:**

```js
[tabgroup]
  [tab title="Overview" id="overview"]Our program runs every fall.[/tab]
  [tab title="Schedule" id="schedule"]Classes meet Tuesdays at 6pm.[/tab]
  [tab title="Pricing" id="pricing"]Registration is $50.[/tab]
[/tabgroup]
```

**Output:**

```
<!-- the tabs -->
<ul class="tabs">
  <li><a href="#overview">Overview</a></li>
  <li><a href="#schedule">Schedule</a></li>
  <li><a href="#pricing">Pricing</a></li>
</ul>
<!-- tab "panes" -->
<ul class="tabs-content">
  <li id="overviewTab">Our program runs every fall.</li>
  <li id="scheduleTab">Classes meet Tuesdays at 6pm.</li>
  <li id="pricingTab">Registration is $50.</li>
</ul>
```

!!!Note:
- Each page supports one `[tabgroup]`. To show more tabs, add them to the same group.
- Tab titles can't include the `%` character. For example, write "100 Percent Free" instead of "100% Free."
!!!