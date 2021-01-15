<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!-- Nav choose and clear -->
<script type="text/javascript" charset="UTF-8">
$('li.sidebar-item').removeClass('active');
item1=$( 'a[href*="${pageContext.request.contextPath}/admin-list-major"]');
for(var i=0;i<10;i++){
	item1=item1.parent();
	if(item1.hasClass('sidebar-item')){
		item1.addClass('active');
		break;
	};
};
</script>
<script>
	function showDialog() {
		var x = document.getElementById("myDialog");
		x.setAttribute("style", " width: 100%;");
		x.open = true;
	}
</script>
<script>
	function hideDialog() {
		var x = document.getElementById("myDialog");
		x.open = false;
	}
	function deleteMajor(button) {
		var idMajor = $(button).data('major');
		$.ajax({
			type: "GET",
			url: '<c:url value="admin-deletemajor"></c:url>',
			data: { id: idMajor },
			success: function (res) {
				if (res.includes('fail')) {
					alert("Có lỗi đã xảy ra");
				} else {
					$("div[data-major-delete=" + idMajor + "]").remove();
				}
			},
		});
	}
</script>
<script type="text/javascript" charset="UTF-8">
	$(document).ready(function () {
		var showResult = function (isErr, message) {
			const showerror = $("#show-result");
			if (showerror.hasClass("text-danger")) showerror.removeClass("text-danger");
			if (showerror.hasClass("text-success"))
				showerror.removeClass("text-success");
			if (isErr == true) showerror.addClass("text-danger");
			else showerror.addClass("text-success");
			showerror.hide().text(message).fadeIn("slow");
		};

		
		var setUp = () => {
			$("#btn-addmajor").click(function (e) {
				e.preventDefault();
				var major = $("input[name='major']").val();
				console.log(major);
				$.ajax({
					type: "GET",
					url: '<c:url value="admin-addmajor"></c:url>',
					data: { major: major },
					success: function (res) {
						if (res.includes('empty')) {
							showResult(true, "Bạn không được để trống trường trên");
						}
						else if (res.includes('exitst')) {
							showResult(true, "Dữ liệu đã tồn tại");
						} else if (res.includes('fail')) {
							showResult(true, "Có lỗi với hệ thống");
						} else {
							var newMajorId = res.split('  ')[0];
							var newMajorName = res.split('  ')[1];
							var newDiv = $('<div></div>').text(major.trim());
							var newBtn = $('<button></button>');
							newDiv.attr('data-major-delete', newMajorId);
							newBtn.attr('data-major', newMajorId);
							newBtn.attr( 'onclick','deleteMajor(this)');
							newBtn.attr('type', 'button');
							newBtn.addClass('close');
							newBtn.wrapInner("<span aria-hidden='true'>&times;</span>");
							newDiv.addClass('alert alert-primary alert-dismissible fade show');
							newDiv.append(newBtn);
							$('#container-major').append(newDiv);
							showResult(false, "Thêm thành công");
						}
					}
				})
			});
		};
		setUp();
	});
</script>