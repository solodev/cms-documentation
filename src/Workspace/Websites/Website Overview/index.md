# Website Overview

You can manage any website in your Solodev CMS to update details, adjust the Vhost, apply redirects, and modify permissions for your team. You will also have access to the [web files](/workspace/websites/website-overview/#web-files) and [www](/workspace/websites/website-overview/#www) folders for managing your website's pages, templates, and other assets. 

## Website Dashboard

After selecting an active website in your Solodev CMS, you're directed to that website's dashboard: a left-hand file tree, a live preview of the site in the middle, and a details/actions panel on the right.

**Left: file tree** &mdash; expand **web files** and **www** to browse the site's folders and pages, and switch between websites using the dropdown at the top of the tree.

!!!Note:
Click the back arrow or **Websites** at the top of the tree to return to the main [Websites](/workspace/websites) list. 
!!!

**Center: live preview** &mdash; the toolbar above it has a pencil icon (opens [Update Website](/workspace/websites/website-overview/update-website/) to edit site title, social media, meta information, and custom pages), device-width toggles (mobile/tablet/desktop) to preview responsively, and an expand icon for full screen.

**Right: details and actions** &mdash; shows the website's name, description, and thumbnail, followed by its addresses:

**Name** | **Description**
:--- | ---
URL | The live public address.
Origin URL | The non-cached, origin address.
Staging URL | The staging address used for testing.

Below that, the **Update** dropdown provides:

**Name** | **Description** 
:--- | ---
[Vhost](/workspace/websites/website-overview/vhost/) | Manage the website's primary URL, domain information, CDN, SSL, and advanced settings.
[Redirects](/workspace/websites/website-overview/redirects/) | Review and manage the website's 301 redirects and its **.htaccess history**.
[Permissions](/workspace/websites/website-overview/permissions/) | Manage roles for users and groups on your team.
[Generate Sitemap](/workspace/websites/website-overview/generate-sitemap/) | Build the website's sitemap.

At the bottom of the panel, **Pages** lists the site's most recently worked-on pages as thumbnails, with a **+** button to add a new one. Click any page to open it.

## web files and www 

Solodev has a unique, folder-based site structure for managing and building websites. This consists of two core folders: web files and www. These folders mutually reinforce one another and help power your website's content, code, and pages.

After [adding a website](/workspace/websites/add-website) to your Solodev CMS, you can access the web files and www folder from the left-hand menu on your main website dashboard. 

### web files 
The web files folder houses the backend elements that power the structure of your website. This includes navigational and layout templates, HTML, imagery and content, [modules](/workspace/modules), [forms](/workspace/forms), and other components. From .tpl code to SCSS, you can [update web files](/workspace/websites/update-web-files) from this folder.

### www
The www folder includes all the frontend pages and files that are publicly accessible when a visitor navigates your website. The www folder is where you can [update the pages](/workspace/websites/update-page) on your website.

### Using web files and www 

There are several functions you can perform in web files and www at the folder and the file level:

*	[Update the folder](/workspace/websites/manage-folder/update-folder) properties by clicking on the folder icon or text.

*	Access the contents of either folder by clicking on the triangle drop-down icon to the left of each folder icon. 

*	Under the www folder, you can use all the same functions as web files, but also [add a page](/workspace/websites/manage-folder/add-page) or [update a page](/workspace/websites/update-page).