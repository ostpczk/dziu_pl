# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("a[data-remote]").on "ajax:success", (event) ->
    data = event.detail[0]
    scoreId = "score-" + data.id
    document.getElementById(scoreId).innerHTML = data.score

$ ->
  $('#body_text').click ->
    $('.shoutbox-unveil').slideDown()
    return
