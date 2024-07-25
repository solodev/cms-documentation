Embed YouTube videos to your website. The YouTube video shortcode has two attributes, one required and one optional, listed below.   

Attributes: 

**Attributes** | **Description** 
:--- | ---
```[youtube id](required) ``` | Specify YouTube video id
```[youtube aspect_ratio](optional)``` | Specify YouTube video aspect ratio. Default is 16:9 

Shortcode: 
 
```js
[youtube id="fg_O2cdOQxA"]
```

To obtain the video id: 
 
Browse to the YouTube page where your video is hosted.

Click the Share button on the right just below the vldeo. 

Select the Embed Link and copy the video's YouTube ID.  For example, if the link reads `https://www.youtube.com/embed/fg_O2cdOQxA?controls=0`, you only need to copy the **fg_O2cdOQxA** after the forward slash. 

Insert the shortcode at the appropriate place in the tpl or html file associated with your page. 
```js
[youtube id="fg_O2cdOQxA"]
``` 

Review and click Publish to save your changes. 

!!!Note: 
In terms of the best practices, we don't recommend uploading any videos to the CMS due to file size and playback performance. For alternate streaming options such as Wowza, Vimeo, or Wistia, please contact us. 
!!!