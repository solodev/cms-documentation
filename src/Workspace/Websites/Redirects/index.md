# Redirects

Add custom redirects to automatically forward traffic from one URL on your website to another. 

In Solodev, you can directly add or modify redirects using <a href="https://loganix.com/what-is-a-htaccess-file/" target="_blank" rel="noopener noreferrer">.htaccess</a> (hypertext access), a powerful yet hidden file for adding extra functionality to your website that can make it more crawlable and indexable to search engines.   


<img src="../../../images/redirects_1.jpg" alt="redirects_1" style="width: 65%; display: block"></a>

!!!Tip:
There are several types of common redirects that can be used to forward traffic, including 301 permanent redirects, 307 temporary redirects, and others. Choosing the right redirect can enhance your SEO, so be careful which one you select.

<a href="https://yoast.com/which-redirect/" target="_blank" rel="noopener noreferrer">Learn more about redirects</a> 
!!!


**Name** | **Description** 
:--- | ---
History | View the history of your redirects, compare versions, and restore a previous version as current version.
Code editor| Use code to add redirects or other functions in the editor window.  

!!!Tip:
In Solodev, you will need to structure your redirects to include the Redirect syntax, the specific redirect code, and the path that you wish to redirect from. Most importantly, you must include the absolute URL – including the https/http and www – for the target domain. 
``` js
Redirect 301 /partners https://www.spacejet.org/customers/
```
!!!

### History

View the history of your .htaccess file including redirects. See the date that each version was created on and who updated the version. You can also compare versions and even restore a previous version as your current version.

<img src="../../../images/redirect-history.jpg" alt="redirect-history" style="width: 65%; display: block"></a>

**Name** | **Description** 
:--- | ---
Download | Click on the file icon or name at the right of each row to download a specific version of the .htaccess file.
Compare | Click the arrow icons or the word Compare to view your current version alongside any previous version.
Save as current version | Save the previous version as current version.
Current file | Compare your current version to a previous version and see the highlight changes in yellow.   

!!!Tip:
While you can restore a previous version to overwrite your current version, you can’t make specific changes to the current file in History. To add new redirects or make modifications, click OK and return to the main Redirects window. 
!!!

## Confirm

Once you have added your redirects or made changes to the .htaccess file, click **Submit**.