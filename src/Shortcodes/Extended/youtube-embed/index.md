Effortlessly embed YouTube videos on your website to enhance engagement and showcase content.

If your website runs on [Bootstrap 5+](https://getbootstrap.com/docs/5.3/helpers/ratio/#example) and Solodev version 11.0.66 or higher, use the shortcode below. Otherwise, [click here](#youtube-embed---older-versions).

!!!Note:
If you need to check your Solodev version, go to the login page and locate the version number under the **log in** button.
!!!

## YouTube Embed - Newer Versions

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```embed_link_id``` | (Required) The YouTube [video ID](#video-id).
```ratio``` | (Optional) Aspect ratio of the video. (Default: 16x9).
```id``` | (Optional) Custom HTML ID for the element.
```class``` | (Optional) Custom HTML classes for styling.
```title``` | (Optional) Video title for accessibility (ADA compliance).
```allowfullscreen``` | (Optional) Set to false if you don't want to allow the embedded video or content to be viewed in full-screen mode. (Default: allowfullscreen).

**Shortcode:**

```js
[youtube_embed embed_link_id="5BNPeFHU7QQ"]
```

**Example:**

```js
[youtube_embed embed_link_id="5BNPeFHU7QQ" ratio="4x3" id="my-id" class="my-class" title="Youtube Video" allowfullscreen="false"]
```

## YouTube Embed - Older Versions

The YouTube video shortcode has two attributes, one required and one optional, listed below.

**Attributes:**

**Attributes** | **Description** 
:--- | ---
```id``` | (Required) Specify the YouTube [video id](#video-id).
```aspect_ratio``` | (Optional) Specify the YouTube video aspect ratio. Default is 16by9. 

**Shortcode:** 
 
```js
[youtube id="5BNPeFHU7QQ"]
```

**Example:** 
 
```js
[youtube id="5BNPeFHU7QQ" aspect_ratio="4by3"]
```

## Video ID 

To obtain the video id: 
 
1. Browse to the YouTube page where your video is hosted.

2. Click the Share button on the right just below the video. 

3. Select the Embed Link and copy the video's YouTube ID. For example, if the link reads `https://www.youtube.com/embed/5BNPeFHU7QQ`, you only need to copy the **5BNPeFHU7QQ** after the forward slash. 

4. Insert the shortcode at the appropriate place in the tpl or html file associated with your page. 
```js
[youtube id="5BNPeFHU7QQ"]
```

5. Click <span class="text-blue">Publish</span>. 

!!!Note: 
In terms of the best practices, we don't recommend uploading any videos to the CMS due to file size and playback performance. For alternate streaming options such as Wowza, Vimeo, or Wistia, please [contact us](https://www.solodev.com/contact/). 
!!!