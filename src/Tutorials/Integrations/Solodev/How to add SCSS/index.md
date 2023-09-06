# How to add SCSS to your website

SCSS stands for "Sassy Cascading Style Sheets." As the name implies, these are a more advanced variant of standard web CSS (Cascading Style Sheets), and a syntax for the popular CSS preprocessor called SASS, or "Syntactically Awesome Style Sheets." 

SCSS can be used to style more complex visual elements on a web page, including hero sliders, galleries, buttons, images, color palettes, fonts, and even themes and layouts. In this article, you will learn how to add SCSS to your website to add more of these advanced features. 

## Prerequisites

- You will need to complete the <a href="/tutorials/websites/add-website/#adding-a-site">How to add a website</a> tutorial.
- You will need to complete the <a href="/tutorials/websites/add-page-template/">How to add a page</a> to a website tutorial.
- Familiarity with Bootstrap is highly recommended. 

**Step 1:** In the left-hand menu of your main dashboard, click **Websites**. From the table, select the site you want to add **SCSS** to (such as *www.testsite<span>.<span>com*)

<img src="../../../../images/add-scss.png" alt="scss folder" style="display: block"></a>

**Step 2:** Under web files, click on the **SCSS** folder. 

<img src="../../../../images/scss-folder.png" alt="scss folder" style="display: block"></a>

**Step 3:** Using the right-hand menu, click <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a>. Name it **utilities**. Once Complete click **Submit**.

<img src="../../../../images/scss-utilities.png" alt="scss utilities" style="display: block"></a>

**Step 4:** Click on the **utilities** folder and, using the same right-hand menu, click <a href="/workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file called **variables.scss** and select **Code** for the **File Type**. Once complete, click **Submit**.

<img src="../../../../images/scss-utilities-vars.png" alt="scss utilities vars" style="display: block"></a>

**Step 5:** In the file code editor, add the following code sample. 

<img src="../../../../images/scss-import.png" alt="scss import" style="display: block"></a>

!!!Note:
This sample code contains a few color variables you can use to style your template.
!!!

**Step 6:** To link your newly created file, click on the top of the **app.scss** file under the **scss** folder. Add the following import before Bootstrap code. Click **Publish**.

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

Once complete, click **Publish**.

!!!Note:
Your variables.scss file needs to be before the bootstrap import. All other scss files you add need to go after the fontawesome imports. Solodev highly recommends creating a **components** folder for all your other styles and to keep some level of organization within your CMS.
!!!!

**Step 7:** Go to your front end and see the new colors.