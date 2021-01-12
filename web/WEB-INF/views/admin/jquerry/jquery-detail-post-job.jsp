<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						const urlParams = new URLSearchParams(
								window.location.search);
						const id = urlParams.get('id');
						console.log(id);
						var showResult = function(isErr, message) {
							const showerror = $("#show-result");
							if (showerror.hasClass("text-danger"))
								showerror.removeClass("text-danger");
							if (showerror.hasClass("text-success"))
								showerror.removeClass("text-success");
							if (isErr == true)
								showerror.addClass("text-danger");
							else
								showerror.addClass("text-success");
							showerror.hide().text(message).fadeIn("slow");
						};

						$("#btn-save")
								.click(
										function(e) {
											var isHide = $("input[name='isHide']")[0].checked;
											console.log(isHide);
											e.preventDefault();
											$
													.ajax({
														type : "POST",
														url : "${pageContext.request.contextPath}/admin-hide-post",
														data : {
															'id' : id,
															isHide : isHide
														},
														success : function(res) {
															if (res
																	.includes('ok')) {
																showResult(
																		false,
																		"Lưu thành công");
															} else {
																showResult(
																		true,
																		"Đã có lỗi xảy ra với hệ thống");
															}
														},
													});
										});

						$("#btn-back")
								.click(
										function(e) {
											e.preventDefault();
											window.location.href = '${pageContext.request.contextPath}/admin-list-job-post';
										});
					});
</script>