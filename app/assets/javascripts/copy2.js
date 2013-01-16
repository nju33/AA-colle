$(function() {
  $('.copy-button').zclip({
    path: 'ZeroClipboard.swf',
    copy: function() {return $('#aa_' + $(this).attr('id')).text(); },
    afterCopy: function() {
      $(this).css("color", "rgba(58, 171, 158, .55)");
    }
  });
});
