Provides a form wrapper that allows users to update their accounts.

**Shortcode:**

```js
[contact_form_update]
```

**Code Example:**

```js
[contact_form_update username_field="username" email_field="email"]
  <h2>Login Information</h2>
  <div class="mb-3">
    <label for="username">User Name</label>
    <input id="username" name="username" class="form-control" type="text">
  </div>
  <div class="mb-3">
    <label for="email">Email</label>
    <input id="email" name="email" class="form-control" type="email">
  </div>
  <div class="mb-3">
    <input type="submit" class="btn" name="Submit" value="Update User">
  </div>
[/contact_form_update]
```

!!!Note:
This shortcode has no attributes.
!!!