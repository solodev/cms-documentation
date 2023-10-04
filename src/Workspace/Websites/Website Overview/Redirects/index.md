# Redirects

Add custom redirects to automatically forward traffic from one URL on your website to another. 

In Solodev, you can directly add or modify redirects using <a href="https://loganix.com/what-is-a-htaccess-file/" target="_blank" rel="noopener noreferrer">.htaccess</a> (hypertext access), a powerful yet hidden file for adding extra functionality to your website that can make it more crawlable and indexable to search engines.   


<img src="../../../../images/redirects_1.jpg" alt="Redirects Modal" style="width: 60%;"></a>

!!!Tip:
Several common redirects can be used to forward traffic, including 301 permanent redirects and 307 temporary redirects. Choosing the correct redirect can enhance your SEO, so be careful which one you select.

<a href="https://yoast.com/which-redirect/" target="_blank" rel="noopener noreferrer">Learn more about redirects</a> 
!!!

**Name** | **Description** 
:--- | ---
History | View the history of your redirects, compare versions, and restore a previous version to the current version.
Code editor| Use code to add redirects or other functions in the editor window.  

!!!Tip:
In Solodev, you must structure your redirects to include the Redirect syntax, the specific redirect code, and the path you wish to redirect from. Most importantly, you must include the absolute URL for the target domain, including the https/http and www.
``` js
Redirect 301 /partners https://www.yoursite.com/customers/
```
!!!

### History

View the history of your .htaccess file, including redirects. See the date each version was created and who updated the version. You can also compare and restore a previous version to your current version.

<img src="../../../../images/redirect-history.jpg" alt="History Modal" style="width: 60%;"></a>

**Name** | **Description** 
:--- | ---
Download | Click on the file icon or name at the right of each row to download a specific version of the .htaccess file.
Compare | Click the arrow icons or the word Compare to view your current version alongside any previous version.
Save as the current version | Save the previous version as the current version.
Current file | Compare your current version to a previous version and see the highlighted changes in yellow.
Confirm | Once you have added your redirects or made changes to the .htaccess file, click **Submit**.

!!!Tip:
While you can restore a previous version to overwrite your current version, you can’t make specific changes to the existing file in History. Click OK to add new redirects or make modifications and return to the main Redirects window.
!!!