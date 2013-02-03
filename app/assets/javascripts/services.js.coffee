# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

data = 3242:
  X: 49.457637
  Y: -2.58

markersArray = []
map = ''

deleteOverlays = ->
  if markersArray
    for i of markersArray
      markersArray[i].setMap null
    markersArray.length = 0

addMarker = (location, name) ->
  marker = new google.maps.Marker(
    position: location
    map: map
    title: name
    )
  markersArray.push marker

addMarkers = (e) ->
  for value in e
    myLatlng = new google.maps.LatLng(value.lat, value.lng)
    addMarker myLatlng, value.name

loadServices = (url) -> 
  $.ajax
      url: url
      dataType: "json"
      beforeSend: (e) ->
        $("#loading").show()

      success: (e) ->
        addMarkers e

      complete: (e) ->
        $("#loading").hide()

      error: (e) ->
        alert e

$ ->
  myOptions =
    center: new google.maps.LatLng(49.457637, -2.580414)
    zoom: 12
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById("map_canvas"), myOptions)

  loadServices ''

  $(".category").click ->
    deleteOverlays()
    url = $(this).attr('href')
    window.history.pushState path: url, '', url 
    loadServices url
    false

  $(".goto").click ->
    id = parseInt($(this).attr("id"))
    r = data[id]
    
    # with the data we've got the X/Y, so using the map
    # zoom and go to that point
    map.panTo new google.maps.LatLng(r.X, r.Y)
    map.setZoom 18

  $(".info").click ->
    
    # show a dialog with all info
    $.ajax
      url: "/map/types"
      beforeSend: (xhr) ->
        $.blockUI {}

      
      #opoh rara
      success: (data) ->
        $.unblockUI()

      error: ->
        $.unblockUI()


