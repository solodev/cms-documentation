# Restricted Access

Password-protect part of a website's frontend so only logged-in contacts can see it. Two pieces work together: a folder-level flag that marks a folder as restricted, and a shortcode that actually enforces the redirect on each protected page.

## Mark the folder

Go to the folder you want to restrict, open **Update Folder**, and expand **Website Properties**. Check **Restrict Access in Website to Authorized Users** and click **Submit**.

<p><img src="../../images/websites/restrict-access-checkbox.jpg" alt="Restrict Access in Website to Authorized Users checkbox"></p>

See [Update Folder](/websites/manage-folder/update-folder/) for the rest of that form's fields.

!!! Note:
This flag documents that a folder is meant to be restricted -- it doesn't enforce anything by itself. The actual redirect comes from the `[contact_form_session]` shortcode below, placed on the pages inside the folder.
!!!

## Enforce it on a page

Add the `[contact_form_session]` shortcode to the top of any page that needs to be protected:

```js
[contact_form_session]
```

If there's no logged-in contact session, the visitor is redirected before the rest of the page renders.

**Attribute** | **Description**
:--- | ---
`forward_to` | Where to redirect an unauthenticated visitor. Defaults to the website's login page if one is configured, otherwise `/login.stml`.

```js
[contact_form_session forward_to="/login/"]
```

The redirect appends `?next_url=` with the page the visitor was trying to reach, so your login page can send them back after they sign in.

!!! Note:
If a visitor hits a protected page before any login page exists, they'll see a 404 at the default `/login.stml`. Set `forward_to` explicitly, or [add a page](/websites/add-page/) at that path.
!!!

## Build the login page

1. [Add a page](/websites/add-page/) to hold the login form.
2. Add the [Contact Form Login](/shortcodes/user/contact-form-login/) shortcode to it, and point `forward_to` at wherever a signed-in visitor should land.

## Related shortcodes

- [Contact Form Login](/shortcodes/user/contact-form-login/) -- the login form shortcode itself.
- [Contact Form Signup](/shortcodes/user/contact-form-signup/) and [Contact Form Forgot Password](/shortcodes/user/contact-form-forgot-password/) -- related shortcodes for a self-service login flow.
