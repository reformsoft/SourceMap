class MapTap.Routers.RestaurantsRouter extends Backbone.Router
  initialize: (options) ->
    @restaurants = new MapTap.Collections.RestaurantsCollection()
    @restaurants.reset options.restaurants

  routes:
    "new"      : "newRestaurant"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newRestaurant: ->
    @view = new MapTap.Views.Restaurants.NewView(collection: @restaurants)
    $("#restaurants").html(@view.render().el)

  index: ->
    @view = new MapTap.Views.Restaurants.IndexView(restaurants: @restaurants)
    $("#restaurants").html(@view.render().el)

  show: (id) ->
    restaurant = @restaurants.get(id)

    @view = new MapTap.Views.Restaurants.ShowView(model: restaurant)
    $("#restaurants").html(@view.render().el)

  edit: (id) ->
    restaurant = @restaurants.get(id)

    @view = new MapTap.Views.Restaurants.EditView(model: restaurant)
    $("#restaurants").html(@view.render().el)
