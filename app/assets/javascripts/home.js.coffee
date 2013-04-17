# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

data = 3242:
	X: 49.457637
	Y: -2.58

markersArray = []
map = ''
infoWindow = ''
priorPushUrl = ''

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
			cache: false
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

	if markersArray
		if markersArray.length == 1
			google.maps.event.trigger(markersArray[0], 'click');


loadServices = (url) -> 
	# don't push anything or do anything for that matter!
	if priorPushUrl == url
		return
		
	priorPushUrl = url
		
	deleteOverlays()
	window.history.pushState path: url, '', url
	
	$.ajax
		cache: false
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

	infoWindow = new google.maps.InfoWindow content: ""

	google.maps.event.addListener map, 'click', ->
		infoWindow.close()
		
	loadServices $(this).attr('href')

	$(".category, .goto").click ->
		loadServices $(this).attr('href')
		return false

	$("#searchbox").keydown (e) ->
		if e.which == 13
			deleteOverlays()
			url = '?term=' + $(this).val()
			window.history.pushState path: url, '', url
			loadServices url
			return true
			
	$(window).bind 'popstate', (e) ->
		state = e.originalEvent.state
		if state
			loadServices state.path

	return true