# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('.tech').addClass("letter-black")
  $('#techseven-box').mouseenter((e) ->
    $.each(
      $('.box-letter'), 
      (index, letter) ->
        if ($(letter).attr('data-pos-new') == $(letter).attr('data-pos-base'))
          $(letter).css({
            '-webkit-transform' : 'rotate(-360deg)',
            '-moz-transform' : 'rotate(-360deg)',  
            '-ms-transform' : 'rotate(-360deg)',  
            '-o-transform' : 'rotate(-360deg)',  
            'transform' : 'rotate(-360deg)'
          })
        else
          $(letter).attr("id", "title" + $(letter).attr('data-pos-new'))
    )
    $('.tech').removeClass("letter-black")
    $('.chen').addClass("letter-black")
  )
  
  $('#techseven-box').mouseleave((e) ->
    $.each(
      $('.box-letter'), 
      (index, letter) ->
        if ($(letter).attr('data-pos-new') == $(letter).attr('data-pos-base'))
          $(letter).css({
            '-webkit-transform' : 'rotate(0deg)',
            '-moz-transform' : 'rotate(0deg)',  
            '-ms-transform' : 'rotate(0deg)',  
            '-o-transform' : 'rotate(0deg)',  
            'transform' : 'rotate(0deg)'
          })
        else
          $(letter).attr("id", "title" + $(letter).attr('data-pos-base'))
    )
    $('.chen').removeClass("letter-black")
    $('.tech').addClass("letter-black")
  )

$(document).ready(ready)
$(document).on('page:load', ready)