$ ->

  getRoute = (title) ->
    route = title
    for d in diacrictis
      route = route.replace(d[1], d[0])
    route = route.replace(/[^a-zA-Z0-9\/ ]/g, '')
    route = route.replace(/\s{1,}/g, '-')
    "#{route.toLowerCase()}.html"

  if $('#page_new').length
    $('#page_name').bind 'keyup', ->
      name = $('#page_name').val()
      route = getRoute(name)
      $('#page_route').val route

  $('.section_content').wysihtml5() if $('#sections_container').length
