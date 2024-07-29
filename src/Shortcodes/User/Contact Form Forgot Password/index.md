Integrates a "Forgot Password" utility with the Solodev form for seamless password recovery.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[forward]``` | **(Required)** URL of the page that the user is directed to after submitting the form. 

**Shortcode:**

```js
[contact_form_forgot]
``` 

**Code Example:**

```js
[contact_form_forgot forward_to="/password-confirm.stml" password_field="password"]
<div class="mb-3">
  <label for="password">Password</label>
  <input id="password" name="password" class="form-control" type="password">
</div>
<div class="mb-3">
  <input class="btn" value="Reset" name="image" type="submit" />
</div>
[/contact_form_forgot]
```