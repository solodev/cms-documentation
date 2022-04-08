
# Settings

Solodev provides administrators with the ability to manage bits of information related to their organization, domain and Solodev instance. From the settings page users can manage native Solodev applications, workflows, usage reports, branding and advanced configurations. This document will show the user how to access the settings dashboard and provide a summary of each settings category in the dashboard. 

---

## Accessing Solodev Settings

- Login to Solodev.

- Under the Admin section of the Solodev dashboard click Settings. 

- The user is directed to a page blank page with a settings dashboard. 

- Click on a category to get populate the page and get started. 


## Settings Categories

**Apps:** Administrators are presented with a layout of the Solodev dashboard and its resources or applications. From here, administrators can install Solodev applications to specific sections of the dashboard. Learn more about managing applications. 

**Permissions:** On this page, administrators can view an aggregated list of users and groups in the CMS system. Users are not able to manage permissions from this page. Administrators can use the dynamic search feature to filter permissions by users, groups and permission names and types.  


**Workflow:** Administrators can use this page to add and manage a list of workflows within the CMS system. Learn more about workflows. 

**Reports:** Administrators can use this page to monitor usage within the CMS system. Administrators can also use the dynamic search feature to filter reports by dates, specific actions, IPs, and users. Learn more about reports. 

**Branding:** Administrators are able to customize the Solodev CMS system in line with their organization’s brand. Administrators can choose a logo, primary button colour, secondary button colour, apply custom CSS, and configure a custom dashboard. Learn more about branding. 

**Config:** This page allows administrators to configure a variety of settings related to their websites. Here administrators can configure payment options for their eCommerce store, SSL, email, and much more. An overview of the config settings can be found here. 


## Solodev CMS Configurations

The config category of settings applies to all websites in the CMS system. Administrators can configure payment options, SSL, email and much more. This article provides an overview of the config settings category and a short description of their configurable fields. 

### Accessing config 

- From the Solodev CMS dashboard click Settings under the Admin section. 

- Click the Config in the Settings Dashboard. 

### Organization settings

Here administrators can set the name and address associated with their organization. The fields in this category are listed below: 

**Organization Name:** The name of the administrator’s organization. 

**Organization Address:** The physical or mailing location of the organization. 

### Email

Administrators can use this section to set a professional email address for their organization and send all outgoing emails via SMTP server to ensure secure delivery. A description of the fields in this category are provided below: 

 

- **Email from Address:** the email address used by the organization to send emails to their recipients.

- **SMTP Host:** The cname for the outgoing mail server (example: mail.sftp.solodev.com). 

- **SMTP Port:** The port that will be used to relay outbound mail to your mail server.

- **SMTP Username:** The username used to login to the mail server. 

- **SMTP Password:** The password used to login to the mail server. 


### Captcha

Administrators can style the captcha that they use on their websites here. 

- Captcha Text Color: Set the text color for the captcha.

- Captcha Background Color: Set the background color. 

- Captcha Noise Color: Set the noise color for the captcha.

- Captcha Font: Set the font style for the captcha text. 

- Captcha Width: Set the width of the captcha. 

- Captcha Height: Set the height of the captcha. 


### SSL
(Secure Sockets Layer) is the standard security technology for establishing an encrypted link between a web server and a browser. This link ensures that all data passed between the web server and browsers remain private and integral. 

**Force SSL:** Force an HTTPS connection to your website. 

### Cache 

In this section, administrators can determine how long files or pages are stored so that future requests can be served faster. The default values are 86400s or 1 day. The fields for this section are listed below:

- **Page Cache:** set the maximum age in seconds stml pages are stored in cache. 

- **File Cache:** set the maximum age in seconds that CMS files are stored in cache.

### Click Tracking
Administrators can track when users leave their websites or track engagement when users click on documents and use those events for web analytics. 

**Outbound Click Tracking:** Track when users click on an external link to leave the website. 

**Document Click Tracking:** Track when users click on site documents. 

### Rules

Administrators can set rules for a variety of resources in the CMS system and the CMS system itself. 

**Auto Publish Pages:** Automatically display pages on the front end.  

**Default Document Folder:** Set the default folder for files uploaded to the CMS system. The value is the ID of the folder. 

**Timezone:** Set the timezone of the CMS system.

**Expire-On Values:** Set the default expiration date for all asset files. 

**Google API key:** Enter this key to use a variety of Google API integrations – namely integration with Google Maps and the use of latitude and longitude data. 

### AWS

If a website built in Solodev is configured to use a CloudFront CDN, administrators can invalidate a cache on page publishing once AWS keys are specified. AWS keys consist of two parts listed below:

- AWS Key: An access key ID. 

- AWS Secret: a secret access key.

### Payment

Solodev allows administrators to process and accept payments on their website. Solodev provides a sandbox mode so that administrators can test the processing of payments and turn it off when they are ready to sell. Administrators can choose from payment gateways such as Paypal and Authorize.net. In addition, administrators can decide whether to accept AMEX or Discover Cards.

**Payment Gateway:** Choose the merchant service that authorizes credit card or direct payments processing.  

**Vendor:** The name of your organization’s eCommerce store.  

**Authorized Payment Username:** Username used to login into the merchant service. 

**Authorized Payment Password:** Password used to login to the merchant service. 

**Authorized Payment Key:** Transaction key provided by the merchant service. 

**Accept AMEX:** Accept American Express cards

**Accept Discover:** Accept Discover cards. 

**Sandbox Mode:** Enable this mode to test payment processing. Once the tests are completed, administrators can disable it to start sales. 

### Tasks
Administrators can customize task labels for workflows and display overall task status. The fields for this section are provided below: 

**Completed Status Label:** Set the label for completed tasks. 

**In Progress Status Label:** Set the label for tasks in progress.

**Denied Status Label:** Set the label for rejected tasks. 

**Approved Status Label:** Set the label for approved tasks. 

**Not Started Status Label:** Set the label for tasks that are not assigned. 