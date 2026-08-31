# User

Login, signup, and account-management forms for secured areas of a site &mdash; private portals, member intranets, and anywhere else visitors need their own credentials.

There are three separate, non-interchangeable login systems, each with its own set of shortcodes:

**System** | **Backs into** | **Shortcodes**
:--- | --- | ---
Contact Form | The CMS's built-in Contact records | `contact_form_*` (below) &mdash; the modern, recommended choice for member logins.
Module Form | A Datatable you build yourself | `module_form_*` (below) &mdash; use when member records need custom fields a Contact doesn't have.
Portal/User | The CMS's internal User_Manager | `form_register`, `form_forgot_password`, `form_update`, `form_error_messages` (below) &mdash; older, still functional, but Contact Form covers the same ground for new work.

## Contact Form

Session state lives in `$_SESSION['user_session']`, checked/redirected by `contact_form_session`.

**Shortcode** | **Description**
:--- | ---
`contact_form_session` | Place on any page that needs to be behind a login. Redirects to the website's login page (or `forward_to`) if no one is signed in.
[Contact Form Login](/shortcodes/user/contact-form-login/) | A login form wrapper.
[Contact Form Signup](/shortcodes/user/contact-form-signup/) | A registration form wrapper that creates a new Contact.
[Contact Form Update](/shortcodes/user/contact-form-update/) | A form wrapper for the signed-in Contact to update their own info.
[Contact Form Forgot Password](/shortcodes/user/contact-form-forgot-password/) | Sends a password-reset email.
[Contact Form Reset Password](/shortcodes/user/contact-form-reset-password/) | The form a reset email's link lands on, to set a new password.
`contact_form_key` | A form that generates an OAuth token/secret pair for the signed-in Contact, for authenticating their own API calls.

## Module Form

Same shape as Contact Form, but reads/writes rows in a Datatable you specify with the required `datatable` attribute, instead of Contact records.

**Shortcode** | **Description**
:--- | ---
`module_form_session` | The `module_form_*` equivalent of `contact_form_session`.
`module_form_login` | Login form wrapper. Requires `datatable`; optional `forward_to`, `username_field`, `password_field`.
`module_form_signup` | Registration form wrapper that creates a new row in the Datatable.
`module_form_update` | Form wrapper for the signed-in member to update their own row.
`module_form_forgot` | Sends a password-reset email for a member.

## Portal/User (legacy)

**Shortcode** | **Description**
:--- | ---
`form_register` | Registration form wrapper, backed by the CMS's own User records.
`form_forgot_password` | Sends a password-reset email for a User.
`form_update` | Form wrapper to update a User's own info.
`form_error_messages` | Renders any queued login/portal error messages (invalid credentials, etc.) as `<p class="error_message">`.

## Other

**Shortcode** | **Description**
:--- | ---
`login_logout_link` | A single link that reads as Log In or Log Out depending on session state. Optional `logout_redirect` (default `/`), `login_page` (default `/login.stml`).
`user_documents` | Lists the files/folders the signed-in user's own folder gives them access to, as a `<ul>` of links.
