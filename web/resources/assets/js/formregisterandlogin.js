$(document).ready(function () {
  $("#form-register").submit(function (e) {
    e.preventDefault();
    $.ajax({
      type: "POST",
      url: $("#form-register").attr("action"),
      data: $("#form-register").serialize(),
      success: function (res) {
        switch (res) {
          case "erremptyfield":
            showErrorRegister(true, "Không được để trống tất cả thông tin");
            break;
          case "errname":
            showErrorRegister(true, "Họ và tên của bạn không hợp lệ");
            break;
          case "errpass":
            showErrorRegister(
              true,
              "Mật khẩu phải nhiều hơn 8 ký tự,có ít nhất 1 ký thường,hoa,số,đặc biệt"
            );
            break;
          case "errusername":
            showErrorRegister(
              true,
              "Tên tài khoản có ít nhất 8 ký tự chỉ có số, chữ "
            );
            break;
          case "errusernameexit":
            showErrorRegister(true, "Tên tài khoản đã tồn tại");
            break;
          case "errmail":
            showErrorRegister(true, "Email của bạn không hợp lệ");
            break;
          case "error":
            showErrorRegister(true, "Đã có lỗi xảy ra với hệ thống");
            break;
          case "success":
            showErrorRegister(false, "Đăng ký thành công");
            $(location).attr("href", "${pageContext.request.contextPath}");
            break;
          default:
            showErrorRegister(true, "Đã có lỗi xảy ra");
            break;
        }
      },
    });
  });
});
