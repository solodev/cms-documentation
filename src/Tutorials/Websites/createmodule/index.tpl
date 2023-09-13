<div class="my-5">
  <div class="container">
    <div class="text-center">
      <h2 class="display-5 fw-bolder"><strong>Blog</strong></h2>
      <p>Learn what's happening on the final frontier</p>
    </div>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-5 mt-4">
      [repeater id='1' display_type="news"]
        <div class="col mt-4">
          <div class="card rounded-5 shadow">
            [is_set value={{post_image_alt}} ]
              <img alt="{{post_image_alt}}" src="[get_asset_file_url id='{{post_image}}']" class="img-fluid rounded-top-5">
            [/is_set]
            [is_empty value={{post_image_alt}}]
              <img alt="{{event_title}}" src="[get_asset_file_url id='{{post_image}}']" class="img-fluid rounded-top-5">
            [/is_empty]
            <div class="card-body p-4">
              <p class="pt-1">[print_date format="F d, Y" timestamp="{{start_time}}"]</p>
              <h3 class="mt-3 fw-bolder"><strong>{{event_title}}</strong></h3>
              <a href="{{path}}" class="btn fs-6 btn-danger text-white my-3"><strong>Learn More</strong></a>
            </div>
          </div>
        </div>
      [/repeater] 
    </div>
  </div>
</div>