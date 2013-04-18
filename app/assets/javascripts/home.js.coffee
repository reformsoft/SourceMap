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


loadServices = (url, isBack) -> 
	# don't push anything or do anything for that matter!
	if priorPushUrl == url && !isBack
		return
		
	priorPushUrl = url
		
	deleteOverlays()
	
	if !isBack
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
		
	loadServices $(this).attr('href'), false

	$(".category, .goto").click ->
		loadServices $(this).attr('href'), false
		return false
		
	#$("#more_overlay").dialog
#		autoOpen: false
#		show:
#			effect: "blind"
#			duration: 500
#		hide:
#			effect: "blind"
#			duration: 500
		
		
	$("#more").click ->
		# show view here
		$.ajax
			cache: false
			url: "/more"
			dataType: "html"
			success: (e) ->
				$("#more_overlay").content(e).dialog("open")
			error: (e) ->
				alert(e)
				
		return false

	$("#searchbox").keydown (e) ->
		if e.which == 13
			deleteOverlays()
			url = '?term=' + $(this).val()
			window.history.pushState path: url, '', url
			loadServices url, false
			return true
			
	$(window).bind 'popstate', (e) ->
		state = e.originalEvent.state
		if state
			loadServices state.path, true

	return true