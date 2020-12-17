/**
 *
 */

$(document).ready(function () {
  var serializeForm = function (form) {
    var obj = {};
    var formData = new FormData(form);
    for (var key of formData.keys()) {
      obj[key] = formData.get(key);
    }
    return obj;
  };
  $("#form-login").submit(function (e) {
    e.preventDefault();
    var data = JSON.stringify(serializeForm(this));
    console.log(data);
    $.ajax({
      headers: {
        Accept: "text/plain",
        "Content-Type": "application/json",
      },
      type: "POST",
      url: $(this).attr("action"),
      data: data,
      contentType: "application/json",
      dataType: "text",
      success: function (res) {
        alert(res);
      },
    });
  });
  $("#form-register").submit(function (e) {
    e.preventDefault();
    var data = new FormData(this);
    alert(data.get("usernamenew"));
  });
});
