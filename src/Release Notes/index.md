# Solodev Release Notes


## Solodev CMS 9.4 Release Notes

Published in Q2 2021, Solodev CMS 9.4 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev Content Management System.

 

**Key Release Highlights**

From a feature perspective, 9.4 adds Captcha enhancements and a variety of UI updates.

 

**New Features**

- Rework of Captcha to use a honeypot instead of session-based Captcha code

 

**Improvements**

- CMS-1710 - Refactor so that user data is not printed to the page via Javascript

- CMS-1426 - Add Archive History UI component to website's htaccess asset file

 

**Bug Fixes**

- CMS-1981 - Unable to add photos to event hub module using the upload feature

- CMS-1976 - CSS styling causes bullets on contact index page to disappear

- CMS-1975 - Delete icons hover above users and groups

- CMS-1965 - PDFs displayed using fileparse unable to render on first load with Internet Explorer

- CMS-1948 - User folder is not deleted upon deleting a user object

- CMS-1918 - File uploads should prepend asset file id to name if the file already exists

- CMS-1820 - Bad regex warning appears on installation of SpaceJet theme

- CMS-1482 - Copying Calendar Entry takes user back to non-tab view

 

**Stories**

- CMS-1716 - The Invite User(s) button is no longer visible when SSO is enabled

- CMS-1646 - A CMS user can now invite a new user via SSO

 

Tasks

- CMS-1991 - Removed SEMrush data integration from website CMS Dashboard and prevented Dashboard from showing in Cloud/SSO Mode

- CMS-1988 - Updated BYOL CloudFormation templates so that Enterprise deployments launch with Redis-enabled AMI

- CMS-1983 - Reviewed dashboard website image generation and page thumbnails in Cloud

- CMS-1934 - Check permissions being added when a normal user adds a folder

- CMS-1728 - Added "Organization Name" field to Config view and settings.php so that Intercom users are automatically associated with a company

## Solodev 9.3 Release Notes 

Solodev CMS 9.3 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. This version of Solodev CMS includes a greater integration with Solodev Cloud, increased support for native AWS services such as Redis Clusters and Backup Manager, and improved image/thumbnail generation. Additional features include a new Collaboration view that improves upon the existing Feedback task system. Bug fixes include better image/document upload handling and escaping automatically generated Meta Descriptions.

 

**Key Release Highlights**

- New Collaboration view and improved Collaboration/Feedback tasks

- Support for AWS Redis Clusters, AWS Backup Manager, and Application Load Balancers (ALBs)

- New "Stager" role permission

- Improved thumbnail generation and thumbnail image management

**New Features**

- CMS-335 - Add support for SVG tags

- CMS-1550 - Greater support for website and webpage screenshot images within the CMS

- CMS-1704 - Add support for custom "error_document" for calendar and datatable entries that are expired or in draft

- CMS-1897 - Add the link path to view of asset files like images and pdfs

- CMS-1950 - Integrate new Collaboration fly-out modal

- CMS-1951 - Redesign Feedback fields into new Collaboration view

- CMS-1961 - Integrate Solodev Cloud with "Update Website"

- CMS-1962 - Integrate Solodev Cloud with "Add Module"

- CMS-1966 - Shutterstock Integration for media uploads

- CMS-1978 - Add support for optional redis cluster to Enterprise deployments

- CMS-1982 - Add support for AWS Backup Manager to Pro/Enterprise deployments

**Improvements**

- CMS-902 - Force file tree to update active class as new tabs are opened

- CMS-1338 - Improve capability to search within subfolders

- CMS-1669 - Remove generated thumbnail images if parent image is deleted

- CMS-1711 - Add thumbnail preview image to attachments section for calendar entries

- CMS-1717 - Improve rotation of MongoDB logs

- CMS-1739 - Add new "Stager" permission role so users can draft/stage content but not publish

- CMS-1894 - Change CloudFormation templates for Enterprise deployments to use an application load balancer (ALB) instead of a classic/elastic load balancer (ELB)

- CMS-1898 - Update breadcrumb shortcode to include aria-labels on breadcrumb links

- CMS-1926 - Add "Draft/Publish" status (entry_status) within the module grid

- CMS-1938 - "Forms" route should just show datatable type "Website Form"

- CMS-1968 - Prevent app backend from being crawled

- CMS-1970 - Add default options to "Expire Date" on file

- CMS-1971 - Improve efficiency of searching for users/groups while setting permissions

- CMS-1987 - Improve efficency of MongoDB heal script in relation to servers turning ouff behind a load balancer

**Bug Fixes**

- CMS-1502 - Folders embedded in a DynamicDiv are clickable and open a new tab

- CMS-1764 - Automatic parsing of content to populate meta description should ignore double quotes

- CMS-1789 - When clicking "Maximize" button in page editor, publishing/editing buttons are hidden

- CMS-1790 - Websites grid does not show the hand cursor when hovering over grid objects

- CMS-1817 - Non client/super admin users cannot add documents to File Groups

- CMS-1941 - Uploading/overwriting images does not update their icon/thumbnail

- CMS-1942 - The "Browse" option related to file uploads within the Add Entry modal defaults to the parent folder and not "_Assets"

- CMS-1958 - Next and Previous module entry arrows produce app errors if user is logged out

- CMS-1969 - Mailer_Manager isset checks for smtp_username and smtp_password but not smtp_host


## Solodev CMS 9.2 Release Notes

Solodev CMS 9.2 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. This version of Solodev CMS includes a native Swagger API documentation and API Token system to allow end users the ability to control CMS functionality through a secure REST API. Additional features and improvements include: integration capability with Amazon Simple Email Service (SES), a system-wide search on the CMS dashboard, a new "SpaceJet" website theme, better logging/streaming during Website and App installations, as well as an improved upload workflow for documents and images within a given WYSIWYG editor. Bug fixes include better support for Windows environments, various route/Slim errors, and improved RSVP functionality.

**Key Release Highlights**

- New embedded Swagger API documentation

- Improved API Token workflow

- Amazon Simple Email Service (SES) integration capability

- Global system-wide search

- New SpaceJet Website theme

- Improved file upload process within WYSIWYG editors

**New Features**

- CMS-448 - Create API dashboard

- CMS-1527 - Add "Create Contacts" view and include necessary fields

- CMS-1699 - Create "Update Contact" view with necessary fields

- CMS-1736 - Add a token history view

- CMS-1785 - When installing an App, a status is needed saying that the App is currently installing

- CMS-1794 - Add image preview option to "Configure Website" view when a user uploads a custom logo

- CMS-1798 - Allow email integration with Amazon Simple Email Service (SES)

- CMS-1809 - Replace LunarXP with SpaceJet as the default deployable theme

- CMS-1814 - Global Search

**mprovements**

- CMS-544 - Add API Token to API navigation

- CMS-930 - Implement remove picture functionality from profile

- CMS-1555 - Exclude "Add Page" from list of actions available in folders under Web Files

- CMS-1723 - Add confirmation when removing an API token

- CMS-1726 - Consolidate upload buttons into a Bootstrap nested button group

- CMS-1757 - Add the ability to show and hide secret API token key

- CMS-1758 - Add ability to make token active and inactive

- CMS-1759 - Remove input outline for token secret and fix clicking input show and hide

- CMS-1771 - Inventory datatable entry should have datepicker for start and stop times

- CMS-1774 - Various improvements to the upload asset (image, pdf, etc) modal and workflow

- CMS-1775 - Style website building iframe

- CMS-1777 - Add "YouTube" option as available button in CKEditor

- CMS-1784 - Rework package importer so that npm run css/npm run js is run at the end of the process

- CMS-1787 - Modernize Page Studio for use in CMS

- CMS-1810 - Remove hard coded paths when adding a site in Windows - Environment

- CMS-1815 - Remove extra object properties from Asset_Category

- CMS-1893 - Update NPM dependencies for SpaceJet

- CMS-1902 - Rework package importer so that site variables can pass into config.json

**Bug Fixes**

- CMS-1702 - Apps directory is not created on install for server builds

- CMS-1744 - Legacy inventory object being used during event RSVP registration

- CMS-1751 - Event RSVP refers to legacy Inventory object

- CMS-1760 - CKEditor adds fixed height and width properties to images

- CMS-1762 - "Disable RSVP" checkbox is not displayed inline

- CMS-1763 - "Check availability" of Free Solodev SSL backend URL throws error

- CMS-1765 - "Add Apps" shows wrong left navigation

- CMS-1773 - Filemanager search function doesn't find files with a search query

- CMS-1783 - Permission route throws javascript error on view existing permission sets

- CMS-1793 - Renaming a STML page leaves a ghost page behind with old stub

- CMS-1800 - API Token History creates Slim error

- CMS-1801 - "Add Modules" does not redirect to module after installation

- CMS-1802 - Modules API Bearer Token Returns 500 Internal Service Error

- CMS-1803 - Tours are broken for logged-in users

- CMS-1804 - Windows Environment - Cannot upload a file through the File Uploader modal

- CMS-1805 - Windows Environment - Cannot add a new datatable category

- CMS-1806 - Windows Environment - Copying a datatable entry creates an empty entry

- CMS-1807 - Windows Environment - Copying a calendar entry shows a blank screen as no calendar_entry_id is passed through

- CMS-1808 - Windows Environment - Adding a calendar entry opens a blank tab as no calendar_entry_id is passed through

- CMS-1811 - Windows Environment - "Modify" route for calendars and datatables returns Slim error

- CMS-1813 - Windows Environment - Add Website route returns Slim error

- CMS-1821 - Windows Environment - Modules route returns Slim error

- CMS-1823 - Updating custom App should close the modal

- CMS-1826 - When adding Custom Builder module, the success message appears in a new screen

- CMS-1884 - "Build Your Theme" installation step does not scroll log throughout process

- CMS-1886 - Apps throw a slim error upon installation

- CMS-1904 - The "Hello World" App displays PHP warnings and errors

- CMS-1910 - Typo in API Swagger

## Solodev CMS 9.1 Release Notes

Solodev CMS 9.1 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. This version of Solodev primarily focused on improvements within the Solodev Platform itself including improved User and Group views, additions to the package exporter, the addition of product "Tours", and support for XML files. New features include a completely new "file browser" when adding images to module entries or via the content WYSIWYG as well as a horizontally resizable left navigation when viewing the file tree. Bug fixes include fixing JavaScript errors, fixing errors in Internet Explorer, and improved performance with module grids.

**Key Release Highlights**

- Resizable left navigation.

- New file manager/browser to select existing images or assets.

- Better user and group profile images.

- New password and session policies for enhanced security.

- New Product "Tours".

- Improved Module grids.

**New Features**

- CMS-727 - Left Nav - Resizable Navigation.

- CMS-1279 - Prevent logout when editing asset file for a continued time.

- CMS-1386 - Add SEMrush website dashboard via API.

- CMS-1449 - Create YouTube responsive shortcode.

- CMS-1453 - Rework file upload to be Solodev-based file manager.

- CMS-1514 - Add "external link" button on STML views that opens the live page in a new tab.

- CMS-1526 - Add avatar random color functionality.

- CMS-1533 - Add "Tours" section to dashboard.

- CMS-1546 - Add camera overlay to profile picture that then produces an action dropdown.

- CMS-1557 - Add role drop down to view permissions and enforce them.

- CMS-1559 - Add "Tours" to the left navigation under "Support".

- CMS-1700 - Fix hardcoded values in the add app dropdown.

 

**Improvements**

- CMS-998 - Validate website address to avoid duplicates.

- CMS-1021 - Add additional "from_email" field check for processing datatable response emails.

- CMS-1160 - Validation on password and confirm password does not dynamically update leaving error message in place.

- CMS-1264 - Make the heading of entry details more consistent between calendars and datatables.

- CMS-1345 - Add asset file backend path to Meta modal.

- CMS-1360 - Exporter to dynamically change the ID attribute of the category_list shortcode.

- CMS-1361 - Exporter to map images to category.

- CMS-1362 - Exporter to map attachments/gallery images to entries.

- CMS-1366 - Empty dynamic divs should by default have a border.

- CMS-1367 - Modify entry URL to include preview attribute if entry is set to draft.

- CMS-1385 - Ensure .htaccess is an asset file with appropriate archiving.

- CMS-1387 - Add additional Vhost settings.

- CMS-1389 - Deleting calendar/datatable entry from grid view to refresh the grid.

- CMS-1406 - Have actions moved to the top of the page when on smaller screens (cms-mobile).

- CMS-1421 - Show category's ID on category view.

- CMS-1423 - Move CDN fields to their own panel/card under Website Settings.

- CMS-1435 - Check ability to inject CSS classes inside the WYSIWYG.

- CMS-1446 - Users should have the ability to install a Modules in a specified folder.

- CMS-1447 - Clean up WYSIWYG buttons for regular HTML asset files.

- CMS-1450 - Add domain validation to Add Website step.

- CMS-1451 - XML files need to execute PHP.

- CMS-1478 - On the "Modules" view, add a "Location" dropdown that would filter Modules based upon their location.

- CMS-1497 - Order websites on dashboard by last activity.

- CMS-1499 - Add "Recents" table to dashboard.

- CMS-1506 - Update users grid to show full name and email address.

- CMS-1545 - Profile pop over should slide out behind the profile bar.

- CMS-1551 - On Modules view sort them by which one the user has made edits to entries.

- CMS-1553 - "entry_status" (publish/draft) should appear in API endpoint responses.

- CMS-1554 - Implement replace picture on profile.

- CMS-1570 - Add aria labels to privacy banner shortcode.

- CMS-1584 - Sticky infoDivs on scroll.

- CMS-1585 - Sort by most recently edited website on the actual Websites route.

- CMS-1586 - Add recently edited pages to the Websites dashboard.

- CMS-1591 - Query tours based upon user role.

- CMS-1593 - Add recent activity on user profile.

- CMS-1611 - Show "no users" message for groups without users.

- CMS-1621 - Add conditional check to calendar entries for "canonical_url" form field.

- CMS-1665 - Add copy/paste from Word option to standard WYSIWYG editor.

- CMS-1666 - Add text alignment and styling options to default WYSIWYG editor.

- CMS-1668 - Allow the search input on the modules view to search the locations column.

- CMS-1686 - Limit number of groups/members that can show in the grid column.

- CMS-1689 - Limit number of groups shown on the users grid.

- CMS-1712 - W3C HTML Validation issues.

- CMS-1741 - Add sub-folders search in solodev admin.

**Bug Fixes**

- CMS-513 - Entry URL stub does not delete after entry is deleted.

- CMS-1124 - When removing Custom CSS related to branding, some comment is needed in order to save otherwise the file does not save.

- CMS-1304 - User can be added to a group multiple times.

- CMS-1341 - Javascript error when copying file.

- CMS-1342 - Drafting/Staging causes asset file to not display properly in DynamicDivs.

- CMS-1344 - Changing an asset file extension does not stick after submitting the change via the Meta modal.

- CMS-1346 - The same asset file can be opened twice in two different tabs.

- CMS-1352 - After import of LunarXP, datatable/form return templates are empty.

- CMS-1354 - Slim error upon logging into enterprise server for the first time/starting session.

- CMS-1355 - Enterprise builds return 400 (Bad Request) when saving calendar entries.

- CMS-1356 - Submitting changes to website .htaccess/redirects modal throws a JS error.

- CMS-1357 - CSRF errors on reset password form.

- CMS-1369 - Action bar missing for datatable category group if opened via file tree.

- CMS-1370 - SCSS asset update does not fully publish new minified css files.

- CMS-1372 - Reset password link for user coming back as expired or invalid.

- CMS-1388 - Display/hide columns for a grid display not working with custom fields.

- CMS-1391 - WYSIWYG adds paragraphs between opening and closing shortcodes.

- CMS-1393 - Chat help icon overlays the action modal.

- CMS-1394 - A user cannot draft or stage changes to a Datatable form.

- CMS-1430 - Logged-in users cannot de-map entries from categories.

- CMS-1432 - Logged-in users cannot create datatable categories despite sufficient permissions.

- CMS-1440 - If "display_columns" is empty in the UI, then the columns revert to showing everything.

- CMS-1464 - Various "Choose File" bugs associated with the Solodev-based Filemanager.

- CMS-1468 - Pagination with the Solodev-based Filemanager causes the modal window to close.

- CMS-1487 - Columns in the manager entry grid are not adjustable.

- CMS-1488 - If multiple apps are installed and visible, the left navigation is cut off on smaller screens.

- CMS-1575 - "Browse" file uploader throws an error when used during the "Add Entry" process.

- CMS-1576 - Forgot password validation breaks button placement.

- CMS-1620 - Check issue were upon create/delete a null user is added.

- CMS-1634 - Permission tables with too long of a name cut off the "Role" column.

- CMS-1650 - Prevent group from being added as a member to itself.

- CMS-1656 - Categories view extends off the screen, hiding the bottom most elements.

- CMS-1660 - Inviting users on Firfox creates a loop that sends multiple emails.

- CMS-1687 - XML Files return "Access Denied." Message.

- CMS-1703 - recordOutboundLink is added multiple times to each link.

- CMS-1705 - Various bugs in Internet Explorer.

- CMS-1725 - Uploading a document through the WYSIWYG "Link -> Upload" button returns "Incorrect server response".

- CMS-1738 - Certain actions cause the tabs to move up on the page, effectively hiding them from view.

 ## Solodev 9.0 Release Notes

 Solodev CMS 9.0 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. This version of Solodev includes a comprehensive re-imagining of the Solodev backend with updated views, templates, and styles. A streamlined left nav allows users to quickly access common components such as Managers and Users. Table grids have been given a styling overhaul as have action buttons so that users clearly see what actions are available on a given view. All dependencies such as Boostrap and jQuery have been updated to the latest stable versions. New password policies are now in place to encourage more secure user passwords and sessions. Bug enhancements include fixes to the package importing process and dependency script errors.

**Key Release Highlights**

- A comprehensive UI update for improved views.

- A new action modal that presents clear user actions and input fields.

- Updated dependencies to latest stable releases.

- New password and session policies for enhanced security.

- Improved Apps and Branding functionality.

- New "Marketplace" so that users can quickly add managers and apps.

- Improved Add Website process including the introduction of the LunarXP theme.

**New Features**

- SCMS-454 - Add SSL capabilities to Solodev back-end.

- SCMS-599 - Add new "Roadmap" view.

- SCMS-654 - Logout invalidates session.

- SCMS-655 - Password strict comparison.

- SCMS-675 - Add new "Add Website" view.

- SCMS-685 - Add timezone to user settings.

- SCMS-686 - Add timezone to website settings.

- SCMS-689 - Global STML check for website timezone.

- SCMS-698 - Users - validation on change password.

- SCMS-721 - Add new "Users" view.

- SCMS-722 - Add new "Groups" view.

- SCMS-729 - Add Apps view to Solodev backend.

- SCMS-731 - Styling - Move CSS & JavaScripts assets to global/minified includes..

- SCMS-733 - Add new "Permissions" view.

- SCMS-736 - Add new "Workflows" view.

- SCMS-744 - Add new "Branding" view.

- SCMS-745 - Add new "Managers" view and functionality to download remote managers.

- SCMS-761 - Create shortcode that can query users within a folder and a specific user group.

- SCMS-763 - Add new "LunarXP" installable website package.

- SCMS-798 - Add new "Reports" view.

- SCMS-802 - Add selector so as to add users to a specific group.

- SCMS-849 - Rework user functionality so that they receive invite email.

- SCMS-897 - Add new action icons.

- SCMS-931 - Add Blog posts to Solodev dashboard.

- SCMS-933 - Add new flyout "Action" modal.

- SCMS-1029 - Rework STML view so that it occupies larger portion of viewpoint.

- SCMS-1040 - Add file information to Meta panel.

- SCMS-1088 - Update Chef scripts to successfully configure SSL details.

- SCMS-1103 - Force backend SSL once SSL has been verified.

- SCMS-1113 - Add CMS version number to login screen.

- SCMS-1167 - New shortcode that checks if an entry is mapped to a detail page and, if so, return the entry path.

- SCMS-1169 - Add an additional header insert field to mapped calendar entries to be used under the META panel.

- SCMS-1186 - Integrate experiments with Google Optimize.

- SCMS-1213 - Add Publish/Stage/Draft picker to STML view.

- SCMS-1266 - Add permissions selector for the grid view.

- SCMS-1289 - Add "Config" view.

- SCMS-1339 - Add two inputs to the Config view under "SSL" for Load Balancer. URL/Dedicated IP and SSL Backend URL.

**Improvements**

- SCMS-487 - Force shortcodes in WYSIWYG editor to render as block elements.

- SCMS-534 - Refactor session to use JWT.

- SCMS-626 - Update Boostrap 3 to 4.

- SCMS-656 - Improved user password policy.

- SCMS-657 - Improved session timeout.

- SCMS-659 - Improved password abuse policy.

- SCMS-660 - Improved password reset link.

- SCMS-672 - NPM Compiling Modifications.

- SCMS-730 - Switched to Font Awesome 5 for icons.

- SCMS-806 - Force backend templates to process shortcodes.

- SCMS-878 - Dynamic activity log and groups memberships on user profile.

- SCMS-926 - Add notificaiton/status to Delete Website operation.

- SCMS-1027 - Rearrange fields in Meta modal on STML pages according to importance.

- SCMS-1061 - Remove padding from DynamicDiv view.

- SCMS-1168 - Add URL display for mapped manager entries.

- SCMS-1214 - Prevent STMLs from inserting into DyamincDivs by forcing them to open up in a new tab.

- SCMS-1215 - Apply discussed changes to stmls.

**Bug Fixes**

- SCMS-493 - Publish asset file on copy/move.

- SCMS-527 - "Target" attribute stripped from WYSIWYG in category description.

- SCMS-533 - Exported package not bringing over manager image fields.

- SCMS-536 - Manager inputs covert long number strings to scientific notation.

- SCMS-969 - Modify modal on user and groups doesn't dismisses after submitting.

- SCMS-994 - Fix icon clicks in datagrid to properly open new tab/detail view.

- SCMS-999 - Website Settings modal content can get hidden under bottom button bar.

- SCMS-1002 - Proper 404 response headers on "unlicensed" responses.

- SCMS-1010 - Timezone on "Modify User" not working.

- SCMS-1109 - Add bottom padding to the object chooser modal so that list is not cut off.

- SCMS-1131 - Missing icons associated with embedding a file group into an STML.

- SCMS-1143 - If the user is in the Website's section, they can open up additional tabs of the same asset file via the table grid and file tree.

- SCMS-1172 - Opening a manager's form template from inside a tab takes the user out of "Websites" and into the "Documents" section.

- SCMS-1174 - Shortcodes do not process on "Add Entry" views.

- SCMS-1229 - Exporting more than 60 entries from a datable doesn't work in Edge.

- SCMS-1233 - Exporter doesn't bring over the associated shortcodes file in the config.json.

- SCMS-1241 - Exporter does not recognize Experiments.

- SCMS-1244 - "isPageTemplate" field is not exporting to config.json.

- SCMS-1268 - "fileparse" URLs are not exporting and dynamically referencing their new location upon install on new instance.