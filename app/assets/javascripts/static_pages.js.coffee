# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('.static_pages.home').ready ->
  animating1 = false
  animating2 = false
  $('#title').mouseenter((e) ->
    if (!animating1)
      animating1 = true
      $.each(
        $('#title > h1 > span'), 
        (index, letter) ->
          diff = $(letter).attr('data-pos-new') - $(letter).attr('data-pos-base')
          move = "+=" + diff * 120 + "px"
          if (diff != 0)
            $(letter).animate(
              {"left": move},
              1000,"swing", ->
                animating1 = false)
          else
            $(letter).animate(
              {"left": "-=50px"},
              500)
            $(letter).animate(
              {"left": "+=50px"},
              500)
      )
  )
  
  $('#title').mouseleave((e) ->
    if (!animating2)
      animating2 = true
      $.each(
        $('#title > h1 > span'), 
        (index, letter) ->
          diff = $(letter).attr('data-pos-new') - $(letter).attr('data-pos-base')
          move = "-=" + diff * 120 + "px"
          if (diff != 0)
            $(letter).animate(
              {"left": move},
              1000,"swing", ->
                animating2 = false);
          else
            $(letter).animate(
              {"left": "-=50px"},
              500);
            $(letter).animate(
              {"left": "+=50px"},
              500);
      )
  )