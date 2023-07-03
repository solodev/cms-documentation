# Managing 301 Redirects

URL/page redirects can help direct users away from pages that no longer exist or to more preferred locations. 

Solodev supports URL redirects with 301 redirects and an .htaccess file. 

!!! Note: Solodev recommends that administrators exercise extreme caution when modifying an .htaccess file. One error in the .htaccess code can temporarily disable the website. 
!!!

Solodev creates an .htaccess file with the creation of each website. This document will show the user how to add a 301 redirect to the .htaccess file. 

## Adding a 301 redirect to a website

* Click **Websites** under the **Workspace** section of the Solodev Dashboard. 
* Click on the Website to open it. 
* Click **Redirects** located under the Update Website button. 
* If the administrator has created and customized their error 404 document, enter the following lines of code to direct the browser to the error document:
```js
RewriteEngine On

RewriteBase /

### .htaccess file ###

ErrorDocument 404 /404.stml
```
* Enter the 301 redirect in the following format: 
```js
Redirect 301 /old-page.stml http://www.mydomain.com/new-page.stml
The administrator can add additional 301 redirects by placing each redirect on its own line in the .htaccess file. 
```
* Click **Submit**.

!!! Note: 
In the redirect, the old-page.stml should use a relative path and reference the page that should be redirected. The <a href="http://www.mydomain.com/new-page.stml">http://www.mydomain.com/new-page.stml</a> should use an absolute path and reference the new page. 
!!!
