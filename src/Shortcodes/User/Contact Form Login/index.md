Provides a form wrapper that allows users to log in directly from the frontend of the website. 

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[forward_to]``` | **(Required)** URL of the account page that the user is directed to after submitting login credentials.

**Shortcode:**
 
```js
[contact_form_login]
``` 

**Code Example:**

```js
[contact_form_login forward_to="/my-account/" username_field="username" password_field="password"]
  <div class="mb-3">
    <label for="username">Email</label>
    <input type="text" id="username" name="username" class="form-control">
  </div>
  <div class="mb-3">
    <label for="password">Password</label>                                               
    <input type="password" id="password" name="password" class="form-control">
  </div>
  <div class="mb-3">
    <input type="submit" class="btn" value="Sign in">
  </div>
[/contact_form_login]
```