[entry]
  <h1><strong>{{event_title}}</strong></h1>

  <div class="d-flex align-items-center justify-content-between">
    <p class="mb-0 mt-3">
      <span class="text-primary"><strong>[is_set value={{post_author}}]By David Smith[/is_set]</strong> [is_set value={{post_author}}]</span>
      <span class="ps-2">[/is_set][print_date format="F d, Y" timestamp="{{start_time}}"][is_set value={{post_author}}]</span>[/is_set]
    </p>
    <ul class="list-unstyled d-flex justify-content-end mb-0">
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-brands me-2 fa-twitter"></span><span class="sr-only">Twitter</span></a></li>
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-brands me-2 fa-facebook-f"></span><span class="sr-only">Facebook</span></a></li>
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-brands me-2 fa-linkedin-in"></span><span class="sr-only">Linkedin</span></a></li>
      <li><a href="" class="text-dark text-decoration-none"><span class="fa-fw fa-regular fa-envelope"></span><span class="sr-only">Email</span></a></li>
    </ul>
  </div>

  <div class="mt-3">

    [is_set value={{post_image_alt}}]
      <img alt="{{post_image_alt}}" src="[get_asset_file_url id='{{post_image}}']" class="w-100 my-4">
    [/is_set]
    [is_empty value={{post_image_alt}}]
      <img alt="{{event_title}}" src="[get_asset_file_url id='{{post_image}}']" class="w-100 my-4">
    [/is_empty]

    {{post_content}}

  </div>
[/entry]