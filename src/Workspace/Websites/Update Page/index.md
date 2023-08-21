# Update Page

In Solodev, you can update any page on your website under the www folder. You can directly edit your page using in-line editing tools with a visual preview, or by accessing component code elements for each div on your page. 


In this article, you will learn how to access a specific page in your www folder, modify it using the editing options available in your CMS, and update your page’s meta information and details. 

<img src="../../../images/spacejet-main-page.jpg" alt="manage-website" style="width: 100%; display: block"></a> 

## Prerequisites 
- You will need to <a href="/workspace/websites/add-website/">add a website</a> to your CMS.
- You will need to <a href="/workspace/websites/manage-folder/add-page/">add a page</a> to your website.


## Using STML files

The most important assets in your www folder are STML files (.stml), the individual website files that are served in a browser when a user visits your website. STML files are built with templates using <a href="/tutorials/add-page-template/#dynamic-divs">dynamic divs</a>. A template imports common elements to a page such as the header and footer, while dynamic divs allow you to include unique page content, such as text, images, and more. 

## Viewing your page
The Solodev editing experience is highly visual and provides a fully rendered preview of your page’s template elements, graphics, and text. 

Using the toolbar at the top of the screen, you can instantly view your page in a desktop, tablet, and smartphone format to test responsiveness and make in-line edits. You can also highlight divs, open a tab to your live page, and expand the window to maximize your viewable area.

<img src="../../../images/spacejet-top-toolbar.jpg" alt="manage-website" style="width: 100%; display: block"></a> 


**Name** | **Description**
:--- | ---
Mobile View | Toggle to a responsive view for a smartphone.
Tablet View | Toggle to a responsive view for a tablet. 
Desktop View | Toggle to a responsive view for a desktop/laptop computer.
Highlight Divs | Apply a blue dotted line to identify the divs and .tpl sections of your page.
Open Live Website | Launch a new browser tab to view your live, published page. 
Expand Window | Fully expand the rendered view of your page to remove toolbars.

## In-line editing
You can directly edit a page on your website using Solodev’s in-line editing features. Click on a div or content block to access the editing features, make changes, and save your updates. 

!!! **Note**: 
This low-code method is ideal for making quick changes to your content like updating text or modifying links. More complex changes will require <a href="/workspace/websites/update-page/#updating-a-page-using-code">editing the code</a>  on your page.
!!!

**Step 1**: Open the **www folder** in the left-hand menu and select a page to edit. Remember to click on the triangle graphic to the left of each folder to access its contents.

<img src="../../../images/left-side-menu.jpg" alt="manage-website" style="width: 20%; display: block"></a> 

**Step 2**: On your selected page, click on the section you wish to edit to access the dynamic div. A small flag with a pencil icon and text will appear inthe upper left corner. Click on the icon to directly edit the page.

<img src="../../../images/spacejet-div-access.jpg" alt="manage-website" style="width: 100%; display: block"></a> 

**Step 3**: Once activated, an editing toolbar will appear in your div, allowing you to select text and update your page directly. You can apply styles for bold, italic, and underlined text and change the heading styles. You can also apply numbering, bullets, and links to your content. 

<img src="../../../images/spacejet-div-inline-editor.jpg" alt="manage-website" style="width: 100%; display: block"></a> 

!!! **Note**: 

The editing pane will only apply styling that is based on your website’s CSS.
!!!

**Step 4**: After updating your content, use the **Draft**, **Stage**, or **Publish** buttons in the editing toolbar to save your changes for review or to push live directly.  

**Name** | **Description**
:--- | ---
Bold | Apply a bold version of your text style.
Italic | Apply an italic version of your text style.
Underline | Add a line under any text for emphasis (does not link).
Heading | Change the heading status of your text (H1, H2, paragraph, etc.).
Add Link | Apply a hyperlink to any text.
Remove Link | Remove a hyperlink from any text.
Paste from Word | Add copied text from Microsoft Word to your page content.
Draft | Create a draft version of your code or content.
<a href="/workspace/websites/manage-folder/stage/">Stage</a>  | Set up a staged version of your code or content for review as part of your workflow. 
<a href="/workspace/websites/manage-folder/publish/">Publish</a>  | Push your code or content to live production.

!!! **Note**:
You can also use the tab in the upper right corner of the Metadata panel to Draft, Stage, or Publish your changes. 
!!!

## Updating a page using code

In addition to in-line editing, you can access the code to update a div or .tpl on your page.


**Step 1**: Open the **www folder** in the left-hand menu and select a page to edit. Remember to click on the triangle graphic to the left of each folder to access its contents.

<img src="../../../images/left-side-menu.jpg" alt="manage-website" style="width: 20%; display: block"></a> 

**Step 2**: On your selected page, click on the section you wish to edit to access the dynamic div. A small flag with a pencil icon and text will appear inthe upper left corner. Click on the text to access the code for the div. 

<img src="../../../images/spacejet-div-access-2.jpg" alt="manage-website" style="width: 100%; display: block"></a> 


**Step 3**: Once the code appears, you can make any desired modifications.

<img src="../../../images/spacejet-tpl-code.png" alt="manage-website" style="width: 100%; display: block"></a> 

**Step 4**: After updating your content, use the **Draft**, **Stage**, or **Publish** buttons in the editing pane to save your changes for review or to push live directly.  

<img src="../../../images/spacejet-edit-code-tools.png" alt="manage-website" style="width: 100%; display: block"></a> 


!!! **Note**: 
In addition to Draft, Stage, and Publish, the editing pane offers additional features listed in the table below. 
!!!

**Name** | **Description**
:--- | ---
Draft |Create a draft version of your code or content.
<a href="/workspace/websites/manage-folder/stage/">Stage</a>  |Set up a staged version of your code or content for review as part of your workflow. 
<a href="/workspace/websites/manage-folder/publish/">Publish</a> |Push your code or content to live production. 
<a href="/workspace/documents/editing-files/add-to-group/">Add to Group</a> |  Assign a specific group to your file or asset. 
<a href="/workspace/documents/editing-files/history/">History</a>  | Review previous versions of your content or code and restore a saved version.
<a href="/workspace/documents/editing-files/copy/">Copy</a> | Copy a file or asset for editing or additional use elsewhere in your website.
<a href="/workspace/documents/editing-files/move/">Move</a>  | Relocate a file or folder based on your taxonomy.
<a href="/workspace/documents/editing-files/delete/">Delete</a>  |Removed a file or folder from your website.
<a href="/workspace/documents/editing-files/show-or-hide-meta-data/">Meta</a> | Add meta information and details.
<a href="/workspace/documents/editing-files/includes/">Includes</a> | Add files as includes featuring a name and location.
<a href="/workspace/websites/manage-folder/upload//">Upload Files </a> | Add files using a drag-and-drop uploader. 


## Manage meta information with the Metadata panel

When updating a page using in-line editing, you can view and manage your meta information using the Metadata panel at the right side of the page preview. 

The Metadata panel provides quick access to details such as the page ID, which team member made the last update, and the page's location in your website structure. It also provides editable components for page name, description, keywords, and more. 

<img src="../../../images/spacejet-metadata-panel.jpg" alt="manage-website" style="width: 100%; display: block"></a> 


!!! **Note**:
The Metadata panel can be collapsed using the small “>” icon in the upper left of the window.
!!!

**Name** | **Description**
:--- | ---
Name | Click the pencil icon to update the name of your page. 
Published | View the published versions of your page using the picker below the name.
Title | Add a title to your page.  
Description | Provide an overview of your page for unfurling and other applications. Limit: 255 characters. 
Keywords | Include the top keywords from your content to improve SEO. Limit: 180 characters.
Structured | Apply structured status to your page within your folder hierarchy.

### Unfurling Preview 
The Metadata panel also previews how the page will unfurl in search results and other applications like Slack.

<img src="../../../images/spacejet-unfurl.jpg" alt="manage-website" style="width: 40%; display: block"></a> 

### Advanced

Customize your page's behavior, appearance, and functionality with granular settings to add social media images, control rank, manage header code, and more.

<img src="../../../images/meta-advan.png" alt="manage-website" style="width: 40%; display: block"></a> 

**Name** | **Description**
:--- | ---
H1 Title | The main heading of the page. 
Page Description | Provides a brief overview of the page's content. 
Menu Name | Specifies how the page is displayed in navigation menus. It can be different from the page's actual title. 
Rank | Determines the order in which pages are displayed in navigation menus or other listing views. 
Social Media Image | Image that is displayed when the page is shared on social media platforms.  
Tags | Keywords or labels associated with the page. 
Body ID | An HTML attribute that provides a unique identifier for the page's main content area. 
Body Role | Specifies the role of the main content area in the page's structure, following web accessibility guidelines. 
Body Class | HTML attribute that assigns one or more classes to the page's main content area. 
Header Code | allows you to add custom code to the page's header section. 
Is Template | If enabled, this indicates that the page is a template for other pages. 
Is Cached | If enabled, the page content may be cached to improve performance. 
