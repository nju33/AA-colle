$(function(){
  $(".copy_button").zclip ({
    //var $self = $(this);
    //var $aa_number = $self.parent()
                         // .parent()
                          //.attr("id");
    //var $aa = $("." + $aa_number);
    //beforeCopy: function() {
    //},
    path: 'ZeroClipboard.swf',
    copy: $.text(),
    afterCopy: function() {
      $self.text("コピーしました。")
        .css("color", "#de381b");
    }
  });
});
