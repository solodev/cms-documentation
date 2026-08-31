# Shortcodes

Shortcodes are Solodev's templating language &mdash; small `[bracketed]` tags that pull in data, control page flow, or render a widget, written directly alongside HTML in a page's markup. They're parsed server-side before a page is served.

```js
[google_website_search google_cse_id="XXXXXXXXXXXXXXXXXX"]
```

Self-closing shortcodes look like `[shortcode attr="value"]`. Enclosing shortcodes wrap content: `[shortcode attr="value"]...content...[/shortcode]`. Double curly braces `{{field_name}}` reference a content field inside an enclosing shortcode like `[repeater]` or `[entry]`.

## Categories

**Name** | **Description**
:--- | ---
<a href="/shortcodes/core/">Core</a> | Fundamentals: admin/frontend gating, asset files, layout and formatting, string helpers, dates, error reporting.
<a href="/shortcodes/extended/">Extended</a> | Conditionals, filters, Google Search, and other add-on integrations.
<a href="/shortcodes/page/">Page</a> | Page and folder metadata &mdash; titles, descriptions, navigation, breadcrumbs.
<a href="/shortcodes/module/">Module</a> | Pull and filter entries from a Datatable or Calendar module: repeaters, detail pages, categories, tags, pagination.
<a href="/shortcodes/user/">User</a> | Login, signup, and account-management forms for secured areas of a site.

!!! Note:
Every real, currently-registered shortcode is covered somewhere in these five sections. A handful of older tags found in the CMS source are commented out or explicitly marked for removal in favor of a replacement (for example, `cal_detail` and `calendar_detail` were replaced by [entry](/shortcodes/module/)) &mdash; those aren't documented here since they don't do anything if used.
!!!

## Writing your own

A website can register its own PHP file of custom shortcodes, on top of the built-in ones. See [Building Custom Shortcodes](/shortcodes/building-custom-shortcodes/).
