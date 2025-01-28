The **Config** category in settings covers a broad range of configurations that apply to all websites within the CMS system. This section allows you to set up key functionalities such as payment options, SSL security, email settings, click tracking, and much more, ensuring that your sites run smoothly and securely. From managing your organization’s settings to integrating with third-party services like Salesforce and AWS, the Config section gives you full control over essential elements of your CMS environment.

<p><img src="/static/images/settings/config/config.jpg" alt="Config view" style="width: 90%;"></p>

**Name** | **Description** 
:--- | ---
[Organization Settings](/admin/settings/config/#organization-settings) | Manage your organization settings, such as organization name and address.
[Email](/admin/settings/config/#email) | Manage email details for the official correspondence from the organization.
[SSL](/admin/settings/config/#ssl) | Manage a secure sockets layer (SSL) establishes an encrypted link between the web server and a browser.
[Cache](/admin/settings/config/#cache) | Determine how long files or pages are stored.
[Click Tracking](/admin/settings/config/#click-tracking) | Create settings for click tracking, which monitors users' click behavior on your sites.
[Rules](/admin/settings/config/#rules) | Create click tracking settings, which monitor users' click behavior on your sites.
[AWS](/admin/settings/config/#aws) | Specify AWS Keys and Secret Keys
[Google](/admin/settings/config/#google) | Manage your Google access.
[Spam Keyword List](/admin/settings/config/#spam-keyword-list) | Filter form entries that contain specific spam keywords.
[IP Quality Score](/admin/settings/config/#ip-quality-score) | Assess the IP quality score by analyzing IP addresses, phone numbers, email addresses, and more.
[Salesforce](/admin/settings/config/#salesforce) | Manage settings in connecting your Solodev CMS to Salesforce.
[Wowza](/admin/settings/config/#wowza) | Manage settings in connecting your Solodev CMS to Wowza.
[Payment](/admin/settings/config/#payment) | Manage payment settings, process test payments, connect payment gateways, and more.
[Tasks](/admin/settings/config/#tasks) | Create and manage task labels and workflows.
<!-- [Customer.io](/admin/settings/config/#tasks) | Create and manage task labels and workflows. -->
[SSO](/admin/settings/config/#sso) | Manage settings for single sign-on (SSO) capabilities in multiple applications.

## Organization Settings

Set the name and address associated with your organization. 

<img src="/static/images/organizationsettings.jpg" alt="organizationsettings" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Organization Name | Identifies organization
Organization Address | Standard physical and/or postal location of the organization.

## Email

Set a professional email address for your organization and send all outgoing emails via the SMTP server to ensure secure delivery. 

<img src="/static/images/email.jpg" alt="email" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Email from Address | This is the email address used by the organization to send emails to its recipients. Type it in the field.
SMTP Host | Enter the name of the outgoing mail server (example: mail.sftp.solodev.com). 
SMTP Port | Enter the port that will be used to relay outbound mail to your mail server.
SMTP Username | Enter the username used to login to the mail server.
SMTP Password | Enter the password used to login to the mail server. 

## SSL

Manage the SSL connection.

(Secure Sockets Layer) is the standard security technology for establishing an encrypted link between a web server and a browser. This link ensures that all data between the web server and browsers remain private and integral.

<img src="/static/images/ssl.jpg" alt="ssl" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Force SSL | Mark this option to force an HTTPS connection to your website.

## Cache

Determine how long files or pages are stored so that future requests can be served faster. The default values are 86400s or one day.

<img src="/static/images/cache.jpg" alt="cache" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Page Cache | Set the maximum age in seconds stml pages are stored in the cache. 
File Cache | Set the maximum age in seconds that CMS files are stored in the cache.

## Click Tracking

Track when users click on an external link to leave your website or track engagement when a user clicks on a document or other asset. Both can be used with web analytics to help you follow patterns and trends among users.

<img src="/static/images/clicktracking.jpg" alt="clicktracking" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Outbound Click Tracking | Track when users click an external link to leave the website.
Document Click Tracking | Track when users click on-site documents.

## Rules

Establish rules for a variety of resources within the CMS.

<img src="/static/images/rules.jpg" alt="rules" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Auto Publish Pages | Refers to the automatic display pages on the front end. To do that, choose **True**. If you don't want to display it, choose **False**.
Expire-On Values | Set the default expiration date for all asset files.
Default Document Folder | Set the default folder for files uploaded to the CMS system. The value is the ID of the folder. 
Google API Key | Enter this key to use a variety of Google API integrations – namely, integration with Google Maps and the use of latitude and longitude data.
Timezone | Set the timezone of the CMS system.

## AWS

If a website built in Solodev is configured to use a CloudFront CDN, you can invalidate a cache on page publishing once AWS keys are specified. 

<img src="/static/images/aws.jpg" alt="aws" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
AWS Key | Enter the access key ID. 
AWS Secret | Enter secret access key.

## Google

Manage your Google access.

<img src="/static/images/google.jpg" alt="google" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
reCAPTCHA Site Key | Enter the reCAPTCHA site key. 
reCAPTCHA Secret Key | Enter the reCAPTCHA secret key.

## Spam Keyword List

The spam keyword list is a built-in filtering feature that will help minimize form entries containing specific keywords, including profanity. Identify these words and enter them into the field below.

!!!**Note**:
Only Solodev admins will be able to access the Spam Keyword List feature.
!!!

<p><img src="/static/images/admin/settings/config/spam-keyword-list.jpg" alt="Spam Keyword List" style="width: 60%;"></p>

**Name** | **Description** 
:--- | ---
Spam Keyword List | Enter the spam keyword list. Each entry should be included on its own line.

## IP Quality Score

An IP quality score is used to analyze IP addresses, phone numbers, email addresses, and URLs/domains to identify sophisticated bad actors or high-risk behaviors from visitors to your website.

<img src="/static/images/ipqualityscore.jpg" alt="ipqualityscore" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
IP Quality Score Key | Enter the IP quality score key.

## Salesforce

Solodev CMS allows you to use Salesforce - CRM platform. Manage its features.

<img src="/static/images/salesforce.jpg" alt="salesforce" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Salesforce Username | Enter the salesforce username.
Salesforce Password | Enter the salesforce password.
Consumer Key | Enter the consumer key.
Consumer Secret | Enter the consumer secret.
Security Token | Enter the security token.
Sandbox | Enable this mode to perform test activities. 

## Wowza

Solodev CMS allows you to use Wowza - a streaming engine. Manage its features.

<img src="/static/images/wowza.jpg" alt="wowza" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Wowza Username | Enter the salesforce username.
Wowza Password | Enter the salesforce password.
Wowza Host| Enter the Wowza Host address.


## Payment

Process and accept payments on your website through settings in Solodev CMS. Test payment processing in sandbox mode, and remove sandbox mode when testing is completed, and you are ready to process payments. Choose from multiple payment gateway options. Also, you can decide whether to accept AMEX or Discover cards and execute the setting that works for you.

<img src="/static/images/payment.jpg" alt="payment" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Payment Gateway | Choose payment gateway. It can be **Paypal Payflow Pro**, **Paypal Payments Pro**, or **Authorize.net**.
Partner | Type the name of the merchant service that authorizes credit card or direct payment processing. 
Vendor | Type the name of your organization’s eCommerce store. 
Authorized Payment Username | Type the username used to login into the merchant service. 
Authorized Payment Password | Type the password used to login to the merchant service. 
Authorized Payment Key | Type the transaction key provided by the merchant service. 
Accept AMEX |You can accept American Express cards. Choose **Yes** to buy; otherwise, choose **No**.
Accept Discover | You can accept Discover cards. Choose **Yes** to buy; otherwise, choose **No**.
Sandbox Mode | EEnable this mode to test payment processing. You can turn the tests off to start sales once the tests are completed. Choose **Yes** to enable this mode; otherwise, choose **No**.

## Tasks

Customize task labels for workflows and display overall task status.

<img src="/static/images/tasks.jpg" alt="tasks" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Completed Status Label | Set the label for completed tasks. 
Approved Status Label | Set the label for approved tasks.
In Progress Status Label | Set the label for tasks in progress.
Not Started Status Label | Set the label for tasks that are not assigned. 
Denied Status Label | Set the label for rejected tasks. 
Display Overall Task Status | Overall task status can be displayed. To do that, choose **True**. If you don't want to show it, choose **False**.

## SSO

Manage SSO. It permits a user to use one login credential - for example, a username and password - to access multiple applications.

<img src="/static/images/sso.jpg" alt="sso" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Authorize URI | Enter the authorized URI. 
Access Token URI | Enter the access token URI.
Redirect URI | The redirect URI is the callback entry point of the app. Type it in the field.
Resource Owner URI | Resource owner is the user who authorizes an application to access its account. Type resource owner URI in the field.
Key Set URL | Enter the key set URL.
API Scopes | Scopes enable you to group a set of REST resources, methods, or both, and SOAP operations for an API. Type it in the field.
Client ID | Enter the client ID.
Client Secret | Enter the client secret.

## Confirm

Click the blue **Submit** button at the bottom right to apply your changes.
