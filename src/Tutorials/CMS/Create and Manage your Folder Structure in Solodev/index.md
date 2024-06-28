# Create and Manage your Folder Structure in Solodev

In this article, we'll show you how to implement that sitemap in Solodev CMS by creating the folder structure.

## Implementing Your Sitemap in Solodev

Let's say we have this list that we'd like to implement on Solodev:

 - About Us
 - Clients
	-	Index
	- Detail
 - Contact Us
 - News
	- Index
	- Detail
 - Resources
	- Index
	- Detail	
 - Services
	- Design
	- Index
	- Marketing
	- Programming
	- Sales
	- Support
	- Training

Here are the steps to build the folder structure:

1. Open the **web files** directory.
2. Open the **content** directory.
3. Click **Add Folder**.**
4. In the form that appears to the right of the screen, enter the **Name**, **Title** and Description of the folder. Solodev recommends using best practices for naming, titling, and describing files, pages and folders.
5. Click **Submit**.
6. Repeat steps bullet items 3 through 5 for the remaining folders specified in the sitemap.
7. Add the same folders that were added to the **web files -> content** directory to the **www** directory.

The folders built in the **web files -> content** directory serves as a repository for HTML content.

!!!Note: 
Although the folder structure in **web files** and **www** are pretty close to identical, there are some key differences to consider.
!!!
 
* In **web files**, the **content** folder contains HTML and .tpl files whereas in the **www** directory the folders contain web pages (.stml files) made up of the HTML content from the folders in the **web files** directory.
* The homepage (**index.stml**) is at the root of the site so it is not housed in a folder and lives in the root of the **www** directory.
* Each folder in the www directory should contain an index.stml page as reflected in the sitemap example under **Services**.  
* An **assets folder** is required in the **www** directory to house CSS, JavaScript, Fonts, and Images.