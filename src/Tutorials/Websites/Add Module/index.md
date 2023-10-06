# How to connect a module to a website

In the previous tutorial, you learned how to install a blog module in your CMS and create a repeater and detail template. In this tutorial, you will now learn how to connect your detail page to the blog module, so you can begin adding content to it and dynamically generating posts.

## Prerequisites
- You will need to complete the previous <a href="/tutorials/websites/createmodule/">How to create a module in your CMS </a>tutorial.
- You will need to be familiar with using <a href="/shortcodes/">shortcodes</a>.
- For the examples in this tutorial, we will continue using the <a href="solodev-spacejet-2023.zip" download>Solodev SpaceJet</a> theme package for images and assets.
- As you are building with this tutorial, you can refer to the <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">Solodev SpaceJet website</a> to compare your progress.

## How to add a detail template

The detail template shows the specifics of an individual entry from a repeater template. An example would be clicking on an individual blog entry from a list of entries to see the entire blog post. The detail page is a subpage of its parent page on the repeater template.

**Step 1:** Under the **blog** folder in **web files > content** <a href="/workspace/websites/manage-folder/add-file/">add a file</a> for the module detail called **detail.tpl**.

**Step 2:** Add the code below for the blog detail, and click **Publish**. This code contains shortcodes to show your blog content, for more information on shortcodes, please <a href="/shortcodes/shortcodes-for-modules/">click here</a>.

:::code source="detail.tpl" :::

**Step 3:** Under **www > blog** <a href="/tutorials/websites/add-page/">add a page</a> called **detail.stml**.

**Step 4:** Add the **detail.tpl** to the **detail.stml**.

**Step 5:** **Publish** your page.

## Mapping the detail page to the module

**Step 1**.	Go to the module and click **modify**.

<img src="../../../images/modify-calendar.png" alt="base template" style="width: 50%; display: block"></a>

**Step 2**.	On the **Website Properties** accordion, under **Detail Page Template**, click **Browse**, from the **www** folder, select the detail page you just created.

**Step 3**.	Under **Detail Folder Location**, click **Browse**, select the **www** folder your detail page is and click **Submit**.

<img src="../../../images/modify-detail.png" alt="base template" style="width: 50%; display: block"></a>

**Step 4**.	Under **Detail Folder Location**, click **Browse**, select the **www** folder your detail page in and click **Submit**.

**Step 5**: After mapping your detail page, you need to republish your entry for it to know where to go. For this, go back to your module and click on the entry you created and click **Save**.

<img src="../../../images/detail-spacejet.jpg" alt="detail space jet" style="width: 100%; display: block"></a>


**Congratulations!** You have created your first blog module. Have fun creating posts.