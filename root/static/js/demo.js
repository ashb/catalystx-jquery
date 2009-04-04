$(function (){
  function json_on_click(e) {

    $.get('ajax_json', function(data) {
      $('#json_content').text(data);
    }, 'text');
    return false;
  }

  function html_on_click(e) {

    $('#html_content').load('ajax_html');
    return false;
  }
  $('#json_content a').bind('click', json_on_click);
  $('#html_content a').bind('click', html_on_click);
});
