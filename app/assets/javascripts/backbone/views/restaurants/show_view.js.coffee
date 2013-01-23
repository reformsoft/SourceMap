MapTap.Views.Restaurants ||= {}

class MapTap.Views.Restaurants.ShowView extends Backbone.View
  template: JST["backbone/templates/restaurants/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
