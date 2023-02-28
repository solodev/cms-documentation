# Config

The config category of settings applies to all websites in the CMS system. You can configure payment options, SSL, email, and much more. 

<img src="../../../images/config.jpg" alt="config" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
[Organization Settings](https://cms.solodev.net/admin/settings/config/#organization-settings)| Manage your organization settings such as organization name and address.
[Email](https://cms.solodev.net/admin/settings/config/#email)| Manage email details.
[SSL](https://cms.solodev.net/admin/settings/config/#ssl)| Manage SSL connection.
[Cache](https://cms.solodev.net/admin/settings/config/#cache)| Determine how long files or pages are stored.
[Click Tracking](https://cms.solodev.net/admin/settings/config/#click-tracking)| Manage click tracking, which is a method of tracking the behavior of website users by registering clicks on the website.
[Rules](https://cms.solodev.net/admin/settings/config/#rules)| Manage rules for a variety of resources in the CMS system and the CMS system itself. 
[AWS](https://cms.solodev.net/admin/settings/config/#aws)| Manage AWS.
[Salesforce](https://cms.solodev.net/admin/settings/config/#salesforce)| Manage Salesforce access.
[Payment](https://cms.solodev.net/admin/settings/config/#payment)| Manage payment.
[Tasks](https://cms.solodev.net/admin/settings/config/#tasks)| Manage tasks.
[SSO](https://cms.solodev.net/admin/settings/config/#sso)| Manage SSO.

## Organization Settings

Set the name and address associated with your organization. 

<img src="../../../images/organizationsettings.jpg" alt="organizationsettings" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Organization Name | Enter the organization name.
Organization Address | Enter the organization address.

## Email

Set a professional email address for your organization and send all outgoing emails via the SMTP server to ensure secure delivery. 

<img src="../../../images/email.jpg" alt="email" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Email from Address | This is the email address used by the organization to send emails to its recipients. Type it in the field.
SMTP Host | Enter the name of the outgoing mail server (example: mail.sftp.solodev.com). 
SMTP Port | Enter the port that will be used to relay outbound mail to your mail server.
SMTP Username | Enter the username used to login to the mail server.
SMTP Password | Enter the password used to login to the mail server. 

## SSL

Manage the SSL connection.

(Secure Sockets Layer) is the standard security technology for establishing an encrypted link between a web server and a browser. This link ensures that all data passed between the web server and browsers remain private and integral.  

<img src="../../../images/ssl.jpg" alt="ssl" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Force SSL | Mark this option to force an HTTPS connection to your website.

## Cache

Determine how long files or pages are stored so that future requests can be served faster. The default values are 86400s or 1 day.

<img src="../../../images/cache.jpg" alt="cache" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Page Cache | Set the maximum age in seconds stml pages are stored in the cache. 
File Cache | Set the maximum age in seconds that CMS files are stored in the cache.

## Click Tracking

Track when users leave their websites or track engagement when users click on documents and use those events for web analytics. 

<img src="../../../images/clicktracking.jpg" alt="clicktracking" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Outbound Click Tracking | Track when users click on an external link to leave the website. 
Document Click Tracking | Track when users click on site documents. 

## Rules

Set rules for a variety of resources in the CMS system and the CMS system itself. 

<img src="../../../images/rules.jpg" alt="rules" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Auto Publish Pages | It refers to the automatic display pages on the front end. To do that, choose **True**. If you don't want to display it, choose **False**.
Expire-On Values | Set the default expiration date for all asset files.
Default Document Folder | Set the default folder for files uploaded to the CMS system. The value is the ID of the folder. 
Google API Key | Enter this key to use a variety of Google API integrations – namely integration with Google Maps and the use of latitude and longitude data.
Timezone | Set the timezone of the CMS system.

## AWS

If a website built in Solodev is configured to use a CloudFront CDN, you can invalidate a cache on page publishing once AWS keys are specified. 

<img src="../../../images/aws.jpg" alt="aws" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
AWS Key | Enter the access key ID. 
AWS Secret | Enter secret access key. 

## Salesforce

Solodev CMS allows you to use Salesforce - CRM platform. Manage its features.

<img src="../../../images/salesforce.jpg" alt="salesforce" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Salesforce Username | Enter the salesforce username.
Salesforce Password | Enter the salesforce password.
Consumer Key | Enter the consumer key.
Consumer Secret | Enter the consumer secret.
Security Token | Enter the security token.
Sandbox | Enable this mode to perform test activities. 

## Payment

Solodev allows you to process and accept payments on their website. You are provided with a sandbox mode so that you can test the processing of payments and turn it off when they are ready to sell. You can choose from payment gateways such as Paypal and Authorize.net. In addition, you can decide whether to accept AMEX or Discover Cards.

<img src="../../../images/payment.jpg" alt="payment" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Payment Gateway | Choose payment gateway. It can be **Paypal Payflow Pro**, **Paypal Payments Pro**, or **Authorize.net**.
Partner | Type the name of the merchant service that authorizes credit card or direct payment processing. 
Vendor | Type the name of your organization’s eCommerce store. 
Authorized Payment Username | Type the username used to login into the merchant service. 
Authorized Payment Password | Type the password used to login to the merchant service. 
Authorized Payment Key | Type the transaction key provided by the merchant service. 
Accept AMEX | You can accept American Express cards. Choose **Yes** to accept, otherwise choose **No**.
Accept Discover | You can accept Discover cards. Choose **Yes** to accept, otherwise choose **No**.
Sandbox Mode | Enable this mode to test payment processing. Once the tests are completed, you can disable it to start sales. Choose **Yes** to enable this mode, otherwise choose **No**.

## Tasks

Customize task labels for workflows and display overall task status.

<img src="../../../images/tasks.jpg" alt="tasks" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Completed Status Label | Set the label for completed tasks. 
Approved Status Label | Set the label for approved tasks.
In Progress Status Label | Set the label for tasks in progress.
Not Started Status Label | Set the label for tasks that are not assigned. 
Denied Status Label | Set the label for rejected tasks. 
Display Overall Task Status | Overall task status can be displayed. To do that, choose **True**. If you don't want to display it, choose **False**.

## SSO

Manage SSO. It permits a user to use one set of login credentials - for example, a username and password - to access multiple applications. 

<img src="../../../images/sso.jpg" alt="sso" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Authorize URI | Enter the authorize URI. 
Access Token URI | Enter the access token URI.
Redirect URI | The redirect URI is the callback entry point of the app. Type it in the field.
Resource Owner URI | Resource owner is the user who authorizes an application to access its account. Type resource owner URI in the field.
Key Set URL | Enter the key set URL.
API Scopes | Scopes enable you to group a set of REST resources, methods, or both, and SOAP operations for an API. Type it in the field.
Client ID | Enter the client ID.
Client Secret | Enter the client secret.

## Confirm

Click the blue **Submit** button at the bottom right to apply your changes.

