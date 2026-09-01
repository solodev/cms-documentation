# fileparse.php

Solodev includes several built-in scripts which accomplish more extended functionality and help developers get the most out of the Solodev CMS system. This document will discuss fileparse.php script. This script acquires the file path of a resource on the Solodev filesystem for use on the frontend of the site. Generally used in relation to images stored in the web files folder, fileparse.php is used to construct source URLs for “<a>”, “<img>”, “<script>”, and “<link>” tags.

## Constructing a source URL for <img> tags

When a user uploads an image using the WYSIWYG editor, Solodev automatically places the image in an **_Assets** folder that is a peer to a specific page.

The source for each image tag includes a reference to "**fileparse.php**". The source of this image in the above screenshot is "**/core/fileparse.php/549/urlt/earth.jpg**”. The source of the image can be found by opening the html file that contains the uploaded image, right clicking the image, and clicking **Image Properties**. 

The reference "**fileparse.php**" is simply a built-in script that gets the URL of a specific folder ID. In this example, the folder has an ID of 549. The **fileparse.php** script returns the path to the specified folder and then finds the asset name.

The user can reference the **earth.jpg** image elsewhere on the Solodev site in an image tag by using the source path listed above: 
```js
<img src="/core/fileparse.php/549/urlt/earth.jpg" alt="earth with lights">
```

There are situations where the user needs to upload an image or asset outside of the WYSIWYG editor (for example, .tpl files or modules). For these situations the user can upload the files directly to an **_Assets** folder using **Add File** or **Upload** in the toolbar and use the fileparse.php method to create the asset’ source path. 