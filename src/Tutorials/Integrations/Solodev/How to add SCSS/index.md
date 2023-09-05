# How to add SCSS

**Step 1:** Click on the **scss** folder under **web files**.

<img src="../../../../images/scss-folder.png" alt="scss folder" style="display: block"></a>

**Step 2:** Using the right-hand menu, click <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a>. Call it **utilities** and click **Submit**.

<img src="../../../../images/scss-utilities.png" alt="scss utilities" style="display: block"></a>

**Step 3:** Click on the **utilities** folder and using the same right-hand menu, click <a href="/workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file called **variables.scss** and select **Code** for the **File Type**. Once complete, click **Submit**.

<img src="../../../../images/scss-utilities-vars.png" alt="scss utilities vars" style="display: block"></a>

**Step 4:** Add the following code sample. This code has a couple of color variables you can use to style your template.

<img src="../../../../images/scss-import.png" alt="scss import" style="display: block"></a>

**Step 5:** To link your newly created file, open **app.scss** from the **scss** folder. Add the following import before bootstrap. Click **Publish**.

```js
@import 'utilities/variables';

/* =======================
  # Theme Color pallette
======================= */
$theme-colors: (
  'white': #fff,
  'primary': #008ae1,
  'danger': #c30065,
  'dark': #000,
);

@function theme-color($key: "primary") {
  @return map-get($theme-colors, $key);
}
```

!!!Note:
Your variables.scss file needs to be before the bootstrap import. All other scss files you add need to go after the fontawesome imports. Solodev highly recommends creating a **components** folder for all your other styles and to keep some level of organization within your CMS.
!!!!

**Step 6:** Go to your front end and see the new colors.