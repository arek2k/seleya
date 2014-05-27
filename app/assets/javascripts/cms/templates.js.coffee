$ ->
 editor = ace.edit('ace_content');
 editor.setTheme('ace/theme/eclipse');
 editor.getSession().setMode('ace/mode/twig');

 $('#ace_save').click -> 
   $('#template_content').val(editor.getSession().getValue());
