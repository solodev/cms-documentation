# Add Page

A page is the basic building block of a website. It acts as a container for your content while providing a general structure based on your layout template and styling. From an open **www** folder, click **+ Add** and select **Add Page**.

## STML files 

While a page is composed of hypertext markup and served in a browser, all pages in the Solodev CMS are given a ".stml" extension. An STML is an HTML file that contains server-side includes (SSI), which are used to generate page-generated content. STML files are processed by the server when a user accesses the related webpage.

!!!Note:
if you're creating an HTML page with a code editor, you need to manually give it an extension of ".stml" before you upload the file to your Solodev CMS.
!!!

<p><img src="../../images/websites/pages/add-page-layouts.png" alt="Add Page form" style="width: 45%;"></p>

**Name** | **Description**
:--- | ---
Name | Add the page name. The name of the page should be lowercase and separated with dashes.
Title | Add the page title. This will be the Title displayed on your site. 
Description | Add the page description. This description can be utilized on your website's frontend or for organizational purposes.
Layouts | Choose a starting layout &mdash; see below.
Confirm | After filling out all the required fields, please click the **Submit** button to save your changes.

## Layouts

**Name** | **Description**
:--- | ---
Blank Template | Start from a completely empty STML page with no content.
Base Template | A full-width Bootstrap shell with a reusable header, footer, and three body layout drop zones.
Homepage Template | A Bootstrap homepage shell with stacked section bands and blank content regions.
Sectional Template | A flexible Bootstrap shell with stacked content rows, suited to promo or landing sections.
Content Template | A Bootstrap inner-page shell with a two-column content-and-sidebar layout.

The Base, Homepage, Sectional, and Content layouts are built-in Bootstrap system templates &mdash; a faster starting point than Blank Template if your page fits one of those common shapes. Once your page is created, see [Page Overview](/websites/page-overview/) for how to build it out with the drag-and-drop component palette.

### Which layout fits?

- **Homepage** is your site's front door, and there's normally only one -- it introduces the whole site and often carries a hero banner, a CTA, and links out to everything else.
- **Sectional** is a high-level jumping-off point for one section of a larger site (think a "Departments" landing page linking out to each department). Used sparingly, and usually styled to stand out from ordinary content pages.
- **Content** (sometimes called an "interior" template) is the workhorse -- it powers the bulk of an ordinary multi-page site and gets reused across many pages that share the same shape.
- **Base** underlies all of the above -- it's the header/footer/tracking-code shell that the other layouts (and any page you build from Blank) are ultimately built on top of.
