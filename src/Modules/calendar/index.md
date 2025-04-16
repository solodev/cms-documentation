#

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/calendar-module-icon.jpg" alt="Calendar Icon" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Calendar</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">With the Event Module, your customers won't miss your next big event.</p>
    </div>
  </div>
</div>

Leverage automated scheduling capabilities, an intuitive description editor, and simple categorization to showcase the next big event for your company. You can even add Google Maps and Google Calendars integrations, letting your customers save the event information directly to their personal calendars

## Prerequisites

- Have a [Solodev CMS](/quickstart).
- Have a [Website](/workspace/websites/add-website/).

!!!Note: 
For step-by-step instructions on adding a Module in your CMS, please visit [Add a Module](/workspace/modules/add-module/).
!!!

## Create Calendar

These steps will guide you through the process of installing Calendar Module and adding it to your page.

{% tabs %}

{% tab title="Install" %}

1. Download the **Calendar** package (Coming soon).

2. [Add the module](/workspace/modules/add-module/) to your CMS.

<img src="/static/images/modules/calendar/add-calendar.jpg" alt="Add Calendar" style="width: 45%; margin-bottom: 20px;">

3. [Add an entry](/workspace/modules/module/add-entry/).

{% endtab %}

{% tab title="Repeater" %}

1. [Create a file](/workspace/websites/add-file/) called `calendar-repeater.tpl` on your prefer location. This file will contain the code for your calendars roll that will dynamically pull in your calendars entries.

2. Insert the HTML code into your file to display the calendars roll.

3. Include or replace the code with the shortcodes where needed.

4. [Insert your calendars repeater file](/workspace/websites/page/file-to-page/) into the page you want to display the entries on.

{% endtab %}

{% tab title="Detail" %}

1. [Create a file](/workspace/websites/add-file/) called `calendar-detail.tpl` on your prefer location. This file will contain the code for your calendar entry.

2. Insert the HTML code into your file to display the calendar content.

3. Include or replace the code with the shortcodes where needed.

4. [Insert your calendar detail file](/workspace/websites/page/file-to-page/) into the page you want to display the entries on.

{% endtab %}

{% endtabs %}

### Shortcodes

You will need the following shortcodes to successfully add a Calendar to your website. Depending on your needs, you might need to use extra [shortcodes](/shortcodes/).

- [repeater](/shortcodes/module/#repeater) - prints the fields from the Calendar module form.

```js
[repeater id="" limit="0, 4" display_type="news"]
```

!!!Note:
You need to add the ID number of your slider module to the repeater shortcode within the `id=""` attribute.
!!!

- [entry](/shortcodes/module/#entry) - displays the content of a specific blog entry from the module form.

```js
[entry]
```

- [print_date](/shortcodes/core/print-date/) - returns the date formatted according to [PHP's date function](https://www.php.net/manual/en/function.date.php).

```js
<p>[print_date format="F d, Y g:ia" timestamp="{{start_time}}"]</p>
```
<!-- {{{start_time}}} -->
If you need to use other shortcodes or need to learn more about shortcodes, [click here](/shortcodes/).

## Support

Support for Calendar Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).