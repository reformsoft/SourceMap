data = 3242:
  X: 49.457637
  Y: -2.58

$ ->
  myOptions =
    center: new google.maps.LatLng(49.457637, -2.580414)
    zoom: 12
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById("map_canvas"), myOptions)
  $(".category").click ->
    url = $(this).attr('href')
    type = $(this).data("type")

    window.history.pushState path: url, '', url 
    $.ajax
      url: url
      dataType: "json"
      beforeSend: (e) ->
        $("#loading").show()

      success: (e) ->
        $.each e, (key, value) ->
          myLatlng = new google.maps.LatLng(value.lat, value.lng)
          marker = new google.maps.Marker(
            position: myLatlng
            map: map
            title: "Hello World!"
          )


      complete: (e) ->
        $("#loading").hide()

      error: (e) ->
        alert e

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


