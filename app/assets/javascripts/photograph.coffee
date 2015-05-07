$('html').on 'swiperight', ->
  $("#next")[0].click()
  return

$('html').on 'swipeleft', ->
  $("#previous")[0].click()
  return

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
