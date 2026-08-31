# Building Custom Shortcodes

A website can register its own PHP file of custom shortcodes, on top of the built-in ones covered elsewhere in this section. This walks through building a `[hello]` shortcode from scratch.

## Step 1: Create a PHP shortcode file

Create a `.php` file (for example, under web files > content > a `shortcodes` folder) using **Add File** > **Code**, and append the `.php` extension to the file name.

Define a function for your shortcode and register it with `add_shortcode()`. The function name is the shortcode's implementation; the first argument to `add_shortcode()` is the tag name used in `[brackets]`:

```php
<?php
function hello($atts, $content = null) {
    notify_solodev_shortcode();
    return "Hello world!";
}
add_shortcode('hello', 'hello');
```

Every shortcode function takes the same two arguments &mdash; `$atts` (an array of the attributes passed in the tag) and `$content` (the enclosed content, or `null` for a self-closing tag) &mdash; and should call `notify_solodev_shortcode()` first.

## Step 2: Map the shortcode file to the website

Open the website, go to **Update Website**, expand the **Advanced** accordion, and use **Browse** under **Custom Shortcodes File** to select the `.php` file you created. Click **Submit**.

The CMS includes this file on every page render for that website, so any `add_shortcode()` calls inside it become available immediately.

## Step 3: Use the shortcode

Add `[hello]` anywhere in a page's content and publish. If your shortcode encloses content instead of self-closing, wrap it the same way a built-in one does:

```js
[hello]
My content goes here
[/hello]
```

When a shortcode is self-closing (`$content` is `null`), read attributes from `$atts` instead. For example, the built-in `[print_date]` shortcode:

```php
function print_date($atts, $content = null) {
    notify_solodev_shortcode();
    if (!isset($atts['format'])) {
        return "format is required";
    }
    return date($atts['format'], $atts['timestamp'] ?? time());
}
add_shortcode('print_date', 'print_date');
```

is used as `[print_date format="F j, Y, g:i a"]`.

## Advanced: a CustomShortcode class

If your shortcode file defines a `Website\CustomShortcode` class, the CMS instantiates it automatically after including the file &mdash; useful for grouping several related shortcodes, or for anything that needs setup beyond a single function (dependency injection via the container, shared state between shortcodes, etc.). A plain file of `add_shortcode()` calls, as shown above, is enough for most cases.
