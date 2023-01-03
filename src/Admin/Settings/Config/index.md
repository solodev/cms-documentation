# Config

The config category of settings applies to all websites in the CMS system. You can configure payment options, SSL, email and much more. 

<img src="../../../images/config.jpg" alt="config" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
[Organization Settings](https://cms.solodev.net/admin/settings/config/#organization-settings)| Here you can manage organization settings such as organization name and address.
[Email](https://cms.solodev.net/admin/settings/config/#email)| Here you can manage email details.
[SSL](https://cms.solodev.net/admin/settings/config/#ssl)| Here you can manage SSL connection.
[Cache](https://cms.solodev.net/admin/settings/config/#cache)| Here you can determine how long files or pages are stored.
[Click Tracking](https://cms.solodev.net/admin/settings/config/#click-tracking)| Here you can manage click tracking, which is a method of tracking the behavior of website users by registering clicks on the website.
[Rules](https://cms.solodev.net/admin/settings/config/#rules)| Here you can manage rules for a variety of resources in the CMS system and the CMS system itself. 
[AWS](https://cms.solodev.net/admin/settings/config/#aws)| Here you can manage AWS.
[Google](https://cms.solodev.net/admin/settings/config/#google)| Here you can manage reCAPTCHA keys.
[IP Quality Score](https://cms.solodev.net/admin/settings/config/#ip-quality-score)| Here you can manage IP Quality Score
[Salesforce](https://cms.solodev.net/admin/settings/config/#salesforce)| Here you can manage Salesforce access.
[Wowza](https://cms.solodev.net/admin/settings/config/#wowza)| Here you can manage Wowza access.
[Payment](https://cms.solodev.net/admin/settings/config/#payment)| Here you can manage payment.
[Tasks](https://cms.solodev.net/admin/settings/config/#tasks)| Here you can manage tasks.
[SSO](https://cms.solodev.net/admin/settings/config/#sso)| Here you can manage SSO.

## Organization Settings

Here you can set the name and address associated with your organization. 

<img src="../../../images/organizationsettings.jpg" alt="organizationsettings" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Organization Name | Type an organization name.
Organization Address | Type an organization address.

## Email

Here you can set a professional email address for your organization and send all outgoing emails via SMTP server to ensure secure delivery. 

<img src="../../../images/email.jpg" alt="email" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Email from Address | This is the email address used by the organization to send emails to its recipients. Type it in the field.
SMTP Host | Type the cname for the outgoing mail server (example: mail.sftp.solodev.com). 
SMTP Port | Type the port that will be used to relay outbound mail to your mail server.
SMTP Username | Type the username used to login to the mail server.
SMTP Password | Type the password used to login to the mail server. 

## SSL

Here you can manage an SSL connection.

(Secure Sockets Layer) is the standard security technology for establishing an encrypted link between a web server and a browser. This link ensures that all data passed between the web server and browsers remain private and integral.  

<img src="../../../images/ssl.jpg" alt="ssl" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Force SSL | Mark this option to force an HTTPS connection to your website.

## Cache

Here you can determine how long files or pages are stored so that future requests can be served faster. The default values are 86400s or 1 day.

<img src="../../../images/cache.jpg" alt="cache" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Page Cache | Set the maximum age in seconds stml pages are stored in cache. 
File Cache | Set the maximum age in seconds that CMS files are stored in cache.

## Click Tracking

Here you can track when users leave their websites or track engagement when users click on documents and use those events for web analytics. 

<img src="../../../images/clicktracking.jpg" alt="clicktracking" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Outbound Click Tracking | Track when users click on an external link to leave the website. 
Document Click Tracking | Track when users click on site documents. 

## Rules

Here you can set rules for a variety of resources in the CMS system and the CMS system itself. 

<img src="../../../images/rules.jpg" alt="rules" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Auto Publish Pages | It refers to the automatic display pages on the front end. To do that, choose **true**. If you don't want to display it, choose **false**.
Expire-On Values | Set the default expiration date for all asset files.
Default Document Folder | Set the default folder for files uploaded to the CMS system. The value is the ID of the folder. 
Google API Key | Enter this key to use a variety of Google API integrations – namely integration with Google Maps and the use of latitude and longitude data.
Timezone | Set the timezone of the CMS system.

## AWS

If a website built in Solodev is configured to use a CloudFront CDN, you can invalidate a cache on page publishing once AWS keys are specified. 

<img src="../../../images/aws.jpg" alt="aws" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
AWS Key | Type an access key ID. 
AWS Secret | Type a secret access key. 

## Google

reCAPTCHA keys are used to verify user interactions on your web pages and mobile applications.

<img src="../../../images/google.jpg" alt="google" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
reCAPTCHA Site Key | Type reCAPTCHA Site Key.
reCAPTCHA Secret Key | Type reCAPTCHA Secret Key.

## IP Quality Score

<img src="../../../images/ipqualityscore.jpg" alt="ipqualityscore" style="width: 100%; display: block"></a>

IPQualityScore (IPQS) provides grade fraud prevention, risk analysis, and threat detection. 

**Name** | **Description** 
:--- | ---
IP Quality Score Key | Type an IP Quality Score Key.

## Salesforce

Solodev CMS allows you to use Salesforce - CRM platform.

<img src="../../../images/salesforce.jpg" alt="salesforce" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Salesforce Username | Type a salesforce username.
Salesforce Password | Type a salesforce password.
Consumer Key | Type a consumer key.
Consumer Secret | Type a consumer secret.
Security Token | Type a security token.
Sandbox | Enable this mode to perform test activities. 

## Wowza

Solodev CMS allows you to use Wowza video platform.

<img src="../../../images/wowza.jpg" alt="wowza" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Wowza Username | Type a Wowza username.
Wowza Password | Type a Wowza password.
Wowza Host | Type a Wowza host.

## Payment

Solodev allows you to process and accept payments on their website. You are provided with a sandbox mode so that you can test the processing of payments and turn it off when they are ready to sell. You can choose from payment gateways such as Paypal and Authorize.net. In addition, you can decide whether to accept AMEX or Discover Cards.

<img src="../../../images/payment.jpg" alt="payment" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Payment Gateway | Choose payment gateway. It can be **Paypal Payflow Pro**, **Paypal Payments Pro**, **Authorize.net**.
Partner | Type the name of the merchant service that authorizes credit card or direct payments processing. 
Vendor | Type the name of your organization’s eCommerce store. 
Authorized Payment Username | Type the username used to login into the merchant service. 
Authorized Payment Password | Type the password used to login to the merchant service. 
Authorized Payment Key | Type the transaction key provided by the merchant service. 
Accept AMEX | You can accept American Express cards. Choose **yes** to accept, otherwise choose **no**.
Accept Discover | You can accept Discover cards. Choose **yes** to accept, otherwise choose **no**.
Sandbox Mode | Enable this mode to test payment processing. Once the tests are completed, you can disable it to start sales. Choose **yes** to enable this mode, otherwise choose **no**.

## Tasks

Here you can customize task labels for workflows and display overall task status.

<img src="../../../images/tasks.jpg" alt="tasks" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Completed Status Label | Set the label for completed tasks. 
Approved Status Label | Set the label for approved tasks.
In Progress Status Label | Set the label for tasks in progress.
Not Started Status Label | Set the label for tasks that are not assigned. 
Denied Status Label | Set the label for rejected tasks. 
Display Overall Task Status | Overall task status can be displayed. To do that, choose **true**. If you don't want to display it, choose **false**.

## SSO

Here you can manage SSO. It permits a user to use one set of login credentials - for example, a username and password - to access multiple applications. 

<img src="../../../images/sso.jpg" alt="sso" style="width: 100%; display: block"></a>

**Name** | **Description** 
:--- | ---
Authorize URI | Type the authorize URI. 
Access Token URI | Type the access token URI.
Redirect URI | The redirect URI is the callback entry point of the app. Type it in the field.
Resource Owner URI | Resource owner is the user who authorizes an application to access its account. Type resource owner URI in the field.
Key Set URL | Type the key set URL.
API Scopes | Scopes enable you to group a set of REST resources, methods, or both, and SOAP operations for an API. Type it in the field.
Client ID | Type the client ID.
Client Secret | Type the client secret.

## Confirm

Click the blue **Submit** button at the bottom right to apply your changes.

