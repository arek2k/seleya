$ ->
  if $('#ace_content').length
    editor = ace.edit('ace_content');
    editor.setTheme('ace/theme/eclipse');
    editor.getSession().setMode('ace/mode/twig');
    editor.getSession().setValue($('#template_content').val());

    $('#ace_save').click -> 
      $('#template_content').val(editor.getSession().getValue());
