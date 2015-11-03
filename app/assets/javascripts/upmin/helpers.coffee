$(document).ajaxComplete (event, xhr, settings) ->
  messages = JSON.parse(xhr.getResponseHeader('X-Messages') || {})
  $('.alert').remove()
  $.each messages, (k, v) ->
    $('.container').eq(1).prepend($('<div>').html(v).addClass('alert alert-' + k))

$(document).ajaxComplete (event, xhr, settings) ->
  a = xhr.getResponseHeader('X-Open')
  if a
    open(a, '_batched')
