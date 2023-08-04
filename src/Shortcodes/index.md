# Shortcodes

Shortcodes are the contextual templating language of Solodev. They are small pieces of code that perform dedicated functions in your CMS, simplifying the addition of features to your website. This includes things like adding custom search, embedding videos, applying navigation, and various other functionalities – all of which can be handled without writing direct code.

Here’s an example of a Solodev shortcode for embedding Google Custom Search on a website:

```js
[google_website_search]
```

Similar to other templating systems, Solodev uses double brackets `[ ]` to open and close templated expressions and double curly braces for HTML fields. Inside these brackets, a developer can use shortcode functions and reference content schema properties. These templating expressions are written alongside standard HTML.

The Solodev shortcode framework allows you to create special kinds of functionality that can be attached to certain pages. This can be done by adding the corresponding shortcode into the page text itself. Shortcodes handle all the tricky parsing, eliminating the need for writing a custom expression for each example. Helper functions are included for setting and fetching default attributes, and the framework also supports both self-closing and enclosing shortcodes.

## Types of Shortcodes

There are several categories of shortcodes in Solodev:

**Name** | **Description** 
:--- | ---
<a href="/shortcodes/basic-shortcodes/">Basic shortcodes</a> | Includes fundamentals like admin, asset files, print data, lower casing text, error reporting, and more.
<a href="/shortcodes/generic-shortcodes/">Generic shortcodes</a> | Covers common examples such as embedding Google Search, YouTube video, conditionals, and more.
<a href="/shortcodes/shortcodes-for-login-forms/">Shortcodes for Login Forms</a> | Pertains to contact and login forms for a variety of use cases.
<a href="/shortcodes/shortcodes-for-pages--sections/">Shortcodes for Pages & Sections</a> | Features more complex functionality that can be added to web page structure such as titles, descriptions, navigation, breadcrumbs, and more.
<a href="/shortcodes/shortcodes-for-modules/">Shortcodes for Modules</a> | Provides features for modules including repeaters, entries, date and tag filtering, and more.
