# Shortcodes for Secured Account Logins

This article discusses shortcodes for creating frontend access forms to secured areas in your website or app. This can include private portals, member intranets, and other use cases where user credentials need to be provided for access.

## Contact Form Login 

Provides a form wrapper for users to login on the frontend of the website. 

Attributes:

**Attributes** | **Description** 
:--- | ---
```[forward_to](required)``` | URL of the account page that the user is directed to after submitting login credentials.

Shortcode:
 
```js
[contact_form_login]
``` 

Code Example:

```js
[contact_form_login forward_to="/my-account/" username_field="username" password_field="password"]
          <div class="form-group">
            <label for="username">Email</label>
            <input type="text" id="username"  name="username" class="form-control">
          </div>
          <div class="form-group">
            <div class="d-flex align-items-center justify-content-between">
              <label for="password">Password</label>
              <!--<a href="" class="text-underline mb-2">Show Password</a>-->
            </div>
            <input type="password" id="password"  name="password" class="form-control">
          </div>
          <div class="form-group mt-4">
            <input type="submit" class="btn btn-lg btn-sky-blue w-100 btn-rounded-lg" value="Sign in">
          </div>
[/contact_form_login]
```

Contact Form Signup – provides a form wrapper that enables users to register for an account. 

Attributes:

**Attributes** | **Description** 
:--- | ---
```[forward_to](required)``` | URL of the account page that the user is directed to after signing up

Shortcode:

```js
[contact_form_signup]
```

Code Example:

```js
[contact_form_signup forward_to="/my-account/" username_field="email" password_field="password"]
        <div class="form-group row">
          <label class="col-md-3 control-label" for="email">Email</label>  
          <div class="col-md-9">
            <input id="email" name="email" class="form-control input-md required validate" required="" type="text">
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 control-label" for="email">Password</label>  
          <div class="col-md-9">
            <input id="password" name="password" class="form-control input-md required validate" required="" type="password">
          </div>
        </div>

        <div class="form-group row">
          <label class="col-md-3 control-label" for="email">Confirm Password</label>  
          <div class="col-md-9">
            <input id="password_confirm" name="password_confirm" class="form-control input-md required validate" required="" type="password">
          </div>
        </div>

        <div class="form-group text-center">
          <input class="btn btn-primary" value="REGISTER" name="image" type="submit" width="164" height="27" />
        </div>
[/contact_form_signup]
```

Contact Form Update – provides a form wrapper that allows users to update their accounts. This shortcode has no attributes.

Shortcode:

```js
[contact_form_update]
```

Code Example:

```js
[contact_form_update username_field="accountname" password_field="password" email_field="email"]
<div class="row">
  <div class="col-sm-12">
      <div class="form-group">
         <h2>Login Information</h2>
      </div>
      <div class="form-group">
          <label class="control-label" for="oldaccountname">User Name</label>
          <input id="=accountname" disabled readonly name="accountname" class="form-control" type="text" value="<?=$contact->accountname?>">
      </div>
      <div class="form-group">
          <label class="control-label" for="password">New Password</label>
          <input id="password" name="password" class="form-control" type="password" value="">
      </div>
      <div class="form-group">
          <label class="control-label" for="password_confirm">Confirm Password</label>
          <input id="password_confirm" name="password_confirm" class="form-control" type="password" value="">
      </div>
      <div class="form-group">
          <input type="submit" class="btn form-control btn-primary" name="Submit" value="Update User">
      </div>
  </div>
</div>
[/contact_form_update]
```

Contact Form Forgot Password – Populates a forgot password utility linked to the Solodev form.

Attributes:

**Attributes** | **Description** 
:--- | ---
```[forward](required)``` | URL of the page that the user is directed to after submitting the form. 

Shortcode:

```js
[contact_form_forgot]
``` 

Code Example:

 
```js
[contact_form_forgot forward_to="/password-confirm.stml" username_field="username" password_field="password" email_field="mail"]
          <div class="form-group row">
            <label class="col-md-3 control-label" for="email">Email</label>  
            <div class="col-md-9">
              <input id="username" name="username" class="form-control input-md required validate" required="" type="text">
            </div>
          </div>
         <div class="form-group text-center">
          <input class="btn btn-primary" value="Reset" name="image" type="submit" width="164" height="27" />
        </div>
[/contact_form_forgot]
```

Contact Form Reset Password – provides a form wrapper that allows users to reset their password.

Attributes:

**Attributes** | **Description** 
:--- | ---
```[forward_to](required)``` | URL of the page that the user is directed to after resetting their password.

Shortcode:

```js
[contact_form_reset]
``` 

Code Example:

```js
[contact_form_reset forward_to="/my-account/"]
         <div class="form-group">
          <input class="form-control input-lg rounded-0" id="password" name="password" placeholder="Password" type="password" required >
        </div>
        <div class="form-group">
          <input class="form-control input-lg rounded-0" id="password_confirm" name="password_confirm" placeholder="Confirm Password" type="password" required>
        </div>
         <div class="form-group text-center">
          <input class="btn btn-primary" value="Reset" name="image" type="submit" width="164" height="27" />
        </div>
[/contact_form_reset]
``` 