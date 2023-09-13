# How to connect a module to a website

In the previous tutorial, you learned how to install a blog module in your CMS and create a repeater and detail template. In this tutorial, you will now learn how to connect your detail page to the blog module, so you can begin adding content to it and dynamically generating posts.

## Prerequisites
- You will need to complete the previous <a href="/tutorials/websites/createmodule/">How to create a module in your CMS </a>tutorial.
- You will need to be familiar with using <a href="/shortcodes/">shortcodes</a>.
- For the examples in this tutorial, we will continue using the <a href="solodev-spacejet-2023.zip" download>Solodev SpaceJet</a> theme package for images and assets.
- As you are building with this tutorial, you can refer to the <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">Solodev SpaceJet website</a> to compare your progress.

## Mapping the detail page to the module

**Step 1**.	Go to the module and click **modify**.

<img src="../../../images/modify-calendar.png" alt="base template" style="width: 50%; display: block"></a>

**Step 2**.	On the **Website Properties** accordion, under **Detail Page Template**, click **Browse**, select the detail page you want the entries to show on.

**Step 3**.	On **Detail Folder Location**, from the tree select the folder your detail page is on and click **Submit**.

<img src="../../../images/modify-detail.png" alt="base template" style="width: 50%; display: block"></a>

## Detail Template

The detail template shows the specifics of an individual entry from a repeater template. An example would be clicking on an individual blog entry from a list of entries to see the entire blog post. The detail page is a subpage of its parent page on the repeater template.

**Step 1:** Under the **blog** folder in **web files > content** <a href="/workspace/websites/manage-folder/addfile/">add a file</a> for the module detail called **detail.tpl**.

**Step 2:** Add the code below for the blog detail. For more information on shortcodes, please <a href="/shortcodes/shortcodes-for-modules/">click here</a>.

```js
[entry]
  <h1><strong>{{event_title}}</strong></h1>

  <div class="d-flex align-items-center justify-content-between">
    <p class="mb-0 mt-3">
      <span class="text-primary"><strong>[is_set value={{post_author}}]By David Smith[/is_set]</strong> [is_set value={{post_author}}]</span>
      <span class="ps-2">[/is_set][print_date format="F d, Y" timestamp="{{start_time}}"][is_set value={{post_author}}]</span>[/is_set]
    </p>
    <ul class="list-unstyled d-flex justify-content-end mb-0">
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-brands me-2 fa-twitter"></span><span class="sr-only">Twitter</span></a></li>
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-brands me-2 fa-facebook-f"></span><span class="sr-only">Facebook</span></a></li>
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-brands me-2 fa-linkedin-in"></span><span class="sr-only">Linkedin</span></a></li>
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-regular fa-envelope"></span><span class="sr-only">Email</span></a></li>
    </ul>
  </div>

  <div class="mt-3">

    [is_set value={{post_image_alt}}]
      <img alt="{{post_image_alt}}" src="[get_asset_file_url id='{{post_image}}']" class="w-100 my-4">
    [/is_set]
    [is_empty value={{post_image_alt}}]
      <img alt="{{event_title}}" src="[get_asset_file_url id='{{post_image}}']" class="w-100 my-4">
    [/is_empty]

    {{post_content}}

  </div>
[/entry]
```

**Step 3:** Under **www > blog** <a href="/tutorials/websites/add-page/">add a page</a> called **detail.stml**.

**Step 4:** Add the **detail.tpl** to the **detail.stml**.

**Step 5:** **Publish** your page.

<img src="../../../images/detail-spacejet.jpg" alt="detail space jet" style="width: 100%; display: block"></a>