In Solodev, you can update any page on your website under the **www** folder. You can build a page from scratch using a layout template and a drag-and-drop component palette, directly edit an existing page using in-line editing tools with a visual preview, or access the underlying code for each div on your page.

In this article, you will learn how to build a new page from a layout template and the component palette, access an existing page in your www folder, modify it using the editing options available in your CMS, and update your page's meta information and details.

<p><img src="../../images/websites/pages/built-page-overview.png" alt="A real page built from a base template, a Blog module, and shared header/footer"></p>

The page above was built entirely with the process in this article: a [layout template](#building-a-page) for the header/nav/footer, then a [Module](#adding-content-with-the-component-palette) dropped in for the Blog.

## Using STML files

The most important assets in your www folder are STML files (.stml), the individual website files that are served in a browser when a user visits your website. STML files are built with templates using [dynamic divs](/websites/page-overview/dynamic-div/). A template imports common elements to a page such as the header and footer, while dynamic divs allow you to include unique page content, such as text, images, and more. In raw markup, a dynamic div is just `<div class="dynamicDiv"></div>` &mdash; the connecting point between your HTML/.tpl files and an STML page.

## Building a page

When you [add a page](/websites/add-page/), the **Layouts** picker determines what you start with:

**Name** | **Description**
:--- | ---
Blank Template | Start from a completely empty STML page with no content.
Base Template | A full-width Bootstrap shell with a reusable header, footer, and three body layout drop zones.
Homepage Template | A Bootstrap homepage shell with stacked section bands and blank content regions.
Sectional Template | A flexible Bootstrap shell with stacked content rows, suited to promo or landing sections.
Content Template | A Bootstrap inner-page shell with a two-column content-and-sidebar layout.

The Base, Homepage, Sectional, and Content layouts are built-in Bootstrap system templates &mdash; a faster starting point than Blank Template if your page fits one of those common shapes.

## Adding content with the component palette

A page you're editing has a vertical icon rail on its left edge. Each icon is a draggable component type &mdash; drag one onto an empty region of the page canvas to insert it:

<p><img src="../../images/websites/pages/component-rail.png" alt="Component palette rail" class="border"></p>

**Name** | **Description**
:--- | ---
[Dynamic Div](/websites/page-overview/dynamic-div/) | Inserts a new, empty dynamic div directly &mdash; no picker, ready for in-line content.
[Components](/websites/page-overview/components/) | Insert a saved, reusable group of components.
[File](/websites/page-overview/file/) | Insert an HTML or Template Code file from your web files.
[Module](/websites/page-overview/module/) | Insert a module (Blog, Calendar, Datatable, and so on).
[Form](/websites/page-overview/form/) | Insert a contact form.
[File Group](/websites/page-overview/file-group/) | Insert a file group.
[Scheduler](/websites/page-overview/scheduler/) | Insert a scheduler.
[Experiment](/websites/page-overview/experiment/) | Insert an A/B experiment.

Every picker (except Dynamic Div, which has none) shares the same layout: a searchable list on the left with a **+ Add** shortcut if you need to create a new one on the spot, and a preview pane on the right showing the selected item's details before you commit.

!!! Tip:
Drop directly onto an empty dynamic div, not just anywhere on the canvas. If the File you drop is itself a template with its own dynamic div inside (like [base-template.tpl](/websites/file-overview/)), that inner div becomes a new drop target &mdash; you can keep nesting components inside it the same way, building up a full page like header → file → module → footer.
!!!

!!! Note:
Dropping a component updates the page in your browser immediately, but it isn't saved yet. Use [Publish, Stage, or Draft](/websites/file-overview/publish-stage-draft/) once you're done to save your changes &mdash; the same as any other file.
!!!

## Viewing your page
The Solodev editing experience is highly visual and provides a fully rendered preview of your page’s template elements, graphics, and text. 

Using the toolbar at the top of the screen, you can instantly view your page in a desktop, tablet, and smartphone format to test responsiveness and make in-line edits. You can also highlight divs, open a tab to your live page, and expand the window to maximize your viewable area.

<p><img src="../../images/websites/pages/page-preview-toolbar.png" alt="Page preview toolbar with mobile/tablet/desktop toggles and expand" class="border"></p>

**Name** | **Description**
:--- | ---
Refresh Frame  | Refresh the content area.
URL Bar  | Displays the relative path of the page.
Expand Window | Expand the rendered view of your page to fill the window and hide the toolbars.
Highlight Divs | Apply a blue dotted line to identify the `divs` and `.tpl` sections of your page.
Open Live Website | Open your live, published page in a new browser tab. 

## In-line editing
You can directly edit a page on your website using Solodev’s in-line editing features. Click on a div or content block to access the editing features, make changes, and save your updates. 

!!! **Note**: 
This low-code method is ideal for making quick changes to your content, such as updating text or modifying links. More complex changes will require [editing the code](/websites/page-overview/#accessing-your-code-from-a-page) on your page.
!!!

**Step 1**: Open the **www folder** in the left-hand menu and select a page to edit. Remember to click on the triangle graphic to the left of each folder to access its contents.

**Step 2**: On your selected page, click on the section you wish to edit to access the dynamic div. A small flag with a pencil icon and the name of the file will appear in the upper left corner. Click on the pencil icon to directly edit the page.

<p><img src="../../images/websites/pages/hero-component.png" alt="Hero component with name selected"></p>

**Step 3**: Once activated, an editing toolbar will appear in your div, allowing you to select text and update your page directly. You can apply styles for bold, italic, and underlined text and change the heading styles. You can also apply numbering, bullets, and links to your content. 

<p><img src="../../images/websites/pages/hero-component-edit.png" alt="Hero component with inline editor"></p>

!!! **Note**: 
The editing pane will only apply styling that is based on your website’s CSS.
!!!

**Name** | **Description**
:--- | ---
Bold | Apply a bold style to your text.
Italic | Apply an italic style to your text.
Underline | Add a line under your text for emphasis.
Heading | Change the heading level of your text (H1, H2, paragraph, etc.).
Numbered List | Format your text as a numbered list.
Bulleted List | Format your text as a bulleted list.
Add Link | Add a hyperlink to your text.
Remove Link | Remove a hyperlink from your text.
Paste from Word | Add copied text from Microsoft Word to your page content.
Spell Check | Check your spelling as you type. Click the icon for more options.
[Draft](/websites/file-overview/publish-stage-draft/) | Create a draft version of your code or content.
[Stage](/websites/file-overview/publish-stage-draft/) | Set up a staged version of your code or content for review as part of your workflow.
[Publish](/websites/file-overview/publish-stage-draft/) | Push your code or content to live production.

!!! **Note**:
You can also use the tab in the upper right corner of the Metadata panel to Draft, Stage, or Publish your changes. 
!!!

## Accessing your code from a page

In addition to in-line editing, you can access the code to update an `.html` or `.tpl` file on your page.

Open the **www folder** in the left-hand menu and select a page to edit. Click the triangle to the left of each folder to expand it and access its contents.

On the selected page, click the section you want to edit to access the file in the Dynamic Div. A small flag with a pencil icon and the name of the file will appear in the upper-left corner. Click the file name to access the code.

<p><img src="../../images/websites/pages/hero-component-file-name.png" alt="Hero component with name selected"></p>

Once the file opens, you can start making the desired modifications.
