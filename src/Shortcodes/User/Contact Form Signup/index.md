Provides a form wrapper that enables users to register for an account from the frontend of the website.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[forward_to]``` | **(Required)** URL of the account page that the user is directed to after signing up

**Shortcode:**

```js
[contact_form_signup]
```

**Code Example:**

```js
[contact_form_signup forward_to="/my-account/" username_field="email" password_field="password"]
  <div class="mb-3">
    <label for="email">Email</label>  
    <input id="email" name="email" class="form-control" type="text">
  </div>
  <div class="mb-3">
    <label for="email">Password</label>  
    <input id="password" name="password" class="form-control" type="password">
  </div>
  <div class="mb-3">
    <input class="btn" value="SUBMIT" name="image" type="submit" />
  </div>
[/contact_form_signup]
```