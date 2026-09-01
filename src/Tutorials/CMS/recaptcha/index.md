# How to Add reCAPTCHA to Your Forms

This guide walks you through the steps to integrate reCAPTCHA into your Solodev forms.

## Prerequisites

- Before you begin, make sure to set up reCAPTCHA by following these [instructions](https://cloud.solodev.net/quickstart/digital/recaptcha/).

## Setup

1. Open **Forms** and select the form where you want to add reCAPTCHA.

2. Click **Modify** in the actions bar.

3. Expand the **Advanced Options** section.

4. Check the box labeled **Enable reCAPTCHA**.

5. Click <span class="text-blue">**Submit**</span>.

## Add Shortcode

1. Return to the previous modal. Under **Form Template**, click on the **Edit** button.

2. In the file editor for your form, insert the following shortcode just before the submit button:

```js
[recaptcha id="1"]
```

!!!Note:
Replace the `id="1"` with the actual ID number of your form. To learn more about shortcodes, please [click here](/shortcodes/).
!!!

3. Click <span class="text-blue">**Submit**</span>.