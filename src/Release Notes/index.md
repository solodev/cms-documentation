# Release Notes

### v9.7 

Solodev CMS 9.7 contains new features, updates, bug fixes, and user interface (UI) enhancements to the Solodev content management system. Version 9.7 further optimizes the performance of the platform and modernizes code to reflect current technologies and practices. 

Upgrades include both Okta SSO and Salesforce API integrations, as well as improved spam prevention for Solodev forms. New features include enhanced search capabilities for webfiles in STMLs, updates to dynamic div styling, and more.

#### Key Release Highlights
-	Enhanced spam prevention for form submissions
-	Improved cleaning of user-submitted data
-	Updated SSL certificate for solodev.net
-	Added new OKTA SSO integration
-	Added Salesforce API integration to access documents/files hosted on SFDC

#### New Features
-	Added new search capability for locating webfiles files in STMLs (audit file)
-	Added config settings for Salesforce and composer library for SFDC connection
-	Updated highlighted dynamic div styling

#### Improvements
-	Removed outdated PHP code to enhance overall security
-	Enhanced customization capabilities when adding a packaged website
-	Added permission for contacts to generate their own API token
-	Added "useragent" settings for basic cURL calls
-	Removed outdated Slim include from the codebase
-	Updated REST API to OpenAPI version 3.0
-	Improved local development with webpack

#### Bug Fixes
-	Reworked navigation to clarify user flow back to Solodev Cloud
-	Removed frontend reference to webpack JavaScript references in shortcodes
-	Moved up HTML email generation, so it correctly passes to workflow processing
-	Changed conditions for rank to be “display_rank”
-	Updated “get data” call on datatables, enabling legacy detail templates from inserted datatables to still function
-	Updated Zencoder with “content-type” header check


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
