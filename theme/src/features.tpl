{% import 'g.tpl' %}
{% include '_css.tpl' %}
{% include '_header.tpl' %}

<section id="{{meta.slug}}" class="segment-wrapper">
  <header class="container">
    <h2 class="section-heading">
      <span sup-widget-text
            default="{{_('Title')}}"
            ng-model="meta.title"></span>
    </h2>
    <hr class="divider">
  </header>
  <div class="container">
    <div class="row"
         sup-widget-series
         default="{{[
            {
              'title': _('Service Title'),
              'caption': _('Click here to edit the service.'),
              'src': theme_url+'/styles/f1.png'
            },
            {
              'title': _('Service Title'),
              'caption': _('Click here to edit the service.'),
              'src': theme_url+'/styles/f2.png'
            },
            {
              'title': _('Service Title'),
              'caption': _('Click here to edit the service.'),
              'src': theme_url+'/styles/f3.png'
            }
         ]}}"
         ng-model="meta.series">

      <div class="col-md-3 col-sm-6 text-center"
           ng-repeat="item in meta.series">
        <div class="service-box"
             series-item>
          <figure>
            <img ng-src="{{theme_url}}/styles/trans.png"
                 class="img-responsive thumbnail-img"
                 style="{{item.src|bg_img}}" />
          </figure>
          <h3 class="text-nowrap">
            {{item.title}}
          </h3>
          <p class="text-muted text-clamp-3">
            {{item.caption}}
          </p>
        </div>
      </div>

      <div class="col-md-3 col-sm-6 text-center">
        <div class="service-box"
             series-item-create>
          <figure>
            <img ng-src="{{theme_url}}/styles/trans.png"
                 class="img-responsive thumbnail-img"
                 style="{{g.add_img|bg_img}}" />
          </figure>
          <h3 class="text-nowrap">
            {{_('Create New Service')}}
          </h3>
          <p class="text-muted text-clamp-3">
            {{_('Click here add a new service.')}}
          </p>
        </div>
      </div>

    </div>
  </div>
</section>
