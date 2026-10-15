Shows content only when a condition is met. Use `[else]` to show other content when it isn't. `[if_cond]` works the same as `[cond]`. To nest a condition inside another `[cond]`, use `[sub_cond]`, which also works the same way.

**Shortcode:**

```js
[cond]
```

**Attributes:**

**Attributes** | **Description**
:--- | ---
`[type]` | **(Required)** The comparison to make. Accepts `is`, `is_not`, `greater_than`, or `less_than`.
`[subject]` | **(Required)** The value to check.
`[value]` | **(Required)** The value to compare the subject against.

**Code Example:**

```js
[cond type="is" subject="{{status}}" value="open"]
  Registration is open.
[else]
  Registration is closed.
[/cond]
```

**Output:**

If `{{status}}` is "open":

```
Registration is open.
```

**Nested Example:**

```js
[cond type="is" subject="{{status}}" value="open"]
  [sub_cond type="less_than" subject="{{seats}}" value="10"]
    Only a few seats left.
  [else]
    Registration is open.
  [/sub_cond]
[else]
  Registration is closed.
[/cond]
```

<!-- {{{status}}} -->