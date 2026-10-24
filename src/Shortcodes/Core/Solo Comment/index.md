Wraps the enclosed content in a PHP or HTML comment. Any comment markers already inside the content are removed.

**Shortcode:**

```js
[solo_comment]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
```[type]``` | **(Optional)** The type of comment. Accepts `php` or `html`. Default: `php`.

**Code Example:**

```js
[solo_comment type="html"]Hero banner starts here[/solo_comment]
```

**Output:**

```
<!-- Hero banner starts here -->
```