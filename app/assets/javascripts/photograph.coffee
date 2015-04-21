# onMapMouseleaveHandler = (event) ->
#   that = $(this)
#   that.on 'click', onMapClickHandler
#   that.off 'mouseleave', onMapMouseleaveHandler
#   that.find('iframe').css 'pointer-events', 'none'
#   return

# onMapClickHandler = (event) ->
#   that = $(this)
#   # Disable the click handler until the user leaves the map area
#   that.off 'click', onMapClickHandler
#   # Enable scrolling zoom
#   that.find('iframe').css 'pointer-events', 'auto'
#   # Handle the mouse leave event
#   that.on 'mouseleave', onMapMouseleaveHandler
#   return

# Enable map zooming with mouse scroll when the user clicks the map
# $('.map-container').on 'click', onMapClickHandler

# $('#previous')
# $('#next')

$(document).keydown (e) ->
  switch e.which
    when 37
      $("#previous")[0].click()
    when 39
      $("#next")[0].click()
    else
      return
    # exit this handler for other keys
  e.preventDefault()
  # prevent the default action (scroll / move caret)
  return

$ ->
  # Bind the swiperightHandler callback function to the swipe event on div.box
  # Callback function references the event target and adds the 'swiperight' class to it

  swiperightHandler = (event) ->
    $("#next")[0].click()
    $(event.target).addClass 'swiperight'
    return

  $('img').on 'swiperight', swiperightHandler
  return