# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

data = 3242:
  X: 49.457637
  Y: -2.58

markersArray = []
map = ''
infoWindow = ''

deleteOverlays = ->
  if markersArray
    for i of markersArray
      markersArray[i].setMap null
    markersArray.length = 0

addMarker = (location, name, id) ->
  marker = new google.maps.Marker(
    position: location
    map: map
    title: name
    )

  google.maps.event.addListener marker, 'click', ->
   $.ajax
      url: "home/" + id
      dataType: "html"
      success: (e) ->
        infoWindow.content = e
        infoWindow.open map, marker
      error: (e) ->
        alert e
    

  markersArray.push marker

addMarkers = (e) ->
  for value in e
    myLatlng = new google.maps.LatLng(value.lat, value.lng)
    addMarker myLatlng, value.name, value.id

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

  google.maps.event.addListener map, 'click', ->
    infoWindow.close()

  infoWindow = new google.maps.InfoWindow content: ""

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


