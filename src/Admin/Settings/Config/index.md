The **Config** category in settings covers a broad range of configurations that apply to all websites within the CMS system. This section allows you to set up key functionalities such as payment options, SSL security, email settings, click tracking, and much more, ensuring that your sites run smoothly and securely. From managing your organization’s settings to integrating with third-party services like Salesforce and AWS, the Config section gives you full control over essential elements of your CMS environment.

<p><img src="/static/images/settings/config/config.jpg" alt="Config view" style="width: 90%;"></p>

**Name** | **Description** 
:--- | ---
[Organization Settings](/admin/settings/config/#organization-settings) | Manage organization details, including name and address.
[Email](/admin/settings/config/#email) | Configure email settings for official correspondence.
[SSL](/admin/settings/config/#ssl) | Manage SSL settings to establish secure, encrypted links between the web server and browsers.
[Cache](/admin/settings/config/#cache) | Control the caching duration for faster page loading.
[Click Tracking](/admin/settings/config/#click-tracking) | Set up tracking for user click behavior on your site.
[Rules](/admin/settings/config/#rules) | Define rules for various resources in the CMS, including click tracking.
[AWS](/admin/settings/config/#aws) | Configure AWS keys and secrets for integration.
[Google](/admin/settings/config/#google) | Manage your Google API access and integrations.
[Spam Keyword List](/admin/settings/config/#spam-keyword-list) | Filter out form entries containing specific spam keywords.
[IP Quality Score](/admin/settings/config/#ip-quality-score) | Evaluate IP quality scores based on user data like IP addresses and phone numbers.
[Salesforce](/admin/settings/config/#salesforce) | Integrate and manage Salesforce CRM settings in Solodev CMS.
[Wowza](/admin/settings/config/#wowza) | Configure settings for connecting Solodev CMS to Wowza streaming.
[Payment](/admin/settings/config/#payment) | Manage payment settings, process test payments, and connect payment gateways.
[Tasks](/admin/settings/config/#tasks) | Set up and manage task labels and workflows.
[Customer.io](/admin/settings/config/#customer.io) | Integrate Customer.io for personalized marketing automation.
[SSO](/admin/settings/config/#sso) | Configure Single Sign-On (SSO) settings for multiple applications.

## Organization Settings

Use these settings to define the company name and address that appear in transactional emails sent from the CMS.

<p><img src="/static/images/settings/config/organization-settings.jpg" alt="Organization Settings" style="width: 35%;"></p>

**Name** | **Description** 
:--- | ---
Organization Name	| Specifies the company's name displayed in transactional communications.
Organization Address | Provide the standard physical or postal location of the organization.

## Email

Configure a professional email address for your organization and ensure secure delivery by sending outgoing emails via the SMTP server.

<img src="/static/images/email.jpg" alt="email" style="width: 80%; display: block"></a>

**Name** | **Description** 
:--- | ---
Email from Address | The email address your organization uses to send messages to recipients.
SMTP Host	| The name of the outgoing mail server (e.g., `mail.sftp.solodev.com`).
SMTP Port	| The port used to relay outbound mail to your mail server.
SMTP Username	| The username required to log in to the mail server.
SMTP Password	| The password required to log in to the mail server.

## SSL

Secure Sockets Layer (SSL) is the standard technology for creating an encrypted link between a web server and a browser. This encryption ensures that data exchanged between the server and browser remains private and secure.

<p><img src="/static/images/settings/config/ssl-settings.jpg" alt="SSL Settings" style="width: 70%;"></p>

**Name** | **Description** 
:--- | ---
Force SSL	| Select this option to enforce an HTTPS connection for your website.
SSL Type | Choose **Custom** from the dropdown to access additional configuration options.
CMS Login URL	| The Solodev Admin URL.
SSL Certificate	| Upload the SSL Certificate file.
SSL Key	| Upload the SSL Key file.
SSL Chain Certificate	| Upload the SSL Chain Certificate file.

## Cache

Control how long files or pages are stored to improve the speed of future requests. The default caching duration is 86400 seconds (or one day). You can also choose from other durations, including 12 hours, 1 hour, 30 minutes, 15 minutes, or no cache.

<p><img src="/static/images/settings/config/cache-settings.jpg" alt="Cache Settings" style="width: 90%;"></p>

**Name** | **Description** 
:--- | ---
Page Cache | Set the maximum age in seconds for STML pages stored in the cache.
File Cache | Set the maximum age in seconds for files stored in the cache.

## Click Tracking

Monitor user interactions by tracking when they click an external link to leave your website or engage with documents and other assets. This data can be integrated with web analytics to uncover patterns and trends in user behavior.

<p><img src="/static/images/settings/config/click-tracking.jpg" alt="Click Tracking Settings" style="width: 90%;"></p>

**Name** | **Description** 
:--- | ---
Outbound Click Tracking | Track when users click an external link to leave the website.
Document Click Tracking | Track when users click on-site documents.

## Rules

Establish rules for various resources within the CMS.

<p><img src="/static/images/settings/config/rules-settings.jpg" alt="Rules Settings" style="width: 90%;"></p>

**Name** | **Description** 
:--- | ---
Auto Publish Pages | Choose **True** to automatically display pages on the front end. Select **False** if you do not want the page displayed.
Expire-On Values | Set the default expiration date for all asset files.
Default Document Folder | Define the default folder for uploaded files within the CMS. The value is the **folder ID**.
Google API Key | Enter the key to enable Google API integrations, such as Google Maps or the use of latitude and longitude data.
Timezone | Set the timezone for the CMS system.
Disable Email Protection | Select this option to allow email addresses to be displayed without hiding them.

## AWS

If a website built in Solodev is configured to use a CloudFront CDN, you can invalidate the cache on page publishing once AWS keys are specified.

<p><img src="/static/images/settings/config/aws-settings.jpg" alt="AWS Settings" style="width: 90%;"></p>

**Name** | **Description** 
:--- | ---
AWS Key | The AWS access key ID. 
AWS Secret | The AWS secret access key.

## Google

Manage your reCAPTCHA access for enhanced security.

<p><img src="/static/images/settings/config/google-settings.jpg" alt="Google Settings" style="width: 90%;"></p>

**Name** | **Description** 
:--- | ---
reCAPTCHA Site Key | The reCAPTCHA site key used for verification.
reCAPTCHA Secret Key | The reCAPTCHA secret key used for authentication.

## Spam Keyword List

The spam keyword list is a built-in filtering feature designed to minimize form entries containing specific keywords, including profanity. Each entry should be placed on its own line.

!!!warning Note:
Only Solodev admins will be able to access the Spam Keyword List feature.
!!!

<p><img src="/static/images/settings/config/spam-keyword-list.jpg" alt="Spam Keyword List" style="width: 60%;"></p>

## IP Quality Score

An IP quality score is used to analyze IP addresses, phone numbers, email addresses, and URLs/domains to detect sophisticated bad actors or high-risk behaviors from visitors to your website. Enter the IP quality score key.

<p><img src="/static/images/settings/config/ip-quality-score.jpg" alt="IP Quality Score Settings" style="width: 60%;"></p>

## Salesforce

Solodev CMS allows you to integrate with Salesforce, the CRM platform.

<p><img src="/static/images/settings/config/salesforce-settings.jpg" alt="Salesforce Settings" style="width: 80%;"></p>

**Name** | **Description** 
:--- | ---
Salesforce Username | The salesforce username.
Salesforce Password | The salesforce password.
Consumer Key | The consumer key.
Consumer Secret | The consumer secret.
Security Token | The security token.
Sandbox | Enable this mode to perform test activities. 

## Wowza

Solodev CMS allows you to use Wowza - a streaming engine.

<p><img src="/static/images/settings/config/wowza-settings.jpg" alt="Wowza Settings" style="width: 80%;"></p>

**Name** | **Description** 
:--- | ---
Wowza Username | The Wowza username.
Wowza Password | The Wowza password.
Wowza Host| The Wowza host address.

## Payment

Process and accept payments on your website through settings in Solodev CMS. Test payment processing in sandbox mode, and remove sandbox mode when testing is completed, and you are ready to process payments. Choose from multiple payment gateway options. Also, you can decide whether to accept AMEX or Discover cards and execute the setting that works for you.

<p><img src="/static/images/settings/config/payment-settings.jpg" alt="Payment Settings" style="width: 80%;"></p>

**Name** | **Description** 
:--- | ---
Payment Gateway | Choose a payment gateway. It can be **Paypal Payflow Pro**, **Paypal Payments Pro**, or **Authorize.net**.
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

<p><img src="/static/images/settings/config/tasks-settings.jpg" alt="Tasks Settings" style="width: 80%;"></p>

**Name** | **Description** 
:--- | ---
Completed Status Label | Set the label for completed tasks. 
Approved Status Label | Set the label for approved tasks.
In Progress Status Label | Set the label for tasks in progress.
Not Started Status Label | Set the label for tasks that are not assigned. 
Denied Status Label | Set the label for rejected tasks. 
Display Overall Task Status | Overall task status can be displayed. To do so, choose **True**. If you don't want to show it, choose **False**.

## Customer.io

Customer.io is a marketing automation platform that helps businesses send targeted, personalized messages to customers via email, SMS, and push notifications. To find the credentials needed to integrate Customer.io with Solodev, go to [Account Settings > API Credentials](https://fly.customer.io/settings/api_credentials).

<p><img src="/static/images/settings/config/customerio-settings.jpg" alt="Customer.io Settings" style="width: 80%;"></p>

**Name** | **Description** 
:--- | ---
Site ID	| The unique Site ID assigned by Customer.io.
Track API Key	| The Track API Key provided by Customer.io for tracking user interactions.
App API Key	| The App API Key provided by Customer.io for integrating your application.

## SSO

Single Sign-On (SSO) is an authentication process that allows users to access multiple applications with one set of login credentials.

<p><img src="/static/images/settings/config/sso-settings.jpg" alt="SSO Settings" style="width: 80%;"></p>

**Name** | **Description** 
:--- | ---
Provider URL | The issuer URL of your OpenID Connect provider.
Client ID	| The unique Client ID assigned to your application.
Client Secret	| The confidential Client Secret associated with your application.