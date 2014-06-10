$ ->
  if action 'pages/new'
    getRoute = (name) ->
      route = name
      for d in diacrictis
        route = route.replace(d[1], d[0])
      route = route.replace(/[^a-zA-Z0-9\/ ]/g, '')
      route = route.replace(/\s{1,}/g, '-')
      "#{route.toLowerCase()}.html"

    $('#page_name').bind 'keyup', ->
      name = $('#page_name').val()
      route = getRoute(name)
      $('#page_route').val route


  if action 'sections'
    $('.section_content').wysihtml5()
    $('#section_save').click (e) ->
      e.preventDefault()
      form = $('#section_save').closest('form')
      $.ajax(
        type: 'PUT'
        url: form.attr('action')
        data: form.serialize() + '&ajax'
      ).done (status) ->
          alert 'ok' if status
