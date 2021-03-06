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
    $('.section_save').click (e) ->
      e.preventDefault()
      form = $(this).closest('form')
      tab = $(this).closest('.section-tab')
      $.ajax(
        type: 'PATCH'
        url: form.attr('action')
        data: form.serialize() + '&ajax'
      ).done (operation) ->
        e = if operation.status then tab.find('.status.alert-success') \
          else tab.find('.status.alert-danger')
        e.fadeIn()
        setTimeout (-> e.fadeOut()), 1500
