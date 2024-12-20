# Release Notes

### v11
Solodev CMS 11 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. Version 11 optimizes the platform's performance and modernizes code to reflect current technologies and practices, including updates to the Solodev Micro and Pro CloudFormation templates for AWS, as well as a new mailcatcher service. 

#### Key Release Highlights
 - New mailcatcher added to CMS to receive emails locally 
 - Updated AWS CloudFormation for CMS Micro and Pro, including SSO parameters

#### New Features
 - Added policies to CMS Micro to pull updates
 - Configured CMS Pro AMI with updated if logic
 - YAML files now written to AWS EKS folder in a proper format
 - Added ability to browse Themes on Add Website

#### Improvements
 - Removed Zencoder and moved to using the compose library
 - Updated inventory_feature_entry to use resizeImage
 - Total refactor of how objects are used in the new system
 - Moved getActivities to user_activity_manager to avoid circular dependency
 - Set npm install to run in background
 - Updated ProxyPassMatch directive to match only app.php routes in web.conf
 - Improved how extensions load

#### Bug Fixes
 - Fixed input tickler email UI
 - Patched problem with package importer
 - Addressed minor issues with validation in Add Module 
 - Fixed Invite User, Reset Password and Forgot Password by email

---

### v10.5
Solodev CMS 10.5 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. Version 10.5 optimizes the platform's performance and modernizes code to reflect current technologies and practices, including an upgrade to webpack, new sorting enhancements for datatables, and the inclusion of an AMI in the Solodev CMS CloudFormation template for AWS. 


#### Key Release Highlights
 - Upgraded webpack for optimizing JavaScript, CSS, and images
 - New capability to sort by key within datatables and calendars to preserve order
 - Updated AWS CloudFormation template (CFT) to include AMI for v10.5.1.8

#### New Features
 - Enhanced spam redirecting 
 - Google Tag Manager filtering to ensure it does not fire while browsing backend
 - Added spam checks before sending out tickler emails
 - Applied encoding updates to sent emails
 - Improved styling to make calendar picker visible on modals

#### Improvements
 - Fine-tuned API route after including in WebRouter
 - Updated for non-DocumentDB Mongo 
 - Addressed encoding issues when creating and displaying forms on the backend
 - Added back disable email protection functionality
 - Enhanced side navigation highlight from PHP_SELF to REQUEST_URI
 - Added log details to middleware
 - Split out fileparse processing into its own class

#### Bug Fixes
 - Fixed datatable sub-form so it saves properly
 - Reverted error_logs so changes can be pushed
 - Fixed filemanager breadcrumb so it is selected by default
 - Prevented 404 caching headers from duplicating

---

### v10.4
Solodev CMS 10.4 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. 
Version 10.4 optimizes the platform’s performance and modernizes code to reflect current technologies and practices, including greater control over picking website types and an update to webpack.

#### Key Release Highlights
 - New capability to select website entity type as CMS or Standard
 - Major update to webpack (JS and CSS) in the CMS

#### New Features
 - Support for setting module entry category and status via CSV import
 - Enhanced filtering capabilities for future events
 - New permission checks to improve security of websites

#### Improvements
 - Added filter preservation when making edits to modules
 - Updated universal search by entering folder ID
 - Improved uploading of social images and copy/move functions
 - Updated tab names in the entry details
 - Enhanced Generate Sitemap functionality
 - Updated Experiment action

#### Bug Fixes
 - Fixed the Modified By field in the datatable entry
 - Fixed issue with maintaining form value if captcha is incorrect
 - Fixed duplicate breadcrumb

---

### v10.3
Solodev CMS 10.3 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. 
Version 10.3 optimizes the platform’s performance and modernizes code to reflect current technologies and practices, including an improved experience for handling ZIP packages. 

#### Key Release Highlights
 - Streamlined and more lenient process for creating and importing ZIP packages 
 - New Delete and Unlink functionality 

#### New Features
 - Created generic “Not Found” page for objects
 - Added name of file in the Confirm box to delete or unlink from event entries

#### Improvements
 - Improved module import package, making it less restrictive
 - Restored ability to open a new datatable or Calendar entry when copied
 - Added File Map feature in the Calendar entry

#### Bug Fixes
 - Fixed checkbox for saving in Categories
 - Fixed inputs with wrong /> markup
 - Fixed tickler email notification showing HTML input markup

---

### v10.2
Solodev CMS 10.2 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. 
Version 10.2 optimizes the platform’s performance and modernizes code to reflect current technologies and practices, including a new Website Dashboard.

#### Key Release Highlights
 - New streamlined Website Dashboard in the CMS
 - STML (.stml) file name extensions are no longer required 

#### New Features
 - AWS CloudFormation templates for Slim 4 builds
 - Ability to launch a CMS instance without AWS OpsWorks using CloudFormation
 - Error handling when users create modules in the backend 

#### Improvements
 - Created custom PHP error handler for the frontend
 - Updated modernizer to run on CMS versions v10 and higher
 - Prevented non-assets from being inserted into dynamic divs
 - Added ability for module search to filter by user name

#### Bug Fixes
 - Updated and fixed mobile navigation issues
 - Fixed issue with the method for displaying frontend forms

---

### v10.1
Solodev CMS 10.1 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system.
Version 10.1 optimizes the platform’s performance and modernizes code to reflect current technologies and practices, including a major Slim 4 upgrade.

#### Key Release Highlights
 - Slim 4 PHP framework upgrade for dispatching HTTP requests and responses
 - New module search feature that enables filtering by user name

#### New Features
 - Meta information incorporated into default CMS view
 - Version parameter added to JavaScript includes to prevent caching after CMS updates
 - Chef scripts now compatible with Slim 4 in old and new versions of CMS

#### Improvements
 - Improved STML page view includes more file information on initial view
 - Enhanced Dynamic Div feedback		
 - Removed missing elements notification from frontend		
 - Simplified Add Module process while giving end user option to upload zip file		
 - Added CSV extension for the exported files from managers		
 - Updated add operations and views of Experiments, Scheduler, Collection, and Group

#### Bug Fixes
 - Fixed export function to add CSV extension
 - Removed erroneous code from Form Email		
 - Fixed deleting and unlinking image uploads from managers		

---

### v10.0

Solodev CMS 10 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. Version 10 optimizes the platform's performance and modernizes code to reflect current technologies and practices, including a major PHP code update that addresses security concerns. 

#### Key Release Highlights
- PHP 8.1 upgrade
- Updated backend SSL 
- Help widget to access chat and documentation
- New page UI to show meta properties by default

#### New Features
- Enhanced routing system to deliver pages via database versus static files
- New accordion option for navigation
- Ability to build modules and forms from uploaded .tpl files
- New dynamic div styling experience for editing pages

#### Improvements
- Streamlined software licensing process
- Improved secure session handling (PHP versus cookie)
- Updated npm composer json packages for better scss compiling
- Improved image upload experience in modules 
- Added support for AWS DocumentDB Mongo queries that involve distance
- Centralized app routing system so all routes are served from the same Slim app
- Updated tagging strategy to better handle code features in review
- Improved form submission handling when dealing with website CDN

#### Bug Fixes
- Removed extraneous code from emails generated by the CMS
- Fixed "Add Module" UI so submit button is visible on different-sized screens
- Enabled checkbox values for Asset_Files to save properly
- Fixed handling of the headerBlock value to ensure proper use on page

---

### v9.8

Solodev CMS 9.8 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. Version 9.8 optimizes the platform's performance and modernizes code to reflect current technologies and practices.

Upgrades include a new serverless AWS document database solution to replace MongoDB, new spam prevention capabilities, and more.

#### Key Release Highlights
- Replaced MongoDB document database with with AWS DocumentDB service
- Added IP Quality Score keyword list for enhanced spam prevention

#### New Features
- Accordion navigation option with child links available via shortcode
- Anchor linking option added to module wysiwyg toolbars
- ARIA link capability added to CK Editor
- Google reCAPTCHA integration 
- Wowza streaming video API integration and recording route implementation

#### Improvements
- Added sanitize function for keyword update
- Added ARIA on honeypot to prevent ADA issue
- Added manager upload field
- Retained config secrets password fields
- Enhanced pager shortcode
- Locked down submitdatatable to be admin only
- Improved universal search to all queries going to searchObjects
- Introduced custom class loader for Windows environment
- Updated ionCube to encode in php
- Updated SSO login user checking flow 
- Uploaded images forced to resize according to Solodev CMS module settings 
- Replaced node-sass with sass

#### Bug Fixes
- Corrected reCAPTCHA action
- Fixed form pixel route
- Fixed folder and file renaming bug

---

### v9.7 

Solodev CMS 9.7 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. Version 9.7 further optimizes the performance of the platform and modernizes code to reflect current technologies and practices. 

Upgrades include both Okta SSO and Salesforce API integrations, as well as improved spam prevention for Solodev forms. New features include enhanced search capabilities for webfiles in STMLs, updates to dynamic div styling, and more.

#### Key Release Highlights
- Enhanced spam prevention for form submissions
- Improved cleaning of user-submitted data
- Updated SSL certificate for solodev.net
- Added new OKTA SSO integration
- Added Salesforce API integration to access documents/files hosted on SFDC

#### New Features
- Added new search capability for locating webfiles files in STMLs (audit file)
- Added config settings for Salesforce and composer library for SFDC connection
- Updated highlighted dynamic div styling

#### Improvements
- Removed outdated PHP code to enhance overall security
- Enhanced customization capabilities when adding a packaged website
- Added permission for contacts to generate their own API token
- Added "useragent" settings for basic cURL calls
- Removed outdated Slim include from the codebase
- Updated REST API to OpenAPI version 3.0
- Improved local development with webpack

#### Bug Fixes
- Reworked navigation to clarify user flow back to Solodev Cloud
- Removed frontend reference to webpack JavaScript references in shortcodes
- Moved up HTML email generation, so it correctly passes to workflow processing
- Changed conditions for rank to be “display_rank”
- Updated “get data” call on datatables, enabling legacy detail templates from inserted datatables to still function
- Updated Zencoder with “content-type” header check

---

### v9.6

Solodev CMS 9.6 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. Version 9.6 further optimizes the performance of the platform and modernizes code to reflect current technologies and practices.

Noteworthy upgrades include expanded honeypot capabilities for added spam protection, a more user-friendly contact support page to manage CMS issues, and several integrated features for launching Solodev CMS from Solodev Cloud.

#### Key Release Highlights
- Added a new datatable property to enable or disable basic honeypot protection for spam form submissions
- Deployed conditional license confirmation for frontend websites, so only backend functionality is disabled when a CMS license expires
- Released a new, more user-friendly contact support page for managing license issues and troubleshooting other general CMS-related challenges

#### Improvements
- Updated "add actions" for websites, apps, and modules, so it now reflects a full page build out of new action screens
- Upgraded "add actions" for users, websites, and apps to redirect to Solodev Cloud when a Solodev CMS is initially deployed from Solodev Cloud
- Consolidated repo code bases so all Solodev source code is easier to manage
- Incorporated new code into the build process of the CMS (via helm)
- Updated the list of default npm packages that are installed on the server level to help speed up the package importing process
- Started implementing a new license checking script

#### Bug Fixes
- Updated MongoDB restore script for enterprise builds, enabling them to pull in the correct primary server information
- Fixed MongoDB code so it correctly pulls in module fields when the "module_id" is included in the "$and" portion of a query
- Improved package importer, ensuring that enhanced control variables are passed to new objects
- Deployed general JavaScript improvements that were impacting user experience

---

### v9.5

Solodev CMS 9.5 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. Version 9.5 further optimizes the performance of the platform and modernizes code to reflect current technologies and practices. 

Noteworthy upgrades include fixes to the MySQL 8 database columns and code improvements to comply with PHP 7.4 standards. New features include the ability to specify multiple staging and origin addresses for a website’s virtual host (Vhost), as well as enabling admins to assign API tokens to other users in the system.

#### Key Release Highlights
-	Updated all references to “rank” column name, complying with the updated list of reserved words used by MySQL 8
-	Implemented Webpack in CMS to bundle underlying JavaScript libraries
-	Simplified process flow for adding websites and modules
-	Integrated “SolodevSSO” class for Single Sign-On via Solodev Cloud
-	Updated S3 paths for AWS CloudFormation (CFT) templates
-	Upgraded to PHP 7.4

#### New Features
-	Added support for multiple staging and origin addresses via “textarea” input
-	Added a new quick link to AWS configuration from "Website" settings dialog
-	Enabled admins to see all generated API tokens and create tokens for users
-	Added extra invalidation check for files in non-public folder locations

#### Improvements
-	Added condition to filter out fileparse invalidation calls for stmls
-	Implemented meta modal on asset files for height fix
-	Improved mobile navigation resizing
-	Updated JavaScript to "Experiment" object interface
-	Enhanced validation handling on objects
-	Added invalidation call when uploading and overwriting existing documents
-	Updated S3 path from “aws-ha” to “solodev-cms”

#### Bug Fixes
-	Fixed issue with adding websites from Cloud
-	Applied name checks for various Solodev objects to prevent duplicate objects in the same folder
-	Updated “Datatable Category” image name styling
-	Removed search from group detail view
-	Improved file name checking when overwriting uploaded files with same name
-	Added extra condition to ensure correct spelling of “OAuth_Token” class is used
-	Updated “filemanager” table scrolling
-	Updated “ckeditor” files

---
### v9.4

Published in Q2 2021, Solodev CMS 9.4 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev Content Management System.

#### Key Release Highlights
From a feature perspective, 9.4 adds Captcha enhancements and a variety of UI updates.

#### New Features
-	Rework of Captcha to use a honeypot instead of session-based Captcha code

#### Improvements
-	CMS-1710 - Refactor so that user data is not printed to the page via Javascript
-	CMS-1426 - Add Archive History UI component to website's htaccess asset file

#### Bug Fixes
-	CMS-1981 - Unable to add photos to event hub module using the upload feature
-	CMS-1976 - CSS styling causes bullets on contact index page to disappear
-	CMS-1975 - Delete icons hover above users and groups
-	CMS-1965 - PDFs displayed using fileparse unable to render on first load with Internet Explorer
-	CMS-1948 - User folder is not deleted upon deleting a user object
-	CMS-1918 - File uploads should prepend asset file id to name if the file already exists
-	CMS-1820 - Bad regex warning appears on installation of SpaceJet theme
-	CMS-1482 - Copying Calendar Entry takes user back to non-tab view

#### Stories
-	CMS-1716 - The Invite User(s) button is no longer visible when SSO is enabled
-	CMS-1646 - A CMS user can now invite a new user via SSO

#### Tasks
-	CMS-1991 - Removed SEMrush data integration from website CMS Dashboard and prevented Dashboard from showing in Cloud/SSO Mode
-	CMS-1988 - Updated BYOL CloudFormation templates so that Enterprise deployments launch with Redis-enabled AMI
-	CMS-1983 - Reviewed dashboard website image generation and page thumbnails in Cloud
-	CMS-1934 - Check permissions being added when a normal user adds a folder
-	CMS-1728 - Added "Organization Name" field to Config view and settings.php so that Intercom users are automatically associated with a company

---
### v9.3

Solodev CMS 9.3 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. This version of Solodev CMS includes a greater integration with Solodev Cloud, increased support for native AWS services such as Redis Clusters and Backup Manager, and improved image/thumbnail generation. Additional features include a new Collaboration view that improves upon the existing Feedback task system. Bug fixes include better image/document upload handling and escaping automatically generated Meta Descriptions.

#### Key Release Highlights
-	New Collaboration view and improved Collaboration/Feedback tasks
-	Support for AWS Redis Clusters, AWS Backup Manager, and Application Load Balancers (ALBs)
-	New "Stager" role permission
-	Improved thumbnail generation and thumbnail image management

#### New Features
-	CMS-335 - Add support for SVG tags
-	CMS-1550 - Greater support for website and webpage screenshot images within the CMS
-	CMS-1704 - Add support for custom "error_document" for calendar and datatable entries that are expired or in draft
-	CMS-1897 - Add the link path to view of asset files like images and pdfs
-	CMS-1950 - Integrate new Collaboration fly-out modal
-	CMS-1951 - Redesign Feedback fields into new Collaboration view
-	CMS-1961 - Integrate Solodev Cloud with "Update Website"
-	CMS-1962 - Integrate Solodev Cloud with "Add Module"
-	CMS-1966 - Shutterstock Integration for media uploads
-	CMS-1978 - Add support for optional redis cluster to Enterprise deployments
-	CMS-1982 - Add support for AWS Backup Manager to Pro/Enterprise deployments

#### Improvements
-	CMS-902 - Force file tree to update active class as new tabs are opened
-	CMS-1338 - Improve capability to search within subfolders
-	CMS-1669 - Remove generated thumbnail images if parent image is deleted
-	CMS-1711 - Add thumbnail preview image to attachments section for calendar entries
-	CMS-1717 - Improve rotation of MongoDB logs
-	CMS-1739 - Add new "Stager" permission role so users can draft/stage content but not publish
-	CMS-1894 - Change CloudFormation templates for Enterprise deployments to use an application load balancer (ALB) instead of a classic/elastic load balancer (ELB)
-	CMS-1898 - Update breadcrumb shortcode to include aria-labels on breadcrumb links
-	CMS-1926 - Add "Draft/Publish" status (entry_status) within the module grid
-	CMS-1938 - "Forms" route should just show datatable type "Website Form"
-	CMS-1968 - Prevent app backend from being crawled
-	CMS-1970 - Add default options to "Expire Date" on file
-	CMS-1971 - Improve efficiency of searching for users/groups while setting permissions
-	CMS-1987 - Improve efficency of MongoDB heal script in relation to servers turning ouff behind a load balancer

#### Bug Fixes
-	CMS-1502 - Folders embedded in a DynamicDiv are clickable and open a new tab
-	CMS-1764 - Automatic parsing of content to populate meta description should ignore double quotes
-	CMS-1789 - When clicking "Maximize" button in page editor, publishing/editing buttons are hidden
-	CMS-1790 - Websites grid does not show the hand cursor when hovering over grid objects
-	CMS-1817 - Non client/super admin users cannot add documents to File Groups
-	CMS-1941 - Uploading/overwriting images does not update their icon/thumbnail
-	CMS-1942 - The "Browse" option related to file uploads within the Add Entry modal defaults to the parent folder and not "_Assets"
-	CMS-1958 - Next and Previous module entry arrows produce app errors if user is logged out
-	CMS-1969 - Mailer_Manager isset checks for smtp_username and smtp_password but not smtp_host

---
### v9.2

Solodev CMS 9.2 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. This version of Solodev CMS includes a native Swagger API documentation and API Token system to allow end users the ability to control CMS functionality through a secure REST API. Additional features and improvements include: integration capability with Amazon Simple Email Service (SES), a system-wide search on the CMS dashboard, a new "SpaceJet" website theme, better logging/streaming during Website and App installations, as well as an improved upload workflow for documents and images within a given WYSIWYG editor. Bug fixes include better support for Windows environments, various route/Slim errors, and improved RSVP functionality.

#### Key Release Highlights
-	New embedded Swagger API documentation
-	Improved API Token workflow
-	Amazon Simple Email Service (SES) integration capability
-	Global system-wide search
-	New SpaceJet Website theme
-	Improved file upload process within WYSIWYG editors

#### New Features
-	CMS-448 - Create API dashboard
-	CMS-1527 - Add "Create Contacts" view and include necessary fields
-	CMS-1699 - Create "Update Contact" view with necessary fields
-	CMS-1736 - Add a token history view
-	CMS-1785 - When installing an App, a status is needed saying that the App is currently installing
-	CMS-1794 - Add image preview option to "Configure Website" view when a user uploads a custom logo
-	CMS-1798 - Allow email integration with Amazon Simple Email Service (SES)
-	CMS-1809 - Replace LunarXP with SpaceJet as the default deployable theme
-	CMS-1814 - Global Search

#### Improvements
-	CMS-544 - Add API Token to API navigation
-	CMS-930 - Implement remove picture functionality from profile
-	CMS-1555 - Exclude "Add Page" from list of actions available in folders under Web Files
-	CMS-1723 - Add confirmation when removing an API token
-	CMS-1726 - Consolidate upload buttons into a Bootstrap nested button group
-	CMS-1757 - Add the ability to show and hide secret API token key
-	CMS-1758 - Add ability to make token active and inactive
-	CMS-1759 - Remove input outline for token secret and fix clicking input show and hide
-	CMS-1771 - Inventory datatable entry should have datepicker for start and stop times
-	CMS-1774 - Various improvements to the upload asset (image, pdf, etc) modal and workflow
-	CMS-1775 - Style website building iframe
-	CMS-1777 - Add "YouTube" option as available button in CKEditor
-	CMS-1784 - Rework package importer so that npm run css/npm run js is run at the end of the process
-	CMS-1787 - Modernize Page Studio for use in CMS
-	CMS-1810 - Remove hard coded paths when adding a site in Windows - Environment
-	CMS-1815 - Remove extra object properties from Asset_Category
-	CMS-1893 - Update NPM dependencies for SpaceJet
-	CMS-1902 - Rework package importer so that site variables can pass into config.json

#### Bug Fixes
-	CMS-1702 - Apps directory is not created on install for server builds
-	CMS-1744 - Legacy inventory object being used during event RSVP registration
-	CMS-1751 - Event RSVP refers to legacy Inventory object
-	CMS-1760 - CKEditor adds fixed height and width properties to images
-	CMS-1762 - "Disable RSVP" checkbox is not displayed inline
-	CMS-1763 - "Check availability" of Free Solodev SSL backend URL throws error
-	CMS-1765 - "Add Apps" shows wrong left navigation
-	CMS-1773 - Filemanager search function doesn't find files with a search query
-	CMS-1783 - Permission route throws javascript error on view existing permission sets
-	CMS-1793 - Renaming a STML page leaves a ghost page behind with old stub
-	CMS-1800 - API Token History creates Slim error
-	CMS-1801 - "Add Modules" does not redirect to module after installation
-	CMS-1802 - Modules API Bearer Token Returns 500 Internal Service Error
-	CMS-1803 - Tours are broken for logged-in users
-	CMS-1804 - Windows Environment - Cannot upload a file through the File Uploader modal
-	CMS-1805 - Windows Environment - Cannot add a new datatable category
-	CMS-1806 - Windows Environment - Copying a datatable entry creates an empty entry
-	CMS-1807 - Windows Environment - Copying a calendar entry shows a blank screen as no calendar_entry_id is passed through
-	CMS-1808 - Windows Environment - Adding a calendar entry opens a blank tab as no calendar_entry_id is passed through
-	CMS-1811 - Windows Environment - "Modify" route for calendars and datatables returns Slim error
-	CMS-1813 - Windows Environment - Add Website route returns Slim error
-	CMS-1821 - Windows Environment - Modules route returns Slim error
-	CMS-1823 - Updating custom App should close the modal
-	CMS-1826 - When adding Custom Builder module, the success message appears in a new screen
-	CMS-1884 - "Build Your Theme" installation step does not scroll log throughout process
-	CMS-1886 - Apps throw a slim error upon installation
-	CMS-1904 - The "Hello World" App displays PHP warnings and errors
-	CMS-1910 - Typo in API Swagger

---
### v9.1
Solodev CMS 9.1 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. This version of Solodev primarily focused on improvements within the Solodev Platform itself including improved User and Group views, additions to the package exporter, the addition of product "Tours", and support for XML files. New features include a completely new "file browser" when adding images to module entries or via the content WYSIWYG as well as a horizontally resizable left navigation when viewing the file tree. Bug fixes include fixing JavaScript errors, fixing errors in Internet Explorer, and improved performance with module grids.

#### Key Release Highlights
-	Resizable left navigation.
-	New file manager/browser to select existing images or assets.
-	Better user and group profile images.
-	New password and session policies for enhanced security.
-	New Product "Tours".
-	Improved Module grids.

#### New Features
-	CMS-727 - Left Nav - Resizable Navigation.
-	CMS-1279 - Prevent logout when editing asset file for a continued time.
-	CMS-1386 - Add SEMrush website dashboard via API.
-	CMS-1449 - Create YouTube responsive shortcode.
-	CMS-1453 - Rework file upload to be Solodev-based file manager.
-	CMS-1514 - Add "external link" button on STML views that opens the live page in a new tab.
-	CMS-1526 - Add avatar random color functionality.
-	CMS-1533 - Add "Tours" section to dashboard.
-	CMS-1546 - Add camera overlay to profile picture that then produces an action dropdown.
-	CMS-1557 - Add role drop down to view permissions and enforce them.
-	CMS-1559 - Add "Tours" to the left navigation under "Support".
-	CMS-1700 - Fix hardcoded values in the add app dropdown.

#### Improvements
-	CMS-998 - Validate website address to avoid duplicates.
-	CMS-1021 - Add additional "from_email" field check for processing datatable response emails.
-	CMS-1160 - Validation on password and confirm password does not dynamically update leaving error message in place.
-	CMS-1264 - Make the heading of entry details more consistent between calendars and datatables.
-	CMS-1345 - Add asset file backend path to Meta modal.
-	CMS-1360 - Exporter to dynamically change the ID attribute of the category_list shortcode.
-	CMS-1361 - Exporter to map images to category.
-	CMS-1362 - Exporter to map attachments/gallery images to entries.
-	CMS-1366 - Empty dynamic divs should by default have a border.
-	CMS-1367 - Modify entry URL to include preview attribute if entry is set to draft.
-	CMS-1385 - Ensure .htaccess is an asset file with appropriate archiving.
-	CMS-1387 - Add additional Vhost settings.
-	CMS-1389 - Deleting calendar/datatable entry from grid view to refresh the grid.
-	CMS-1406 - Have actions moved to the top of the page when on smaller screens (cms-mobile).
-	CMS-1421 - Show category's ID on category view.
-	CMS-1423 - Move CDN fields to their own panel/card under Website Settings.
-	CMS-1435 - Check ability to inject CSS classes inside the WYSIWYG.
-	CMS-1446 - Users should have the ability to install a Modules in a specified folder.
-	CMS-1447 - Clean up WYSIWYG buttons for regular HTML asset files.
-	CMS-1450 - Add domain validation to Add Website step.
-	CMS-1451 - XML files need to execute PHP.
-	CMS-1478 - On the "Modules" view, add a "Location" dropdown that would filter Modules based upon their location.
-	CMS-1497 - Order websites on dashboard by last activity.
-	CMS-1499 - Add "Recents" table to dashboard.
-	CMS-1506 - Update users grid to show full name and email address.
-	CMS-1545 - Profile pop over should slide out behind the profile bar.
-	CMS-1551 - On Modules view sort them by which one the user has made edits to entries.
-	CMS-1553 - "entry_status" (publish/draft) should appear in API endpoint responses.
-	CMS-1554 - Implement replace picture on profile.
-	CMS-1570 - Add aria labels to privacy banner shortcode.
-	CMS-1584 - Sticky infoDivs on scroll.
-	CMS-1585 - Sort by most recently edited website on the actual Websites route.
-	CMS-1586 - Add recently edited pages to the Websites dashboard.
-	CMS-1591 - Query tours based upon user role.
-	CMS-1593 - Add recent activity on user profile.
-	CMS-1611 - Show "no users" message for groups without users.
-	CMS-1621 - Add conditional check to calendar entries for "canonical_url" form field.
-	CMS-1665 - Add copy/paste from Word option to standard WYSIWYG editor.
-	CMS-1666 - Add text alignment and styling options to default WYSIWYG editor.
-	CMS-1668 - Allow the search input on the modules view to search the locations column.
-	CMS-1686 - Limit number of groups/members that can show in the grid column.
-	CMS-1689 - Limit number of groups shown on the users grid.
-	CMS-1712 - W3C HTML Validation issues.
-	CMS-1741 - Add sub-folders search in solodev admin.

#### Bug Fixes
-	CMS-513 - Entry URL stub does not delete after entry is deleted.
-	CMS-1124 - When removing Custom CSS related to branding, some comment is needed in order to save otherwise the file does not save.
-	CMS-1304 - User can be added to a group multiple times.
-	CMS-1341 - Javascript error when copying file.
-	CMS-1342 - Drafting/Staging causes asset file to not display properly in DynamicDivs.
-	CMS-1344 - Changing an asset file extension does not stick after submitting the change via the Meta modal.
-	CMS-1346 - The same asset file can be opened twice in two different tabs.
-	CMS-1352 - After import of LunarXP, datatable/form return templates are empty.
-	CMS-1354 - Slim error upon logging into enterprise server for the first time/starting session.
-	CMS-1355 - Enterprise builds return 400 (Bad Request) when saving calendar entries.
-	CMS-1356 - Submitting changes to website .htaccess/redirects modal throws a JS error.
-	CMS-1357 - CSRF errors on reset password form.
-	CMS-1369 - Action bar missing for datatable category group if opened via file tree.
-	CMS-1370 - SCSS asset update does not fully publish new minified css files.
-	CMS-1372 - Reset password link for user coming back as expired or invalid.
-	CMS-1388 - Display/hide columns for a grid display not working with custom fields.
-	CMS-1391 - WYSIWYG adds paragraphs between opening and closing shortcodes.
-	CMS-1393 - Chat help icon overlays the action modal.
-	CMS-1394 - A user cannot draft or stage changes to a Datatable form.
-	CMS-1430 - Logged-in users cannot de-map entries from categories.
-	CMS-1432 - Logged-in users cannot create datatable categories despite sufficient permissions.
-	CMS-1440 - If "display_columns" is empty in the UI, then the columns revert to showing everything.
-	CMS-1464 - Various "Choose File" bugs associated with the Solodev-based Filemanager.
-	CMS-1468 - Pagination with the Solodev-based Filemanager causes the modal window to close.
-	CMS-1487 - Columns in the manager entry grid are not adjustable.
-	CMS-1488 - If multiple apps are installed and visible, the left navigation is cut off on smaller screens.
-	CMS-1575 - "Browse" file uploader throws an error when used during the "Add Entry" process.
-	CMS-1576 - Forgot password validation breaks button placement.
-	CMS-1620 - Check issue were upon create/delete a null user is added.
-	CMS-1634 - Permission tables with too long of a name cut off the "Role" column.
-	CMS-1650 - Prevent group from being added as a member to itself.
-	CMS-1656 - Categories view extends off the screen, hiding the bottom most elements.
-	CMS-1660 - Inviting users on Firfox creates a loop that sends multiple emails.
-	CMS-1687 - XML Files return "Access Denied." Message.
-	CMS-1703 - recordOutboundLink is added multiple times to each link.
-	CMS-1705 - Various bugs in Internet Explorer.
-	CMS-1725 - Uploading a document through the WYSIWYG "Link -> Upload" button returns "Incorrect server response".
-	CMS-1738 - Certain actions cause the tabs to move up on the page, effectively hiding them from view.

---
### v9.0

Solodev CMS 9.0 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. This version of Solodev includes a comprehensive re-imagining of the Solodev backend with updated views, templates, and styles. A streamlined left nav allows users to quickly access common components such as Managers and Users. Table grids have been given a styling overhaul as have action buttons so that users clearly see what actions are available on a given view. All dependencies such as Boostrap and jQuery have been updated to the latest stable versions. New password policies are now in place to encourage more secure user passwords and sessions. Bug enhancements include fixes to the package importing process and dependency script errors.

#### Key Release Highlights
-	A comprehensive UI update for improved views.
-	A new action modal that presents clear user actions and input fields.
-	Updated dependencies to latest stable releases.
-	New password and session policies for enhanced security.
-	Improved Apps and Branding functionality.
-	New "Marketplace" so that users can quickly add managers and apps.
-	Improved Add Website process including the introduction of the LunarXP theme.

#### New Features
-	SCMS-454 - Add SSL capabilities to Solodev back-end.
-	SCMS-599 - Add new "Roadmap" view.
-	SCMS-654 - Logout invalidates session.
-	SCMS-655 - Password strict comparison.
-	SCMS-675 - Add new "Add Website" view.
-	SCMS-685 - Add timezone to user settings.
-	SCMS-686 - Add timezone to website settings.
-	SCMS-689 - Global STML check for website timezone.
-	SCMS-698 - Users - validation on change password.
-	SCMS-721 - Add new "Users" view.
-	SCMS-722 - Add new "Groups" view.
-	SCMS-729 - Add Apps view to Solodev backend.
-	SCMS-731 - Styling - Move CSS & JavaScripts assets to global/minified includes..
-	SCMS-733 - Add new "Permissions" view.
-	SCMS-736 - Add new "Workflows" view.
-	SCMS-744 - Add new "Branding" view.
-	SCMS-745 - Add new "Managers" view and functionality to download remote managers.
-	SCMS-761 - Create shortcode that can query users within a folder and a specific user group.
-	SCMS-763 - Add new "LunarXP" installable website package.
-	SCMS-798 - Add new "Reports" view.
-	SCMS-802 - Add selector so as to add users to a specific group.
-	SCMS-849 - Rework user functionality so that they receive invite email.
-	SCMS-897 - Add new action icons.
-	SCMS-931 - Add Blog posts to Solodev dashboard.
-	SCMS-933 - Add new flyout "Action" modal.
-	SCMS-1029 - Rework STML view so that it occupies larger portion of viewpoint.
-	SCMS-1040 - Add file information to Meta panel.
-	SCMS-1088 - Update Chef scripts to successfully configure SSL details.
-	SCMS-1103 - Force backend SSL once SSL has been verified.
-	SCMS-1113 - Add CMS version number to login screen.
-	SCMS-1167 - New shortcode that checks if an entry is mapped to a detail page and, if so, return the entry path.
-	SCMS-1169 - Add an additional header insert field to mapped calendar entries to be used under the META panel.
-	SCMS-1186 - Integrate experiments with Google Optimize.
-	SCMS-1213 - Add Publish/Stage/Draft picker to STML view.
-	SCMS-1266 - Add permissions selector for the grid view.
-	SCMS-1289 - Add "Config" view.
-	SCMS-1339 - Add two inputs to the Config view under "SSL" for Load Balancer. URL/Dedicated IP and SSL Backend URL.

#### Improvements
-	SCMS-487 - Force shortcodes in WYSIWYG editor to render as block elements.
-	SCMS-534 - Refactor session to use JWT.
-	SCMS-626 - Update Boostrap 3 to 4.
-	SCMS-656 - Improved user password policy.
-	SCMS-657 - Improved session timeout.
-	SCMS-659 - Improved password abuse policy.
-	SCMS-660 - Improved password reset link.
-	SCMS-672 - NPM Compiling Modifications.
-	SCMS-730 - Switched to Font Awesome 5 for icons.
-	SCMS-806 - Force backend templates to process shortcodes.
-	SCMS-878 - Dynamic activity log and groups memberships on user profile.
-	SCMS-926 - Add notificaiton/status to Delete Website operation.
-	SCMS-1027 - Rearrange fields in Meta modal on STML pages according to importance.
-	SCMS-1061 - Remove padding from DynamicDiv view.
-	SCMS-1168 - Add URL display for mapped manager entries.
-	SCMS-1214 - Prevent STMLs from inserting into DyamincDivs by forcing them to open up in a new tab.
-	SCMS-1215 - Apply discussed changes to stmls.

#### Bug Fixes
-	SCMS-493 - Publish asset file on copy/move.
-	SCMS-527 - "Target" attribute stripped from WYSIWYG in category description.
-	SCMS-533 - Exported package not bringing over manager image fields.
-	SCMS-536 - Manager inputs covert long number strings to scientific notation.
-	SCMS-969 - Modify modal on user and groups doesn't dismisses after submitting.
-	SCMS-994 - Fix icon clicks in datagrid to properly open new tab/detail view.
-	SCMS-999 - Website Settings modal content can get hidden under bottom button bar.
-	SCMS-1002 - Proper 404 response headers on "unlicensed" responses.
-	SCMS-1010 - Timezone on "Modify User" not working.
-	SCMS-1109 - Add bottom padding to the object chooser modal so that list is not cut off.
-	SCMS-1131 - Missing icons associated with embedding a file group into an STML.
-	SCMS-1143 - If the user is in the Website's section, they can open up additional tabs of the same asset file via the table grid and file tree.
-	SCMS-1172 - Opening a manager's form template from inside a tab takes the user out of "Websites" and into the "Documents" section.
-	SCMS-1174 - Shortcodes do not process on "Add Entry" views.
-	SCMS-1229 - Exporting more than 60 entries from a datable doesn't work in Edge.
-	SCMS-1233 - Exporter doesn't bring over the associated shortcodes file in the config.json.
-	SCMS-1241 - Exporter does not recognize Experiments.
-	SCMS-1244 - "isPageTemplate" field is not exporting to config.json.
-	SCMS-1268 - "fileparse" URLs are not exporting and dynamically referencing their new location upon install on new instance.

---
### v8.9
Solodev CMS 8.9 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. The primary purpose of the the version was to introduce the Beta version of Solodev 9.0, prepare the underlying app for this upcoming release, and incorporate a number of improvements/bug fixes to better support the Verion 8 lifecycle.

#### Key Release Highlights
-	Introduction of Solodev Beta views.
-	Improved Add Website workflow.
-	Better support for website packages.
-	Better support for Solodev on Docker containers.

#### New Features
SCMS-548 - Incorporate BETA version of upcoming Solodev.

#### Improvements
-	SCMS-543 - Remove header and move profile to the left navigation.
-	SCMS-549 - Update new login page.
-	SCMS-603 - New user form fields.
-	SCMS-633 - Add website wizard modifications.
-	SCMS-634 - Import package website modifications.
-	SCMS-645 - Add support chat feature to app.

#### Bug Fixes
-	SCMS-605 - My Profile "submit" button is partially hidden.
-	SCMS-616 - Uncaught SyntaxError when viewing STML page.
-	SCMS-624 - Websites session issue.
-	SCMS-625 - Count() warning on add Datatable/Calendar.
-	SCMS-639 - Docker/Apache needs to restart after adding website.
-	SCMS-640 - Docker emails not sending.
-	SCMS-650 - Codemirror find (CTRL + F) does not work.

---
### v8.8
Solodev CMS 8.8 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. The latest version of Solodev introduces several new initiatives including support for PHP 7 and the integration with NPM scripts, primarily utilized so that websites can be constructed as packages with all styles and JS files dynamically compiled. The capability to Import/Export packages or folders has also been comprehensively overhauled so as to include support for “package variables”, a package importing wizard, and support for user permissions within a package. Additionally, Solodev 8.8 introduces specific “Branding” and “App” components so that organizations have the capability to create a custom backend user experienced tailored uniquely to their own set of brand styles. Several accessibility enhancements have also been included, particularly in relation to the WYSIWYG editor and its raw HTML output. Bug fixes focused on character encoding, support for older versions of PHP, and patches to existing shortcodes. Enjoy!

#### Key Release Highlights
-	Added Restore/Dev syncing capabilities where a separate development instance can be created and synced with a production environment.
-	Overhaul of Import/Export of packages, including adding package variables and a comprehensive import wizard.
-	Support for PHP 7.
-	Backend branding capabilities.
-	Quick links to modules and forms (datatables & calendars) on dashboard view.
-	NPM Integration.
-	Support for custom application views.
-	Accessibility updates to the WYSIWYG editor.

#### All Release Updates
#### Improvements
-	Commit 039db93: CKeditor bold tag update; geocoding URL needed to be https.
-	Commit 353c6b2: App permissions during import process.
-	Commit a774e9a: Added SSL redirect logic to stmls when site_wide_ssl property is set.
-	Commit b9882ac: Added privacy banner shortcode.
-	Commit 52d26ce: Added in where string for full_calendar shortcode.
-	Commit 8512581: Added Users folder for detecting import path.
-	Commit 774604b: Shortcode ability for page title and meta.
-	Commit 445b172: Branding / custom app integration into Solodev.
-	Commit 62bd639: Update to the NPM install command for Linux.
-	Commit f46054f: Adding in color picker to the import process with variables in the importer itself.
-	Commit 3212339: NPM integration on package importing and asset_file publishing.
-	Commit 066a489: Added in alert for deleting gallery attachments.
-	Commit 6b9c7cd: Added in warnings for file manipulation on entries.
-	Commit f38e09e: Update to structure for dashboard modules.
-	Commit 75ac529: CMS branding overwrite option for users to choose logo and custom CSS to change default styling.
-	Commit 661af6b: Accordion shortcodes.
-	Commit 046e3dc: Docker preparation and support for PHP 7.
-	Commit aa4a668: Put in decoding for find and replace import fields.
-	Commit 56366d8: Import / Export package overhaul that allows site wide find replace and company variables to be defined on a template basis.
-	Commit d7cb5fe: Added in new Restore module object with associated views and file manipulation.

#### Bug Fixes
-	Commit 413cb87: Update to app including meta tag updates on stmls and fix to displaying calendar properties.
-	Commit 86433: Origin replace on API calls and ucwords fix for older PHP versions.
-	Commit da3a406: Patch for MySQL and PHP 7.
-	Commit c5535b2: Captcha missing tag fix.
-	Commit e8e87cc: Installer.inc fixes, and AuthorizeNet integration update.
-	Commit f8b96ca: Publish files on WYISWYG upload.
-	Commit b155592: Fixes for sanitizing html characters.
-	Commit ac72948: Escape characters upon export command.
-	Commit d69ebc3: Updated domain regex since where special characters were detected as being incorrect.
-	Commit 8f6003e: CK update for displaying shortcodes.
-	Commit 008052c: Update to validation errors for API.
-	Commit 0095a6f: Patch update to pager that was missing some closing tags.

---
### v8.5
Solodev CMS 8.5 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev platform. Solodev CMS 8.5 introduces a new and improved business theme (WebCorpCo), redesign of calendars and datatables to make their creation and management easier, an updated API to expose module data for use in third party applications, and a series of platform-wide bug fixes. The release of Solodev CMS 8.5 makes the use of short codes more intuitive and the creation of modules using calendars and datatables easier and more powerful for non-technical administrators. The release of Solodev CMS 8.5 makes the creation, modification, and management of web content in Solodev easier for developers, marketers, and administrators alike and incorporates feedback from the entire Solodev community. Enjoy!

#### Important highlights from this release
-	Improved user feedback when working with a modules table schema.
-	Released new and improved business theme (WebCorpCo).
-	Updated layout of modules to improve ease of use.
-	Added subtext descriptions through CMS to make more intuitive.
-	Implemented modules pre-populated with HTML forms for all dropdown options.
-	Improved dynamic div (drop zone) ability to make inserting content easier.
-	Added spellcheck for HTML WYSIWYG.
-	Improved inline editing functionality.
-	Made improvements to Table Schema.
-	Implemented a way to make images included via stylesheets.

#### All updates for this release:
#### Improvements
-	SCMS-485 DONE - htaccess to enable images from included css.
-	SCMS-486 DONE - Width and height being set on uploaded images.
-	SCMS-488 DONE - Javascript errors in content prevents dynamic div insertion.
-	SCMS-489 DONE - Display Columns for Calendars and Datatables.
-	SCMS-490 DONE - Show form only if datatable type is set to form.
-	SCMS-492 DONE - Uploaded files have their names changed (dots to dashes).
-	SCMS-494 DONE - Clean URL function - The Datatable Version.
-	SCMS-501 DONE - Prevent double submit on user creation.
-	SCMS-503 DONE - Expire detail pages after end date.
-	SCMS-508 DONE - Improve dynamic div functionality when dealing with faulty content.
-	SCMS-459 DONE - Datatable with No Form Template Should Still Show Something by Default.
-	SCMS-460 DONE - homeTemplate.tpl (webcorpco) needs one more DD.
-	SCMS-461 DONE - Not allowing Page Publish when Meta Info is Changed.
-	SCMS-465 DONE - Spellcheck for HTML WYSIWYG.
-	SCMS-476 DONE - Blank template generates stml off of root.
-	SCMS-477 DONE - Add Calendar Template.
-	SCMS-480 DONE - Update Calendar Template.
-	SCMS-481 DONE - Update Datatable Template.
-	SCMS-482 DONE - System -> Users Folder Displaying Old Icons.
-	SCMS-483 DONE - Add Datatable Template.
-	SCMS-484 DONE - Module Fields and Layout Cleanup.
-	SCMS-506 DONE - Inline editor strips out links.
-	SCMS-511 DONE - Permissions for Assignment Ticklers.

#### Bugs
-	SCMS-462 DONE - Adding Table Schema Fields After Creating Module.
-	SCMS-468 DONE - Users Profile to display API Key/Token.
-	SCMS-470 DONE - API Calls return no data or errors in console.
-	SCMS-474 DONE - Improve Functionality on Datatables.
-	SCMS-499 DONE - Updated URLs for images inserted via WYSIWYG.
-	SCMS-505 DONE - Inserted javascript causing dynamic divs not to appear.
-	SCMS-510 DONE - Test STML stub updating when title is updated.
-	SCMS-514 DONE - WYSIWYG moves shortcodes around.
-	SCMS-515 DONE - Adding New Entry does not show entry #.
-	SCMS-516 DONE - Create warning when users delete fields via table schema.
-	SCMS-517 DONE - Calendars created without template (via table schema) are overwritten by dropdown. 
-	SCMS-518 DONE - Calendar -> Activate "Enable Attachments" if Type = Photo Gallery.

---
### v8.4
Solodev CMS 8.4 boasts a series of new features, updates, bug fixes, and User Interface (UI) improvements to the Solodev platform. Solodev CMS 8.4 introduces an automated theme builder, CodeMirror implementation to make writing code in Solodev easier, and a series of platform-wide bug fixes. The release of Solodev CMS 8.4 will make web development on the Solodev CMS platform even easier for content authors, marketers, designers, and developers alike.

#### Important highlights from this release
-	Implemented CodeMirror and Search.
-	Added Auto-Theme Builder on Install.
-	Created Ability to Add Additional Subscriptions.
-	Improved UI for Form Upload.
-	Improved User Profile UI.
-	Improved Drag and Drop Form Builder.
-	Improved Validation to Back-end Login.
-	Added Redirect to Workspace after Website Install.
-	Added functionality to Table Schema Form Builder.
-	Fixed Bug Prepending IDs to URLs.
-	Improved Object Selection.

#### All updates for this release:
#### Improvement
-	SCMS-442 DONE - Add Theme On Install.
-	SCMS-443 DONE - Add Redirect to www after Website Add.
-	SCMS-146 DONE - Account: Create add additional subscription functionality.
-	SCMS-247 DONE - Fixed Entry rewriting prepending IDs to URLS.
-	SCMS-292 DONE - Added Image, Submit Fields to Table Schema.
-	SCMS-312 DONE - Solodev Pricing Page via AWS(SaaS), On Premise.
-	SCMS-328 DONE- Sign up for new single server and build demo website - demo10.
-	SCMS-358 DONE - Test import package page - Meta Desc & Keywords.
-	SCMS-393 DONE - Datatable & Calendar Resaver.
-	SCMS-394 DONE - Code Mirror Styling.
-	SCMS-412 DONE - Add Website Loader.
-	SCMS-425 DONE - Code Mirror Search in document.
-	SCMS-399 DONE - Improved Object Selection.
-	SCMS-413 DONE - Improved UI for Form Upload.
-	SCMS-418 DONE - Enabled Server/Theme Builder Synchronization.

#### Bug
-	SCMS-268 DONE - Disabled Zero Integer Save in Module Fields.
-	SCMS-379 DONE - Enabled Page Publish with Active JS.
-	SCMS-386 DONE - Fixed Initial Module Entry Save.
-	SCMS-398 DONE - Improved User Profile UI.
-	SCMS-400 DONE - Improved Form Builder.
-	SCMS-405 DONE - Added confirmation before deleting a category.
-	SCMS-406 DONE - Improved UI on Alias Property.
-	SCMS-414 DONE - Added Improved Validation to Backend Login.

---
### v8.3
Solodev CMS 8.3. boasts some of the biggest improvements made to the Solodev Platform including but not limited to themes, also known as packages, a complete UI/UX redesign, inline editing to make content edits on the fly, the ability to turn web pages into reusable templates, an all new dashboard to serve as your command center, in-depth documentation, 24/7 support via Zendesk, an HTML5 friendly filesystem, and an entirely new shortcode system to make web development on the Solodev CMS platform even easier for content authors, marketers, designers, and developers.

#### Important highlights from this release
-	Added "Forgot Password" functionality to login.
-	Added new Business Theme package to CMS.
-	Added "Expired in" Functionality.
-	Complete User Interface Redesign.
-	Added Inline Editing Function.
-	Added ability to turn web pages into reusable templates.
-	Added new Dashboard with:
    - Tasks/Assignments.
    - Google Analytics Integration.
    - Announcements.
    - Shortcut Actions (Add Page, Add File, Add Module, Add User).
-	Added package (theme, module) importer.
-	Added In-Depth Documentation to CMS (release notes will be updated here).
-	Improved Mobile Responsiveness.
-	Added Generate Sitemap/Robots.txt Function.
-	Added HTML5 Input Types.
-	Added Shortcodes to streamline Web Development.
-	Added Support Infrastructure in conjunction with Zendesk.
 
#### All updates for this release:
#### New Features
-	SCMS-322 DONE Website Wizard: Add "Import Package" Checkbox Section.
-	SCMS-315 DONE Create ability for custom shortcode file.
-	SCMS-309 DONE Finalize Business Theme Package.
-	SCMS-306 DONE Add Modified by to Datatable Category.
-	SCMS-296 DONE Forgot Password: Link front end to back end.
-	SCMS-251 DONE Develop new "Pricing" page.
-	SCMS-237 DONE Create Package Modules.
-	SCMS-211 DONE Import package - The All-in-One.
-	SCMS-188 DONE Build Native Document Manager for Craig to review and add to codebase.
-	SCMS-178 DONE Complete replacements for Solodev system Icons.
-	SCMS-156 DONE Build out Select Approved Theme Step in Wizard.
-	SCMS-151 DONE Build Native Slider Manager.
-	SCMS-148 DONE Dashboard: Latest Assignments.
-	SCMS-133 DONE Build Photo Gallery Manager.
-	SCMS-128 DONE Auto-publish files on import.
-	SCMS-108 DONE Dashboard Actions: Add Page, File.
-	SCMS-106 DONE New Dashboard: Stats / Tasks / Shortcuts.
-	SCMS-102 DONE Import Package from website.
-	SCMS-65 DONE Add Forgot Password to CMS Front-End.

#### Improvements
-	SCMS-384 DONE File Group File Name Input.
-	SCMS-375 DONE Got Rid of 'Add Assignment" JS Checkbox.
-	SCMS-359 DONE Uneven amount of spaces between pikes and colons.
-	SCMS-349 DONE Switch out Old Business Package with New Business Package.
-	SCMS-342 DONE Finalize Zendesk Documentation.
-	SCMS-326 DONE Delete Analytics Step from Website Wizard.
-	SCMS-318 DONE Mobile Responsive Issues.
-	SCMS-314 DONE Import Package: Need to show Success/Error Modal.
-	SCMS-297 DONE Finalize Package Installer.
-	SCMS-295 DONE Add Captcha Error Message.
-	SCMS-282 DONE Final Documentation Update for CMS 8.1.
-	SCMS-267 DONE Swap out PHP templates with Shortcode Templates.
-	SCMS-258 DONE Shortcode WebCorpCo Modules.
-	SCMS-230 DONE Create Ability to Update Columns for Datatables / Calendars.
-	SCMS-209 DONE Add HTML5 input types.
-	SCMS-190 DONE Generate Sitemap.
-	SCMS-185 DONE Tabs to accordians.
-	SCMS-166 DONE Import Package Functionality on Welcome Wizard.
-	SCMS-134 DONE Replace Solodev Icons across the board.

#### Bugs
-	SCMS-368 DONE Intranet: Reset Password.
-	SCMS-367 DONE Change password causes problems.
-	SCMS-360 DONE Page Image on ViewSTML not functioning.
-	SCMS-357 DONE Import Package needs Auto-Publish.
-	SCMS-354 DONE What is causing overlapping of DD's in back end?
-	SCMS-353 DONE Cannot Delete Website.
-	SCMS-333 DONE Sitemap is not auto published upon generation.
-	SCMS-323 DONE Website Wizard: Analytics Redirect Bug.
-	SCMS-316 DONE Resizable Left Nav makes scrolling nearly impossible.
-	SCMS-311 DONE Categories not scrolling.
-	SCMS-308 DONE Package Processor Template.
-	SCMS-304 DONE Asset Category Group does not display ownername in dataGrid.
-	SCMS-303 DONE Category Groups Displaying Incorrectly.
-	SCMS-301 DONE Team Page not displaying properly.
-	SCMS-300 DONE Intranet requires logout.
-	SCMS-294 DONE Add User Group Dialog in Calendar Events.
-	SCMS-291 DONE Links missing "Modified by" data.
-	SCMS-290 DONE Modify User-> Fields not saving when modified.
-	SCMS-288 DONE Core Solodev Tree Folders displaying 1970 on Date.
-	SCMS-287 DONE Sitemap Generator generating duplicates.
-	SCMS-280 DONE Original Event Entry -> Reoccurring Events.
-	SCMS-278 DONE New Site Creation Adds _Assets to root.
-	SCMS-274 DONE Grid: Sort by, Modified by not functioning.
-	SCMS-271 DONE CKEditor Source Code Text Cut Off.
-	SCMS-263 DONE Issues where it logs you out without telling you you're logged out.
-	SCMS-255 DONE Scrolling not working on manager entry.
-	SCMS-254 DONE Thumbnail are not getting created on gallery (calendar).
-	SCMS-252 DONE Documents not showing when uploading from WYSIWYG.
-	SCMS-236 DONE Google Analytics Timing out within one hour or less.
-	SCMS-233 DONE Timeout when publishing large amounts of content.
-	SCMS-229 DONE Dashboard: Remove tooltip that has no action and just breaks line.
-	SCMS-228 DONE View User is displaying Modify User Template.
-	SCMS-227 DONE Expire Date In Button Group Misaligned.
-	SCMS-222 DONE Deleted categories can still have children added.
-	SCMS-218 DONE Filegroup expire date.
-	SCMS-216 DONE Open Tasks not displaying for assigned user on Dashboard.
-	SCMS-215 DONE Shortcuts are being pushed below GA.
-	SCMS-214 DONE View Asset File: Meta Information Tab has Feedback Tab Fields.
-	SCMS-213 DONE ViewSTML: Cannot see full screen when moving left nav.
-	SCMS-212 DONE Solodev Dashboard Responsive Issues.
-	SCMS-210 DONE Duplicate Files from Landing Page Manager.
-	SCMS-207 DONE On Import Package or Select Theme files aren't auto-published.
-	SCMS-206 DONE Website Creation Modal Populating in bottom left corner.
-	SCMS-202 DONE demo6: Duplicate Views on Session Timeout.
-	SCMS-200 DONE Add email type to Form Parser.
-	SCMS-193 DONE Clean up Datatable Website Properties.
-	SCMS-192 DONE Just get sessions for right date range.
-	SCMS-182 DONE Assets being written to root.
-	SCMS-176 DONE Import Theme: Image Paths.
-	SCMS-174 DONE Native Managers: Need to Auto-publish templates.
-	SCMS-161 DONE Dashboard Inner Wrapper.
-	SCMS-142 DONE HTML Form Builder Scroll Issue.
-	SCMS-139 DONE Responsive: Can't see Next and Previous buttons on Welcome Wizard.
-	SCMS-130 DONE Solodev Account Update Slim App Error.
-	SCMS-111 DONE Apache restart.
-	SCMS-61 DONE Google Analytics Expiration.
-	SCMS-57 DONE Subfolder search not functioning.
-	SCMS-32 DONE Fix Captcha Shortcode.

#### Tasks
-	SCMS-376 DONE ADA fixes on Payments.stml.
-	SCMS-374 DONE Incorrect time displayed on Feedback.
-	SCMS-373 DONE Too much space between panel and content.
-	SCMS-371 DONE Creating Users/Permissions from Config.
-	SCMS-370 DONE Meta Data Auto Populate on Import.
-	SCMS-365 DONE Error Alert on Update Website for no reason.
-	SCMS-363 DONE Social Section is missing from Update User.
-	SCMS-352 DONE Package Import: Publish, Stage, and Save Not Selectable.
-	SCMS-347 DONE Remove Repeater, Detail Display Options from Inventory and Jobs.
-	SCMS-346 DONE Remove Calendar Options that do not trigger panel display.
-	SCMS-343 DONE Kill Confluence Doc Iframe, display Zendesk Docs.
-	SCMS-341 DONE Smartkrawl.com (Business Package) Final De-Bugging.
-	SCMS-340 DONE Mobile Responsive Issue on smartkrawl/webcorpco team page.
-	SCMS-338 DONE Add 404.stml.
-	SCMS-336 DONE Add Modified by to Category under Category.
-	SCMS-334 DONE Organize Documentation on Zendesk to Match Confluence.
-	SCMS-332 DONE Fix markup on File Upload button.
-	SCMS-331 DONE Add Find and Replace Function to CKEditor/Content Areas.
-	SCMS-330 DONE Created Google Alert System for Marketing.
-	SCMS-329 DONE Review code that creates SiteMap.
-	SCMS-327 DONE Migrate Documentation from Confluence to Zendesk.
-	SCMS-325 DONE Find solution to avoid [admin_only] shortcode workaround.
-	SCMS-324 DONE Add Select Box (Save, Stage, Publish) to Package Importer.
-	SCMS-310 DONE Fixing Google Analytics tracking issues.
-	SCMS-307 DONE Style Intranet Forgot Password Pages.
-	SCMS-302 DONE Copy Asset File not working.
-	SCMS-299 DONE Update the config.json file.
-	SCMS-293 DONE Solodev does not allow tilde or accent marks for categories.
-	SCMS-276 DONE CKEditor/WYSIWYG Issues.
-	SCMS-275 DONE update content for Comparison guide wp.
-	SCMS-273 DONE mobile adjustments // webcorpco.
-	SCMS-272 DONE add drop down menu for "about us" // webcorpco.
-	SCMS-265 DONE Shortcode Clients Manager.
-	SCMS-262 DONE Left Panell falls into a "glitch" and keeps cycling back to the top.
-	SCMS-261 DONE Left Panel: The expand triangle is very, very sensitive.
-	SCMS-257 DONE Shortcode Footer Contact Form.
-	SCMS-256 DONE Shortcode Slider Manager.
-	SCMS-253 DONE CMS solution comparison guide.
-	SCMS-250 DONE Style Resources Manager.
-	SCMS-248 DONE WebCorpCo Final Punch List.
-	SCMS-246 DONE Complete WebCorpCo Modules.
-	SCMS-244 DONE Make "Title" Required for STMLs only.
-	SCMS-243 DONE Need to move chevron (too close to chat chevron).
-	SCMS-242 DONE Build Module for Real Estate Listings.
-	SCMS-241 DONE WebCorpCo Site Edits for Demos.
-	SCMS-240 DONE Create global search for webcorpco.
-	SCMS-239 DONE Build Module for Automotive Listings.
-	SCMS-238 DONE Create generic Category, Date, Search action.
-	SCMS-234 DONE Cannot see 'Solodev' on initial login screen.
-	SCMS-232 DONE Process Package needs scrollbar.
-	SCMS-226 DONE Feedback: Admin has no way of knowing Task is Complete.
-	SCMS-219 DONE dynamicDiv button for CkEditor.
-	SCMS-217 DONE Create Expires On field for Asset_File.
-	SCMS-205 DONE Hitting tab in website url field directs to object chooser for websites folder.
-	SCMS-198 DONE Last Looks on WebCorpCo Web Pages and Module Functionality.
-	SCMS-191 DONE Calendar Types, future Dates.
-	SCMS-184 DONE Update Inventory: Object Chooser not Saving.
-	SCMS-177 DONE Draft New Solodev Documentation Hierarchy & Content.
-	SCMS-173 DONE Inventory Manager: Display Template Error.
-	SCMS-172 DONE Map out list of icons needed to switch out before launch.
-	SCMS-171 DONE Build eCommerce Theme.
-	SCMS-170 DONE Test Native Modules.
-	SCMS-169 DONE Need to add Delete Action in System->Websites.
-	SCMS-165 DONE Document all new features.
-	SCMS-164 DONE Build out AppStrap Theme for Solodev.
-	SCMS-163 DONE Build out Solodev Sandbox Theme.
-	SCMS-162 DONE Migrate Cart Templates to demo6.
-	SCMS-160 DONE Match Update Calendar Dropdown.
-	SCMS-154 DONE Update Folder: Restrict Access Issue.
-	SCMS-153 DONE Build FAQ Manager.
-	SCMS-150 DONE Dashboard: DTP Not Responsive.
-	SCMS-149 DONE Dashboard: Users on Site Now.
-	SCMS-145 DONE New Build STML File loses styles when edited inline.
-	SCMS-141 DONE Style Preview STML action bar.
-	SCMS-140 DONE Test new features.
-	SCMS-138 DONE AWS does not accept caps in URL.
-	SCMS-137 DONE Contact Us: Send Message Button.
-	SCMS-132 DONE Build Sandbox Themes for Free Trials.
-	SCMS-131 DONE Solodev Account->Validation: Changing Password->Address Fields.
-	SCMS-127 DONE Add Form: Move OK/Cancel Buttons to input as button group.
-	SCMS-123 DONE Run builder script on documentation  file.SCMS-87 DONE Documentation: Export HTML from Confluence.SCMS-6 DONE Create Solodev Ticket System.

#### Sub-task
-	SCMS-321 DONE Rethink mobile navigation, left-nav cuts off screen, makes it difficult UX.
-	SCMS-320 DONE Panel Heading UI Needs Fix.
-	SCMS-319 DONE Cannot make inline edits on mobile / when there is other JS on page.
