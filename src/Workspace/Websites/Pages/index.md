# The Basics of a Page

### Introduction

In Solodev CMS, all pages are given an ".stml" extension. STML files are HTML files that contain server side includes (SSI); which is used to generate dynamic content for the page. When you create a page in Solodev, it will automatically have the ".stml" extension but if you're creating a page with a code editor, you need to manually give it an extention of ".stml" before you upload the file on Solodev.

![stml extension example](stml-extension-example.png)

### Content Blocks

Pages are comprised of “drop zones” that allow you to insert content blocks into a given area. Traditional content blocks (given an “.html” extension) can easily be edited either inline or through a WYSIWYG editor. `Code blocks (traditionally with a “.tpl” extension) can be edited in the system directly.

***The difference between .html files and .tpl files in Solodev:***

.html files should be used to manage content devoid of complex markup. If a content block just contains text elements, images, links, etc then .html is appropriate.

.tpl should be used if you're creating complex HTML synxtax such as nested divs.

Previously, we talked about the [two main folder structures](https://cms.solodev.net/workspace/websites/#website-file-structure-in-solodev) in Solodev. There are two main folders: **web files** and **www**. Both directories, **web files** and **www** mimic one another with the web files folder displaying folders filled with HTML content and your www folder housing the same folder structure with one difference, instead of HTML content they are composed of web pages. Let's explain this further:

Pages in Solodev have a different structure than regular web pages. Regular web pages are HTML files with an ".html" extension such as index.html, about.html etc. Inside these pages, there's HTML code. Web pages in Solodev have an ".stml" extension and inside they store multiple HTML files as content. 

So what is the main difference between content and pages in Solodev?

- Content is stored in HTML files.

- Pages are public facing web pages composed of multiple HTML files and have an ".stml" extension.

To give an example, let's say you have a block of text with an image that you'd like to put on a page. Under the web files folder, you'd create an HTML file, put the content in it:

![html content](example-html-content.png)

Here's how it looks when you click on Source to display the source code:

![html source code content](example-html-content-source-code.png)

Then you'd go to the **www** folder and and insert that HTML file in the .stml file:

![html content  on a page](html-content-on-a-page.png)