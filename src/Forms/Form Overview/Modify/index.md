# Modify

Change a form's own settings. From the form's overview page, click **Modify**. A Module Form's Modify panel is built on the same underlying schema as [Module Overview's Modify](/modules/module-overview/modify/) -- Grid Display, Table Schema, and API Info work identically -- with two form-specific additions: Email Options and Relationships.

<p><img src="../../../images/forms/form-modify-top.png" alt="Modify panel: Name, Type, Form Template, Grid Display"></p>

**Name** | **Description**
:--- | ---
Name | The form's internal name.
Type | Form (read-only once created).
Form Template | Upload a custom form template for the Add Entry form.
Grid Display -- Display/Hide Columns | Choose which schema fields show as columns in the submissions grid.

## Email Options

Control what a visitor sees after submitting, and what gets emailed out when they do.

<p><img src="../../../images/forms/form-modify-email.png" alt="Email Options section, default Form Submission notification type"></p>

**Name** | **Description**
:--- | ---
Return Behavior | What happens in the visitor's browser after they submit -- redirect to a URL, or show a custom uploaded return page.
Notification Type | What the notification email looks like: **Form Submission** (default) or **Custom Email**. See below.
Tickler Email Address | Add one or more email addresses to notify on each submission, regardless of Notification Type.

### Notification Type: Form Submission (default)

Reuses the form's own **Form Template** (the same file uploaded at the top of this panel) to build the notification email -- each field's submitted value is swapped into that template automatically. A couple of things to know if you're relying on this default:

- Give the submit input `type="submit"` -- otherwise the submit button itself shows up in the email body.
- Input values are converted to `<p>input value</p>` in the generated email.
- For more layout control within this default, build the form's fields inside an HTML table.
- If no Form Template is set at all, the notification falls back to a plain two-column table of every submitted field and value -- functional, but not branded.

### Notification Type: Custom Email

Choose this to send a fully custom-designed HTML email instead of reusing the form template -- this is the option to reach for if you want a polished, on-brand results email (a nicely formatted confirmation, a receipt-style layout, etc.).

<p><img src="../../../images/forms/form-modify-email-custom.png" alt="Email Options section with Custom Email selected, showing the To Field and Upload Custom Email button"></p>

**Name** | **Description**
:--- | ---
"To" Field | Which submitted field's value the email goes to -- typically the visitor's own **email** field, so they get a copy of their submission.
Upload Custom Email | Upload the HTML file that becomes the email's content.

!!! Note:
**Return Behavior and Notification Type are completely independent.** You do not need to set a Return Page (or anything else under Return Behavior) for a Custom Email to work -- Return Behavior only controls what the *visitor's browser* shows after they submit; Notification Type controls what gets *emailed*. Leave Return Behavior at "Choose option" if you don't need a custom thank-you page.
!!!

#### Referencing submitted data in the HTML file

The uploaded file runs as a real template with each submitted field available as a PHP variable, so you can drop values in anywhere:

```html
<p><strong>Name:</strong> <?= $assignmentVars['givenname'] ?? '' ?> <?= $assignmentVars['sn'] ?? '' ?></p>
<p><strong>Email:</strong> <?= $assignmentVars['email'] ?? '' ?></p>
<p><strong>Tour Date:</strong> <?= $assignmentVars['tour_date'] ?? '' ?></p>
```

**`$assignmentVars['field_name']` only works for fields you yourself defined when you built this form** -- open this form's [Table Schema](#table-schema) and use the exact field name shown there in place of `field_name` above (`tour_date` in the example is a placeholder -- your form almost certainly uses different names). A handful of built-in fields are always available too, regardless of your schema: `email`, `givenname`, `sn`, `primaryphone`, `date_added`, `date_modified`. Regular [shortcodes](/shortcodes/) work in this file as well.

`date_added` and `date_modified` come through as a raw Unix timestamp, not a formatted date -- wrap them in PHP's `date()` if you want to display them:

```html
<p>Submitted <?= !empty($assignmentVars['date_added']) ? date('n/j/Y g:ia', $assignmentVars['date_added']) : '' ?></p>
```

**[Download a working sample template](../../../files/forms/sample-custom-email-template.html)** -- a real, tested Custom Email file with a header, a clean field table, and the date formatting above already wired up. Upload it as-is to see it work, then swap in your own field names and styling.

!!! Note:
This is HTML/CSS only -- there is currently no way to send the results as a PDF attachment. If a submitter needs a polished, well-formatted copy of their answers, a styled Custom Email is the closest supported option.
!!!

## Table Schema

Add, edit, or remove the fields a submission can have -- identical to [Module Overview's Table Schema](/modules/module-overview/modify/#table-schema).

## Relationships

Relate this form's entries to another module.

<p><img src="../../../images/forms/form-modify-relationships.png" alt="Relationships section"></p>

**Name** | **Description**
:--- | ---
Relationship Name | A label for the relationship.
Type | One-to-one, one-to-many, or many-to-many.
Module | Browse to the related module.
Field | Which field on that module the relationship uses.
**+** | Add a new relationship row.

## API Info

Connection details for reading this form's submissions via the REST API -- identical to [Module Overview's API Info](/modules/module-overview/modify/#api-info).

## CMS Contact Mapping

Only appears once **Sync entries to CMS Contacts** has been turned on for this form -- either when it was [added](/forms/add-form/#module-form), or by switching it on here. Maps this form's own field names to the standard [Contact](/organization/contacts/) fields, so every submission also creates or updates a Contact record alongside its entry in this module's own table.

<p><img src="../../../images/forms/form-modify-contact-mapping.png" alt="CMS Contact Mapping section with a custom field mapping"></p>

**Name** | **Description**
:--- | ---
Add Mapping | Add a new source/destination row.
Left column | One of this form's own field names, exactly as it appears in [Table Schema](#table-schema) -- `work_email`, `first_name`, whatever you actually called it.
Right column | The Contact field that source maps to: **Email**, **First Name**, **Last Name**, or **Primary Phone**.
Trash icon | Remove a mapping row.

The same mapping is also editable as raw JSON underneath the row editor -- `{"work_email": "email", "first_name": "givenname"}` -- if you'd rather paste one in directly than build it row by row.

!!! Note:
**An Email destination is required.** It's the one field the sync uses to decide whether a submission is a new Contact or an update to an existing one -- resubmitting with the same email updates that Contact's name and phone rather than creating a duplicate. A mapping with no field pointed at Email won't save.
!!!

A form switched on via **Sync entries to CMS Contacts** starts with an identity mapping (`email` to Email, `givenname` to First Name, `sn` to Sn, `primaryphone` to Primary Phone) already saved -- convenient if your schema happens to use those exact names, but most schemas don't, so open this section and re-point each row at your own field names once the form's fields are in place. Source fields not present in a given submission are simply skipped, so it's safe to map more fields than any one entry actually fills in.

Sync runs from the same place regardless of how an entry was created or updated -- the CMS's own Add/Update Entry, a public visitor submitting the live form, the REST API, or MCP all go through it identically.

## Advanced Options

Most of this section matches [Module Overview's Advanced Options](/modules/module-overview/modify/#advanced-options) (Custom Icon, Geo-Coded Fields, Field Name to use in URL, Error Document, Asset Fields, Post Processing, Export/Delete), plus a few fields specific to public-facing forms:

<p><img src="../../../images/forms/form-modify-advanced.png" alt="Advanced Options, form-specific fields"></p>

**Name** | **Description**
:--- | ---
Allowed File Extensions for Uploads | Comma-separated list (e.g. `jpg, png, pdf`) restricting what visitors can attach via a File field.
Enable CSRF | Checked by default -- protects the form against cross-site request forgery.
Honeypot Protection | Adds a hidden field real visitors never fill in -- submissions that fill it are silently treated as spam.
Enable Captcha | Require a CAPTCHA challenge before the form can be submitted.
Block Anonymous Submissions | Require a logged-in contact session to submit.
Flat Entries | Store subtable values as flat entries instead of nested ones.
Sanitize URLs from submissions | Strip URLs out of submitted field values before they're saved.
Enforce User Permissions | Require a logged-in, permitted user to submit.
