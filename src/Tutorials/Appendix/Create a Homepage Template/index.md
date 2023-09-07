# How to create a homepage template

A homepage is the introductory page of a website. It is often the first page a visitor sees, acting as a “table of contents” for the rest of the experience. It can also feature high-level news, promotions, and other key messages that require the highest degree of visibility. While a homepage will leverage elements of your base template, such as the header and footer, there is only one homepage on a website – so generally speaking, there is only one unique template for your homepage.  .

## Homepage Template

Using the base template with your index.stml page, you can now build out your homepage template. As noted, the homepage is typically a unique template in your website template system; in most cases, it will not be repeated elsewhere on your website. 

For this tutorial, we will use the assets from the SpaceJet theme to create a homepage with a header, hero, CTA (call-to-action) banner, footer, and content areas. You can view the live <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">SpaceJet sample site</a> to view the final homepage.  

### Setting up your folders and .tpl files

**Step 1**: Under **web files**, click on the **templates** folder.

**Step 2**: Using the right-hand menu, click  <a href="/workspace/websites/manage-folder/addfolder/">Add Folder</a>. Under **templates**, add four folders with the following names:

- **content**
- **footer**
- **hero**
- **navigation**

When complete, click **Submit**.

<img src="../../../images/homepage-folders.png" alt="base template" style="width: 20%; display: block"></a>

**Step 3**: Under **templates**, click on the **base** folder. In the right menu, click <a href="../../../workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file named **div-insert.tpl** and select **Code** from the **File Type** dropdown. When complete, click **Submit**.

<img src="../../../images/homepage-base-folder-div.png" alt="base template" style="width: 20%; display: block"></a>

!!!**Note**:
The additional div-insert.tpl file will provide extra dynamicDivs to your page template. 
!!!

**Step 4**: In each of the new folders, you will need to add a new .tpl file. Follow the previous steps to click on each folder and <a href="/workspace/websites/manage-folder/addfile/">Add File</a>. Create a new file under each folder as follows, and select **Code** for the **File Type**. Once complete, click **Submit**:

- content: **cta.tpl**, **home-blog.tpl**, **main.html**
- footer: **footer.tpl** 
- hero: **home-hero.tpl** 
- navigation: **top-nav.tpl** 

<img src="../../../images/homepage-sub-folder-files.png" alt="base template" style="width: 20%; display: block"></a>

Now you have a complete set of folders and .tpl files to build out your homepage.

### Adding templates to your dynamic divs

Next, you will learn how to apply your .tpl files to your dynamic divs. For the purposes of this lesson, will continue using sample code from the SpaceJet theme. To ensure that the images referenced in the theme appear in your editor, you will need to upload several files to your website’s image folder. 

**Step 1**: Locate the following assets in the <a href="https://github.com/solodev/marketplace/raw/master/depot/themes/solodev-spacejet-2023.zip">SpaceJet package</a> you previously downloaded:

- **SpaceJet-Logo.png** (located in _ > images)
- **SpaceJet-2023-Hero-Image.png** (located in _ > images)

**Step 2**: Under the **www** folder, click on the **images** folder under the “_” folder. 

<img src="../../../images/homepage-images-folder.png" alt="base template" style="width: 100%; display: block"></a>

**Step 3**: Using the right-hand menu, click **Upload**. Drag both images from your local computer into the window and click **Upload**.

<img src="../../../images/homepage-upload-images.png" alt="base template" style="width: 40%; display: block"></a>

!!!**Note**: 
For more details on how to upload images to your website in Solodev, read 
the <a href="/workspace/websites/manage-folder/upload/">Upload</a> article under Manage Folder in Websites.  
!!!

**Step 4**: Under **web files**, browse to the **navigation** folder and click on the **top-nav.tpl** file. Copy the code sample below into the editor. When complete, click **Publish**.

<img src="../../../images/homepage-top-nav-code.png" alt="base template" style="width: 100%; display: block"></a>

```js
<div class="bg-primary py-2"></div>
<div class="border-bottom">
  <div class="container">
    <nav class="d-flex justify-content-between align-items-center py-2">
      <a href="/" class="d-flex align-items-center w-50">
        <img src="/_/images/SpaceJet-Logo.png" alt="SpaceJet 2023 Theme Logo" class="w-50">
      </a>
      <div class="d-flex align-items-center justify-content-end">
        <a href="/blog/" class="fs-5 me-xl-5 me-4 text-dark text-decoration-none" aria-
label="Blog"><strong>Blog</strong></a>
        <a href="/contact/" class="fs-5 text-dark text-decoration-none" aria-label="Get 
Started"><strong>Get Started</strong></a>
      </div>
    </nav>
  </div>
</div>
```

**Step 5**: Under the **www** folder, click on the **index.stml** file.

<img src="../../../images/homepage-images-menu.png" alt="base template" style="width: 20%; display: block"></a>

**Step 6**: In the top dynamic div, click anywhere in the **base-template.tpl** div. Once activated, it will turn blue, indicating that it is ready to have a template applied to it. 

Next, under **web files**, open the **templates** folder and browse to the **navigation** folder. Click on the **top-nav.tpl** file. The tag will change from **base-template.tpl** to **top-nav.tpl**, as shown: 

<img src="../../../images/homepage-top-nav-tpl.png" alt="base template" style="width: 100%; display: block"></a>

Once complete, click **Publish**. After your page reloads, you will see the top navigation appear in your **index.stml** file. 

<img src="../../../images/homepage-top-nav-complete.png" alt="base template" style="width: 100%; display: block"></a>

!!!**Note**:
Solodev provides a rich visual editing experience. The editor renders a preview of your frontend website, but minor differences may occur due to the software’s features and functionality. This can affect the appearance of fonts and images within the editor. You can compare your progress to the live <a href="http://solodev-spacejet-2023.s3-website-us-east-1.amazonaws.com/">SpaceJet sample site</a>.
!!!

**Step 7**: Repeating steps 4 and 5, add the code samples below for the other divs of the SpaceJet homepage:

**home-hero.tpl**

```js
<div class="hero-slider h-100">
  <div data-background="/_/images/SpaceJet-2023-Hero-Image.png" class="item h-100 d-lg-flex align-items-
center">
    <div class="container position-relative py-5 my-5">
      <div class="row">
        <div class="col-lg-9 col-xl-8 col-xxl-6">
          <div class="bg-white p-5 rounded">
            <h1 class="fw-bolder display-5"><strong>Your Liftoff to Luxury Space Travel</strong></h1>
            <p class="mt-4 fs-5">Book your next trip on SpaceJet and explore a step above.</p>
            <div class="d-flex justify-content-between align-items-center mt-4">
              <a href="/contact" class="btn fs-5 btn-danger text-white px-4 py-1 pb-2"><strong>Get 
Started</strong></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
```

**cta.tpl**

```js
<div class="bg-primary text-white py-5 mt-5">
  <div class="container">
    <div class="text-center">
      <h2 class="display-5 fw-bolder"><strong>Start your space journey</strong></h2>
      <p class="fs-5 mt-3">Talk to one of our crew members to plan your trip</p>
      <a href="/contact/" class="btn fs-5 btn-danger text-white px-4 py-1 pb-2 mt-3"><strong>Get 
Started</strong></a>
    </div>
  </div>
</div>
```

**footer.tpl**

```js
<footer class="mt-auto">
  <div class="container">
    <div class="row row-cols-1 row-cols-sm-3 py-2 align-items-center mt-3 mt-md-0">
      <div class="col">
        <a href="/" class="d-flex align-items-center">
          <img src="/_/images/SpaceJet-Logo.png" alt="SpaceJet 2023 Theme Logo" class="w-50">
        </a>
      </div>
      <div class="col">
        <div class="d-flex align-items-center justify-content-center">
          <p class="mb-0"><a href="/about/" class="text-dark text-decoration-none me-md-5 me-3"><strong>About</strong></a></p>
          <p class="mb-0"><a href="/blog/" class="text-dark text-decoration-none me-md-5 me-3"><strong>Blog</strong></a></p>
          <p class="mb-0"><a href="/contact/" class="text-dark text-decoration-none"><strong>Get Started</strong></a></p>
        </div>
      </div>
      <div class="col">
        <ul class="list-unstyled d-flex justify-content-end mb-0">
          <li><a href="https://www.twitter.com" class="text-dark text-decoration-none" target="_blank" rel="noopener noreferrer"><span class="fa-fw fa-brands me-2 fa-lg fa-twitter"></span><span class="sr-only">Twitter</span></a></li>
          <li><a href="https://www.facebook.com" class="text-dark text-decoration-none" target="_blank" rel="noopener noreferrer"><span class="fa-fw fa-brands me-2 fa-lg fa-facebook-f"></span><span class="sr-only">Facebook</span></a></li>
          <li><a href="https://www.linkedin.com" class="text-dark text-decoration-none" target="_blank" rel="noopener noreferrer"><span class="fa-fw fa-brands me-2 fa-lg fa-linkedin-in"></span><span class="sr-only">Linkedin</span></a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="bg-light py-2">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center flex-md-row flex-column">
        <p class="small mb-0 mt-3 mt-md-0">&copy;2023 SpaceJet. Built on <a href="https://github.com/solodev/marketplace/raw/master/depot/themes/solodev-spacejet-2023.zip" class="text-dark">SpaceJet Theme</a> and powered by <a href="https://www.solodev.com" target="_blank" rel="noopener noreferrer" class="text-dark">Solodev</a>.</p>
        <ul class="list-unstyled d-inline-flex mb-0 mt-3 mt-md-0 small">
          <li><a href="/privacy.stml" class="text-dark me-3">Privacy</a></li>
          <li><a href="/legal.stml" class="text-dark">Legal</a></li>
        </ul>
      </div>
    </div>
  </div>
</footer>
```

**Step 8**: To add more space to the page for the main content areas, repeat steps 4 and 5 and add these additional code samples: 

!!!Note:
For HTML file click on source in the bar and then paste the code.
!!!

**main.html** 
```js
<div class="container">
  <div class="row justify-content-between align-items-center mt-5 pt-5">
    <div class="col-md-8 col-lg-5 mx-auto ms-lg-0">
      <img src="/_/images/SpaceJet-2023-Jet-Image-1.jpg" alt="SpaceJet 2023 Jet" class="img-fluid rounded-4">
    </div>
    <div class="col-lg-6 mt-lg-0 mt-5">
      <div class="text-center text-lg-start">
        <p><strong>HOW IT WORKS</strong></p>
        <h2 class="display-5 fw-bolder"><strong>Plan Your Itinerary and Choose a Spaceport</strong></h2>
        <p class="mt-3">Now you can travel beyond your expectations – from earth's orbit to the moon and beyond – all with the ease and comfort of booking terrestrial travel. Choose from a wide range of destinations, then select one of our convenient SpacePorts from around the globe, with more coming soon.</p>
        <ul class="fw-bolder ps-3 d-inline d-sm-table d-lg-inline-block mx-auto text-sm-start text-center">
          <li>SkyDrift Hotel – Low Earth Orbit (LEO)</li>
          <li>Armstrong Spacewalk Experience Platform</li>
          <li>Four Seasons at the Sea of Tranquility</li>
          <li>LunarXP Connector to Lovell Mines</li>
          <li>Mars Colony Connector</li>
        </ul>
      </div>
    </div>
  </div>
</div>
```

**home-blog.tpl**

```js
<div class="mt-5 py-lg-5">
  <div class="container">
    <div class="text-center">
      <h2 class="display-5 fw-bolder"><strong>Blog</strong></h2>
      <p>Learn what's happening on the final frontier</p>
    </div>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-5 mt-4">
      <div class="col mt-4">
        <div class="card rounded-4 shadow border-0">
          <img src="/_/images/SpaceJet-2023-Astronaut-Image.jpg" alt="Astronaut" class="img-fluid rounded-top-4">
          <div class="card-body text-center text-sm-start p-4">
            <p class="pt-1">August 28, 2023</p>
            <h3 class="mt-3 fw-bolder"><strong>Experience amazing views of Earth on a guided SpaceWalk</strong></h3>
            <a href="/" class="btn fs-6 btn-danger text-white my-3"><strong>Learn More</strong></a>
          </div>
        </div>
      </div>
      <div class="col mt-4">
        <div class="card rounded-4 shadow border-0">
          <img src="/_/images/SpaceJet-2023-Cabin-Image.jpg" alt="Space Class cabins" class="img-fluid rounded-top-4">
          <div class="card-body text-center text-sm-start p-4">
            <p class="pt-1">August 25, 2023</p>
            <h3 class="mt-3 fw-bolder"><strong>Space Class seats offer a whole new galaxy of luxury</strong></h3>
            <a href="/" class="btn fs-6 btn-danger text-white my-3"><strong>Learn More</strong></a>
          </div>
        </div>
      </div>
      <div class="col mt-4">
        <div class="card rounded-4 shadow border-0">
          <img src="/_/images/SpaceJet-2023-Jet-Image-2.jpg" alt="SpaceJet" class="img-fluid rounded-top-4">
          <div class="card-body text-center text-sm-start p-4">
            <p class="pt-1">August 23, 2023</p>
            <h3 class="mt-3 fw-bolder"><strong>SpaceJet expands ports to include Sea of Tranquility Resort</strong></h3>
            <a href="/" class="btn fs-6 btn-danger text-white my-3"><strong>Learn More</strong></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
```

Once complete, your final homepage should appear in the editor, featuring the top navigation, hero, CTA, and footer. The blog section will be covered in the <a href="/tutorials/websites/createmodule/">Modules</a> tutorial. 