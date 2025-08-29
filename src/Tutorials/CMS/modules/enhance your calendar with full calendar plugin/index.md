Transform your basic calendar into a powerful, interactive scheduling tool with [FullCalendar](https://fullcalendar.io/). Whether you are managing events, appointments, or project timelines, FullCalendar provides the advanced functionality your users expect in a modern calendar interface.

## Before You Start

Make sure you have:

- A [Solodev CMS](/quickstart) installation
- A [Website](/workspace/websites/add-website/) set up in your workspace

!!!Note: 
For step-by-step instructions on adding a Calendar Module in your CMS, please visit [Calendar](/modules/calendar/).
!!!

## Step-by-Step Setup Guide

These steps will guide you through the process of installing the [Full Calendar Plugin](https://fullcalendar.io/) to your Calendar.

{% tabs %}

{% tab title="Step 1: Install the Calendar Module" %}

1. Navigate to Modules
<ul style="padding-left: 50px;">
  <li>In your CMS dashboard, click <strong>Modules</strong> in the left navigation menu</li>
  <li>Click the <strong>Add Module</strong> button</li>
</ul>

2. [Add the module](/workspace/modules/add-module/)
<ul style="padding-left: 50px;">
  <li>Give your calendar module a name</li>
  <li>Select from the three options:
    <ul>
      <li><strong>Datatable:</strong> Creates a simple data table structure</li>
      <li><strong>Module:</strong> Builds a custom module from scratch</li>
      <li><strong>Package:</strong> Installs a pre-built module from a zip file</li>
    </ul>
  </li>
  <li>For the purpose of this tutorial, select <strong>Package:</strong> and use this <a href="https://solodev-calendar.s3.us-east-1.amazonaws.com/releases/calendar-1.0.25.zip" style="display: inline-flex; align-items: center;">zip file <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#0488ce" style="margin-left: .4rem;"><path d="M2.75 14A1.75 1.75 0 0 1 1 12.25v-2.5a.75.75 0 0 1 1.5 0v2.5c0 .138.112.25.25.25h10.5a.25.25 0 0 0 .25-.25v-2.5a.75.75 0 0 1 1.5 0v2.5A1.75 1.75 0 0 1 13.25 14Z"></path><path d="M7.25 7.689V2a.75.75 0 0 1 1.5 0v5.689l1.97-1.969a.749.749 0 1 1 1.06 1.06l-3.25 3.25a.749.749 0 0 1-1.06 0L4.22 6.78a.749.749 0 1 1 1.06-1.06l1.97 1.969Z"></path></svg>.</a></li>
  <li>Click <span class="text-blue">Submit</span>.</li>
</ul>

<img src="/static/images/modules/calendar/add-calendar.jpg" alt="Add Calendar" style="width: 45%; margin-bottom: 20px;">

{% endtab %}

{% tab title="Step 2: Create Your Calendar Pages" %}

### Add Full Calendar Shortcode

1. [Create a code shortcodes file](/workspace/websites/folder/add-file/) if you don't already have one. Call it **shortcodes.php** and place it under `www > _ > php` (optional, but recommended).

2. Copy the following **FullCalendar** code and paste it into your shortcodes file.

```php shortcodes.php
<?php

namespace Website;

use Solodev\Services\Auth\JwtOneTimeToken;
use Solodev\Services\Shortcode\ShortcodeService;
use Solodev\Services\Shortcode\ShortcodeConfig;

class CustomShortcode extends ShortcodeService
{
    private JwtOneTimeToken $jwtOneTimeToken;
    
    public function __construct(
        ShortcodeConfig $config, 
        JwtOneTimeToken $jwtOneTimeToken,
    ) {
        $this->jwtOneTimeToken = $jwtOneTimeToken;
        parent::__construct($config);
    }

    //[js_full_calendar_includes_custom]
    /*
     * no atts - returns libraries for full calendar: http://fullcalendar.io/
     */
    function js_full_calendar_includes_custom($atts, $content = null)
    {
        notify_solodev_shortcode();

        $js_full_calendar_includes_custom = '<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.12.0/moment.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.8.0/fullcalendar.min.js"></script>
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.8.0/fullcalendar.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.8.0/fullcalendar.print.css" media="print">';

        return do_shortcode($js_full_calendar_includes_custom);
    }
    
    /*
     * [full_calendar_custom]
     */
    function full_calendar_custom($atts, $content = null)
    {
        $this->notify_solodev_shortcode();
        
        if (!isset($atts['calendar_id']))
            return $this->do_shortcode("Error: calendar_id is required. Where is the data coming from?");
        else
            $calendar_id = $atts['calendar_id'];
        
        $calendar_display_area_id = isset($atts['calendar_display_area_id']) ? $atts['calendar_display_area_id'] : "calendar_display";
        if (isset($atts['website_filter'])) $_POST['websiteFilter'] = $atts['website_filter'];
        
        //category_filter
        $category_filter_input_id = "";
        if (isset($GLOBALS["category_filter_input_id"]))
            $category_filter_input_id = $GLOBALS["category_filter_input_id"];
        if (isset($atts['category_filter_input_id']))
            $category_filter_input_id = $atts['category_filter_input_id'];
        
        //date_filter
        $date_filter_input_id = "";
        if (isset($GLOBALS["date_filter_input_id"]))
            $date_filter_input_id = $GLOBALS["date_filter_input_id"];
        if (isset($atts['date_filter_input_id']))
            $date_filter_input_id = $atts['date_filter_input_id'];
        
        //month_filter
        $month_filter_input_id = "";
        if (isset($GLOBALS["month_filter_input_id"]))
            $month_filter_input_id = $GLOBALS["month_filter_input_id"];
        if (isset($atts['month_filter_input_id']))
            $month_filter_input_id = $atts['month_filter_input_id'];
        
        $pull_mongo = isset($atts['mongo']) ? $atts['mongo'] : 0;
        
        if ($pull_mongo == 1) {
            $js_includes = "<script>
            $(document).ready(function () {
                $('#" . $calendar_display_area_id . "').fullCalendar({
                    loading: function (bool) {
                        if (bool) {
                            $('#calendar-loading').show();
                        } else {
                            $('#calendar-loading').hide();
                        }
                    },
                    customButtons: {
                        list: {
                            text: 'View as List',
                            click: function() {
                                window.location = 'list.stml';
                            }
                        }
                    }, 
                    header: {
                        left: 'title',
                        center: '',
                        right: 'list today prev,next '
                    }, 
                    events: function (start, end, timezone, callback) {
                        $.ajax({
                            url: (function(){
                                var qryString = '{\"\$and\":[{\"calendar_id\":" . $calendar_id . "},{\"entry_status\":\"publish\"},{\"\$or\":[{\"\$and\":[{\"start_time\":{\"\$gte\":'+start.unix()+'}},{\"start_time\":{\"\$lte\":'+end.unix()+'}}]},{\"\$and\":[{\"end_time\":{\"\$gte\":'+start.unix()+'}},{\"end_time\":{\"\$lte\":'+end.unix()+'}}]}]}';";
            
            if ($category_filter_input_id != "") {
                $js_includes .= "
                                if($('#" . $category_filter_input_id . "').val().trim() != ''){
                                    qryString += ',{\"datatable_category_id\":'+$('#" . $category_filter_input_id . "').val()+'}';
                                }";
            }
            if (!empty($atts['where'])) {
                $js_includes .= "
                                qryString += ',{\"" . $atts['where'] . "\":1}';";
            }
            $js_includes .= "
                                qryString += ']}';
                                var jsonURL = '/api/api.php/search/solodev_view?rows=1000&qry='+qryString+'&nonce=" . $this->jwtOneTimeToken->create() . "&orderStr=start_time&orderDir=desc';
                                return jsonURL;
                            })(),
                            dataType: 'json',
                            data: {
                                start: start.unix(), 
                                end: end.unix()
                            },
                            success: function (data) {
                                var events = [];
                                $(data.solodev_view).each(function () {
                                    var eventData = $(this)[0];
                                    var startTime = parseInt(eventData.start_time, 10) * 1000;
                                    var endTime = eventData.end_time ? 
                                        parseInt(eventData.end_time, 10) * 1000 : 
                                        startTime + (60 * 60 * 1000);
                                    
                                    events.push({
                                        end: moment(endTime),
                                        id: eventData.calendar_entry_id,
                                        start: moment(startTime),
                                        title: eventData.name,
                                        url: eventData.url,
                                        className: eventData.datatable_category_name
                                    });
                                });
                                callback(events);
                            },
                            error: function(xhr, status, error) {
                                console.error('MongoDB Calendar Error:', status, error);
                                callback([]);
                            }
                        });
                    }
                });
            });
        </script>";
        } else {
            $js_includes = "<script>
            $(document).ready(function () {
                $('#" . $calendar_display_area_id . "').fullCalendar({
                    customButtons: {
                        list: {
                            text: 'View as List',
                            click: function() {
                                window.location = 'list.stml';
                            }
                        }
                    },
                    header: {
                        left: 'title',
                        center: '',
                        right: 'list today prev,next '
                    }, 
                    events: function (start, end, timezone, callback) {
                        // Build the query string for non-MongoDB
                        var qryString = '{\"calendar_id\":" . $calendar_id . ",\"entry_status\":\"publish\"';";

                        if ($category_filter_input_id != "") {
                            $js_includes .= "
                                            var categoryFilter = $('#" . $category_filter_input_id . "').val();
                                            if (categoryFilter && categoryFilter.trim() !== '') {
                                                qryString += ',\"datatable_category_id\":' + categoryFilter;
                                            }";
                        }

                        $js_includes .= "
                                            qryString += '}';
                                            var jsonURL = '/api/api.php/search/solodev_view?rows=1000&qry='+qryString+'&nonce=" . $this->jwtOneTimeToken->create() . "&orderStr=start_time&orderDir=desc';
                                            
                                            $.ajax({
                                                url: jsonURL,
                                                dataType: 'json',
                                                data: {
                                                    start: start.unix(),
                                                    end: end.unix()";

                    if (isset($atts['where'])) {
                        $js_includes .= ",
                                            whereStr: '" . str_replace("'", '"', $atts['where']) . "'";
                    }

                    $js_includes .= "
                        },
                        success: function (data) {
                                var events = [];
                                // Handle both possible response structures
                                var eventList = data.solodev_view || data.rows || [];
                                
                                $(eventList).each(function () {
                                    var eventData = $(this)[0];
                                    
                                    // Handle missing end_time by defaulting to start_time + 1 hour
                                    var startTime = parseInt(eventData.start_time, 10) * 1000;
                                    var endTime = eventData.end_time ? 
                                        parseInt(eventData.end_time, 10) * 1000 : 
                                        startTime + (60 * 60 * 1000);
                                    
                                    events.push({
                                        end: moment(endTime),
                                        id: eventData.calendar_entry_id,
                                        start: moment(startTime),
                                        title: eventData.event_title || eventData.name,
                                        url: eventData.path || eventData.url
                                    });
                                });
                                callback(events);
                            },
                            error: function(xhr, status, error) {
                                console.error('Non-MongoDB Calendar Error:', status, error);
                                callback([]);
                            }
                        });
                    }
                });
            });
        </script>";
        }
        
        if ($category_filter_input_id != "") {
            $js_includes .= "
            <script>
            $(document).ready(function() {
                $('#" . $category_filter_input_id . "').change(function () {
                    $('#" . $calendar_display_area_id . "').fullCalendar('refetchEvents');
                    $('#" . $calendar_display_area_id . "').fullCalendar('rerenderEvents');
                    window.location = '?category_filter=' + $('#" . $category_filter_input_id . "').val();
                });
                
                var URLCatFilt = Solodev_GetURLParameter('category_filter');
                if (typeof URLCatFilt  == 'undefined') URLCatFilt = '';
                
                $('#" . $category_filter_input_id . "').val(URLCatFilt);
            });
            </script>";
        }
        
        $js_includes .= "
        <script>
        $(document).ready(function() {
            ";
        
        if ($date_filter_input_id != "" && $month_filter_input_id != "") {
            $js_includes .= "
            var nYear = new Date().getFullYear();
            var nMonth = new Date().getMonth();
            var nNextYear = nYear + 1;
            
            $('#" . $month_filter_input_id . "').val(nMonth+1);
            $('#" . $date_filter_input_id . "').val(nYear);
            
            $('#" . $date_filter_input_id . ", #" . $month_filter_input_id . "').on('change', function () {
                nYear = ($('#" . $date_filter_input_id . "').val() !== 0) ? $('#" . $date_filter_input_id . "').val() : nYear;
                nMonth = ($('#" . $month_filter_input_id . "').val() !== 0) ? $('#" . $month_filter_input_id . "').val() - 1 : nMonth;
                var newDate = new Date(nYear, nMonth, 1);
                $('#" . $calendar_display_area_id . "').fullCalendar('gotoDate', newDate);
            });
            
            $('#" . $calendar_display_area_id . "').fullCalendar('refetchEvents');
            $('#" . $calendar_display_area_id . "').fullCalendar('rerenderEvents');";
        }
        
        $js_includes .= "
        });
        
        function Solodev_GetURLParameter(sParam) {
            var sPageURL = window.location.search.substring(1);
            var sURLVariables = sPageURL.split('&');
            for (var i = 0; i < sURLVariables.length; i++) {
                var sParameterName = sURLVariables[i].split('=');
                if (sParameterName[0] == sParam) {
                    return sParameterName[1];
                }
            }
        }
        </script>";
        
        unset($_POST['websiteFilter']);
        return $this->do_shortcode($js_includes);
    }
?>
```

3. Navigate to your main website screen and click **Update Website** on the right-hand side.

4. Access the shortcodes settings under the **Advanced** section, click **Browse** next to **Custom Shortcodes File**.

5. Choose the `shortcodes.php` file you created. This tells your CMS to start using the shortcodes defined in this file.

6. Click <span class="text-blue">**Submit**</span>.

### Create Your Full Calendar View

To display your enhanced calendar, you'll need to create a dedicated page that incorporates the **FullCalendar** functionality.

1. Navigate to `web files > content` and [create a new code file](/workspace/websites/folder/add-file/).

2. Add the calendar HTML code using the example template provided below.

```html calendar.tpl
[js_full_calendar_includes_custom]

<div class="container">
  <div class="row text-center justify-content-center">
    <div class="col-lg-8 col-xxl-7">
      <h1>Calendar</h1>
      <p class="fs-5">The Pro Theme Calendar module lets you customize your events with a clean, visual organization and update your published schedule with total ease.</p>
    </div>
  </div>
	<div id="calendar_display"></div>
</div>

[full_calendar_custom calendar_id="" calendar_display_area_id="calendar_display" where="start_time asc"]
```

!!!warning Important!
You need to add the ID number of your calendar module to the repeater shortcode within the `calendar_id=""` attribute.
!!!

<!-- {{{event_title}}} -->

3. [Create a page](/workspace/websites/folder/add-page) in your calendar folder and name it `index.stml`.

4. [Insert your calendar file](/workspace/websites/page/#add-a-file-to-page) into the page you just created.

!!!Note:
To learn more about shortcodes and how they work, visit our [shortcodes](/shortcodes) documentation.
!!!

### Create a List View Alternative

Provide users with a traditional list view option alongside your interactive calendar by creating a complementary page.

1. Go to the folder in `web files` where you saved your calendar file and [create a new code file](/workspace/websites/folder/add-file/) in the same directory.

2. Add the calendar list HTML code using the example template provided below.

```html list.tpl
<div class="container">
  <h1 class="text-center">Calendar</h1>
  <div class="mt-5">
    <a href="">View as Calendar</a>
    <div class="row border-lg-bottom py-4">
        [repeater id="" order="start_time desc"]
            <div class="col-lg-3">
            [is_set value="{{calendar_image}}"]	
                <img alt="{{event_title}}" src="[get_asset_file_url id='{{calendar_image}}']" class="img-fluid img-thumbnail">
            [/is_set]
            [is_empty value="{{calendar_image}}"]
                <img alt="{{event_title}}" class="img-fluid img-thumbnail" src="/_/images/default-2.jpg" />
            [/is_empty]
            </div>
            <div class="col-lg-9 ps-lg-3 mt-4 mt-lg-0">
            <h2><a aria-label="Read more" href="{{path}}">{{event_title}}</a></h2>
            <p class="text-muted fs-6">[print_date format="M. d, Y g:i a" timestamp="{{start_time}}"]</p>
            <p>{{calendar_intro}}</p>
            <p><a aria-label="Read more" href="{{path}}"><strong>Read More</strong></a></p>
            </div>
        [/repeater]
    </div>
  </div>
</div>
```

!!!warning Important!
You need to add your **calendar module's ID** number to the `id=""` attribute on the repeater shortcode and the path of your calendar view page to the `href=""` attribute in the **View as Calendar** link.
!!!

3. [Create a page](/workspace/websites/folder/add-page) in your calendar folder and name it exactly `list.stml`.

4. [Insert your calendar list file](/workspace/websites/page/#add-a-file-to-page) into the page you just created.

You now have both an interactive FullCalendar view and a traditional list view, giving your users flexible options for browsing events. 

### Add Filters to Your Calendar View - Optional

Enhance your calendar's usability by adding filter options that allow users to quickly find specific events. You can implement month, year, and category filters to help users navigate your calendar content more efficiently.

**Available Filter Options**

Your calendar supports three types of filters:

- **Month Dropdown** - Filter events by specific months
- **Year Dropdown** - Navigate between different years
- **Category Dropdown** - Filter events by predefined categories

!!!warning Important!
To use the Category Dropdown filter, you must first add a category group to your calendar module.
!!!

**Implementation Steps**

1. Add the following HTML code to the top of your file:

```js
<div class="container mb-5">
  <div class="row">
    <div class="col-md-3 form-group">
      [month_filter class="form-control"]
    </div>
    <div class="col-md-3 form-group">
      [date_filter years="2023-2025" all_value="" default_filters=0 label="Year" year_format="simple" show_all_option="0" class="form-control"]
    </div>
    <div class="col-md-3 form-group">
      [category_filter_custom category_group_id="" calendar_id="" class="form-control"]
    </div>
  </div>
</div>
```

!!!warning Important!
Configure the `[category_filter_custom]` shortcode by adding your Category Group ID to the `category_group_id` attribute and your calendar module ID to the `calendar_id=""` attribute.
!!!

2. **For Category Filter users:** If you're implementing the category filter, add the attribute `category_filter_input_id="category_filter"` to your `full_calendar_custom` shortcode.

You will also need to add the following code to the `shortcode.php` file.

```js
  /* [category_filter_custom]
  */
  function category_filter_custom($atts, $content = null)
  {
    $this->notify_solodev_shortcode();
        
    // Fix: Check for both 'id' and 'category_group_id' attributes
    if (!isset($atts['id']) && !isset($atts['category_group_id']))
        return $this->do_shortcode("Error: id or category_group_id is required.");
    
    $datatable_category_group_id = isset($atts['category_group_id']) ? $atts['category_group_id'] : $atts['id'];
    
    $class = isset($atts['class']) ? $atts['class'] : "form-control";
    $parent_category_id = isset($atts['parent_category_id']) ? $atts['parent_category_id'] : "0"; // Changed from "form-control" to "0"
    $sort = isset($atts['sort']) ? $atts['sort'] : "title asc";
    $GLOBALS["category_filter_input_id"] = "category_filter";
        
    $output = 'Category <select class="' . $class . '" id="category_filter" name="category_filter">
    <option value="">All</option>';
        
    $cats = $this->datatableManager->getDatatableCategories("", "object_id = '" . $datatable_category_group_id . "' AND parent_category_id = '" . $parent_category_id . "'", "" . $sort . "");
    foreach ($cats as $cat) {
      $output .= '<option value="' . $cat->datatable_category_id . '" class="font-weight-bold">' . $cat->title . '</option>';
      
      $kittens = $this->datatableManager->getDatatableCategories("", "parent_category_id = '" . $cat->datatable_category_id . "'", "title ASC");
      if (!empty($kittens)) {
        foreach ($kittens as $kitten) {
          $output .= '<option value="' . $kitten->datatable_category_id . '">- ' . $kitten->title . '</option>';
          
          $sub_kittens = $this->datatableManager->getDatatableCategories("", "parent_category_id = '" . $kitten->datatable_category_id . "'", "title ASC");
          if (!empty($sub_kittens)) {
            foreach ($sub_kittens as $sub_kitten) {
              $output .= '<option value="' . $sub_kitten->datatable_category_id . '">&nbsp;&nbsp;&nbsp;- ' . $sub_kitten->title . '</option>';
              
              $sub_sub_kittens = $this->datatableManager->getDatatableCategories("", "parent_category_id = '" . $sub_kitten->datatable_category_id . "'", "title ASC");
              if (!empty($sub_sub_kittens)) {
                foreach ($sub_sub_kittens as $sub_sub_kitten) {
                  $output .= '<option value="' . $sub_sub_kitten->datatable_category_id . '">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- ' . $sub_sub_kitten->title . '</option>';
                }
              }
            }
          }
        }
      }
    }
        
    $output .= '</select>';

    $output .= '
      <script>
      $(document).ready(function() {
          $("#category_filter").change(function() {
              // Refresh the calendar when category changes
              $("#' . (isset($GLOBALS["calendar_display_area_id"]) ? $GLOBALS["calendar_display_area_id"] : "calendar_display") . '").fullCalendar("refetchEvents");
          });
      });
      </script>';
    
    return $output;
  }
```

{% endtab %}

{% tab title="Step 3: Create Your Event Detail Page" %}

1. Navigate to the folder in `web files` where you saved your calendar file and [create a new code file](/workspace/websites/folder/add-file/) in the same directory. This file will serve as the template to display individual calendar entry details.

2. Add the HTML code for your calendar detail layout using the example code provided below.

```html detail.tpl
<div class="container">
  [entry]
    <article class="row justify-content-between mt-3">
      <div class="col-md-7">
        <h2 class="border-bottom border-primary border-2 mt-2">Upcoming events</h2>
        <div class="mt-4 pe-7">
          <p>{{calendar_info}}</p>
        </div>
      
        <h3>Dates</h3>
        <p>[print_date format="M. d, Y" timestamp="{{start_time}}"] <br>[print_date format="g:i a" timestamp="{{start_time}}"]</p>
      
        <h3>Location</h3>
        <p>{{calendar_address}} {{calendar_address_suite}} <br> {{calendar_address_city}}, {{calendar_address_state}} {{calendar_address_zip_code}}</p>
      </div>
      <div class="col-md-4">
        <img src="/_/images/logo.jpg" alt="Logo" class="img-fluid">
      </div>
    </article>
  [/entry]
</div>
```

3. [Create a page](/workspace/websites/folder/add-page) in your calendar folder to display individual calendar entry details.

4. [Insert your calendar detail file](/workspace/websites/page/#add-a-file-to-page) into the page you want to display the entries on.

5. Map your Module to your page:
<ul style="padding-left: 50px;">
  <li>In your Module, click <strong>Modify</strong></li>
  <li>Under <strong>Websites Properties</strong>
    <ul style="padding-left: 50px;">
      <li>On <strong>Detail Page Template</strong>, select the .stml file for your detail page</li>
      <li>Under <strong>Detail Folder Location</strong>, select the folder where your detail file is located</li>
    </ul>
  </li>
  <li>Click <span class="text-blue">Submit</span></li>
</ul>

!!!warning Important!
If you already have entries added to your module, you will need to resave them to generate the path. To do this, go to **Modify**, scroll to Advanced, check the **Resave All Entries** option., and then click <span class="text-blue">Submit</span>
!!!

6. Click [Add Entry](/workspace/modules/module/add-entry/) to begin adding content to your module.

7. Go to your website and refresh the page to see your calendar module in action.

<img src="/static/images/modules/calendar/calendar-page.jpg" alt="Calendar" style="width: 90%; margin-bottom: 20px;">

{% endtab %}

{% endtabs %}

## Support

Support for Calendar Module is handled directly through Solodev's global help desk. For more information regarding support queries, go to [www.solodev.com](https://www.solodev.com/).

<style>
  .dark .pluggable .rounded-t a.text-gray-500 {
    color: #fff;
  }
</style>