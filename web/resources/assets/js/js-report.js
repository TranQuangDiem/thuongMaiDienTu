function readURL(input,imagename,imageuploadwrap,fileuploadcontent,imagetitle) {
    if (input.files && input.files[0]) {
  
      var reader = new FileReader();
  
      reader.onload = function(e) {
        $('#'+imageuploadwrap).hide();
  
        $('#'+imagename).attr('src', e.target.result);
        $('#'+fileuploadcontent).show();
  
        $('#'+imagetitle).html(input.files[0].name);
      };
  
      reader.readAsDataURL(input.files[0]);
  
    } else {
      removeUpload(input,imageuploadwrap,fileuploadcontent);
    }
  } 
  
  function removeUpload(fileuploadinput,imageuploadwrap,fileuploadcontent) {
    $('#'+fileuploadinput).replaceWith($('#'+fileuploadinput).clone());
    $('#'+fileuploadcontent).hide();
    $('#'+imageuploadwrap).show();
  }
  $('.image-upload-wrap').bind('dragover', function () {
          $('.image-upload-wrap').addClass('image-dropping');
      });
      $('.image-upload-wrap').bind('dragleave', function () {
          $('.image-upload-wrap').removeClass('image-dropping');
  });
  