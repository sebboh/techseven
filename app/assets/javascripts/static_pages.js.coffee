# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('.static_pages.home').ready ->
  $('#title').mouseenter((e) ->
    $.each(
      $('#title > h1 > span'), 
      (index, letter) ->
        diff = $(letter).attr('data-pos-new') - $(letter).attr('data-pos-base')
        move = "+=" + diff * 120 + "px"
        if (diff != 0)
          $(letter).animate(
            {"left": move},
            1000)
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
    $.each(
      $('#title > h1 > span'), 
      (index, letter) ->
        diff = $(letter).attr('data-pos-new') - $(letter).attr('data-pos-base')
        move = "-=" + diff * 120 + "px"
        if (diff != 0)
          $(letter).animate(
            {"left": move},
            1000);
        else
          $(letter).animate(
            {"left": "-=50px"},
            500);
          $(letter).animate(
            {"left": "+=50px"},
            500);
    )
  )