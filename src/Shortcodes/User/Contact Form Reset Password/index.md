Provides a form wrapper that allows users to reset their password.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[forward_to]``` | **(Required)** URL of the page that the user is directed to after resetting their password.

**Shortcode:**

```js
[contact_form_reset]
``` 

**Code Example:**

```js
[contact_form_reset forward_to="/my-account/"]
  <div class="mb-3">
    <input class="form-control" id="password" name="password" placeholder="Password" type="password">
  </div>
  <div class="mb-3">
    <input class="btn" value="Reset" name="submit" type="submit" />
  </div>
[/contact_form_reset]
``` 