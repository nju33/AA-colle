$(function(){
  $('.copy-button').on('click', function(){
  var $self = $(this);
  var $aa_number = $self.parent()
    .parent()
    .attr("id");
  var $aa = $("." + $aa_number);
  if($self.text() == "クリップボードにコピー"){
    $self.text("しばらくお待ちください");
    setTimeout(function(){
      $self.text("クリックしてコピー");
    }, 1500);
    $self.zclip({
      path: 'ZeroClipboard.swf',
      copy: $aa.text(),
      afterCopy:function(){
        $self.text("コピーしました。")
          .css("color", "#de381b");
      }
    });
  }
  return false;
  });
});

