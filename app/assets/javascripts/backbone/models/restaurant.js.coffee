class MapTap.Models.Restaurant extends Backbone.Model
  paramRoot: 'restaurant'

  defaults:
    name: null
    keywords: null

class MapTap.Collections.RestaurantsCollection extends Backbone.Collection
  model: MapTap.Models.Restaurant
  url: '/services'
