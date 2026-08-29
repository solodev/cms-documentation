# Website Overview

You can manage any website in your Solodev CMS to update details, adjust the Vhost, apply redirects, and modify permissions for your team. You will also have access to the [web files](/websites/website-overview/#web-files) and [www](/websites/website-overview/#www) folders for managing your website's pages, templates, and other assets. 

## Website Dashboard

After selecting an active website in your Solodev CMS, you're directed to that website's dashboard: a left-hand file tree, a live preview of the site in the middle, and a details/actions panel on the right.

<p><img src="../../../../images/websites/website-overview.png" alt="Website Overview dashboard"></p>

**Left: file tree** &mdash; expand **web files** and **www** to browse the site's folders and pages, and switch between websites using the dropdown at the top of the tree.

!!!Note:
Click the back arrow or **Websites** at the top of the tree to return to the main [Websites](/websites) list. 
!!!

!!!Tip:
If the file tree looks empty, you (or your group) may not be a member of this website yet -- being in a group with broad app-level access isn't the same as having permissions on this specific website. Add yourself via [Permissions](/websites/website-overview/permissions/) below.
!!!

**Center: live preview** &mdash; the toolbar above it has a pencil icon (opens [Update Website](/websites/website-overview/update-website/) to edit the site title, framework, social links, and other settings), device-width toggles (mobile/tablet/desktop) to preview responsively, and an expand icon for full screen.

**Right: details and actions** &mdash; shows the website's name, description, and thumbnail, followed by its addresses:

**Name** | **Description**
:--- | ---
URL | The live public address.
Origin URL | The non-cached, origin address.
Staging URL | The staging address used for testing.

Below that, the **Update** dropdown provides:

**Name** | **Description** 
:--- | ---
[Vhost](/websites/website-overview/vhost/) | Manage the website's primary URL, domain information, CDN, SSL, and advanced settings.
[Redirects](/websites/website-overview/redirects/) | Edit the website's `.htaccess` file directly to add 301 redirects and other rules.
[Permissions](/websites/website-overview/permissions/) | Manage roles for users and groups on your team.
[Generate Sitemap](/websites/website-overview/generate-sitemap/) | Build the website's sitemap.

At the bottom of the panel, **Pages** lists the site's most recently worked-on pages as thumbnails, with a **+** button to add a new one. Click any page to open it.

## web files and www 

Solodev has a unique, folder-based site structure for managing and building websites. This consists of two core folders: web files and www. These folders mutually reinforce one another and help power your website's content, code, and pages.

After [adding a website](/websites/add-website/) to your Solodev CMS, you can access the web files and www folder from the left-hand menu on your main website dashboard. 

### web files 
The web files folder houses the backend elements that power the structure of your website. This includes navigational and layout templates, HTML, code files, imagery and content, [modules](/modules), [forms](/forms), and other components. You can [manage files](/websites/manage-files/) from this folder.

### www
The www folder includes all the frontend pages and files that are publicly accessible when a visitor navigates your website. The www folder is where you can [manage pages](/websites/manage-pages/) on your website.

### Using web files and www 

There are several functions you can perform in web files and www at the folder and the file level:

*	[Manage the folder](/websites/manage-folder/) properties by clicking on the folder icon or text.

*	Access the contents of either folder by clicking on the triangle drop-down icon to the left of each folder icon. 

*	Under the www folder, you can use all the same functions as web files, but also [add a page](/websites/manage-folder/add-page) or [manage a page](/websites/manage-pages/).