Returns the value of a URL or form variable, set by the `name` attribute. Use it to display values passed to the page, such as showing details on a confirmation page.

**Shortcode:**

```js
[url_var]
```

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```[name]``` | **(Required)** The name of the URL or form variable to return.

**Code Example:**

For the URL `https://example.com/thank-you?first_name=Jane`:

```js
[url_var name="first_name"]
```

**Output:**

```
Jane
```