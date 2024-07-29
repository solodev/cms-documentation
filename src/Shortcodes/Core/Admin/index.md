## Admin Only

This shortcode specifies that the content inside of the ```[admin_only]``` ```[/admin_only]``` code should be shown on the backend. Developers may use this shortcode in conjunction with ```[non_admin_only]``` ```[/non_admin_only]``` shortcode to partition frontend and backend content and prevent them from interfering with one another.

**Shortcode:**

```js
[admin_only]
```

**Code Example:**

```js
[admin_only]
  Hello Backend!
[/admin_only]
``` 

!!!Note:
This shortcode has no attributes.
!!!

<hr>

## Non Admin

This shortcode specifies that the content inside of the ```[non_admin_only]``` ```[/non_admin_only]``` should be shown on the frontend. Developers may use this shortcode in conjunction with ```[admin_only]``` ```[/admin_only]``` shortcode to partition front end and backend content and prevent them from interfering with one another. 

**Shortcode:**

``` js
[non_admin_only]
```

**Code Example:**

 ```js
[non_admin_only]
  Hello Frontend!
[/non_admin_only]
```

!!!Note:
This shortcode has no attributes.
!!!