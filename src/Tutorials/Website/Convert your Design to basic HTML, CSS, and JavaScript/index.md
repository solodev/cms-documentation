# Convert your Design to basic HTML, CSS, and JavaScript

Before you can build your website you first need to deconstruct your designs into common elements that can then be turned into theme templates. This process involves 
identifying common areas of the site that will be present across all pages of a website as well as design elements which are unique to specific pages. In identifying 
these components, you will be able to clearly structure your theme.

## Main Components of a Web Page

Let's say we have have a homepage like the below:

<img src="../../../images/LunarXP-Homepage-Wireframe.jpg" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

We could select the main components such as the follow:

## Header

<img src="../../../images/lunarxp-header.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Hero

<img src="../../../images/lunarxp-hero.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Recent Blog Posts

<img src="../../../images/lunarxp-blog-recent.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Testimonials

<img src="../../../images/lunarxp-testimonials.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Featured Products

<img src="../../../images/lunarxp-ships.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Contact 

<img src="../../../images/lunarxp-contact-section.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

## Footer

<img src="../../../images/lunarxp-footer.png" alt="LunarXP-Homepage-Wireframe" style="width: 100%; display: block"></a>

Then we could name them as header.tpl or navigation.tpl, hero.tpl, recent-blog.tpl, testimonials.tpl, featured-products.tpl, contact-section.tpl, footer.tpl and so on. In Solodev, all the HTML, CSS and Javascript files are stored inside the **web files** folder. More advanced, complex components are given a .tpl extension. Once you mimic and create the folder structure in the web files folder, it is time to actually translate the design into HTML.

## HTML

As an example, let's convert the featured products section into a template. We create a file called featured-products.tpl and inside we'd put the following markup:

```js
<section>
  <h3>Explore Our Ships</h3>
    <div>
      <div class="col-lg-4">
        <img alt="Valkyrie Ship" src="images/valkyrie.png">
        <h4>Valkyrie-1 Series</h4>
        <p>The flagship of our fleet, the Valkyrie is a fully reusable heavy launch vehicle, capable of vertical takeoff and landing on the Moon.</p>
        <a href="/products/valkyrie1.stml">Tour the Ship</a>
        </div>

        <div>
          <img alt="Talon Ship"src="images/talon.png">
          <h4>Talon-2 Series</h4>
          <p>Master of the Lunar skies, the Talon fleet provides high altitude travel across the planet, connecting and supplying our colonies.</p>
          <a href="/products/talon2.stml">Tour the Ship</a>
        </div>

        <div>
          <img alt="Lunar XPlorer Ship" src="images/lunar-xplorer.png">
          <h4>Lunar XPlorer</h4>
          <p>The deep space ferry for all personnel and resources, the Lunar XPlorer connects Earth to the Moon in 2 day cycles.</p>
          <a href="/products/lunar_xplorer.stml">Tour the Ship</a>
        </div>
    </div>
</section>  
```

## CSS & Javascript

While HTML code is directly included inside tpl and html files, CSS and Javascript files are placed under their own separate folders. For convenience, we recommend storing CSS files inside a **css** or **scss** (if you're using SCSS) folder and store Javascript files inside a **js** folder. If you downloaded the LunarXP theme, you'll find the CSS files inside the scss folder.

You can add or customize CSS or Javascript by simply selecting the files adding your own CSS and Javascript code.