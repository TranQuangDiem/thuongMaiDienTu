<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="settings" class="tab-pane fade">
	<div class="row no-mrg">
		<h3>Chỉnh Sửa Thông Tin</h3>
		
								
		<div class="edit-pro">
		<form accept-charset="UTF-8"
								action="${pageContext.request.contextPath}/employer-profile/settings/update"
								id="form-settings" enctype="multipart/form-data"
								method="post">
								<input type="hidden" name="idAccount" class="form-control" value="${employer.id}">
			<div class="col-md-4 col-sm-6">
				<label>Tên nhà tuyển dụng</label>
				<input type="text" name="fullname" class="form-control" value="${employer.fullname}">
			</div>
			<div class="col-md-4 col-sm-6">
				<label>Chuyên ngành tuyển dụng</label>
				<select name="major" class="form-control">
					
					<c:forEach var="itemMajor" items="${lstMajor}"
						varStatus="tagStatus">
						<option value="${itemMajor.name}">${itemMajor.name}</option>
					</c:forEach>
						
					
				</select>
				
			</div>
			<div class="col-md-4 col-sm-6">
				<label id="label-hireable">Trạng Thái</label>
				<input type="checkbox" class="form-control" value="true" name="ready" id="checkbox-active-job" checked="true">
				<p id="p-hireable">Đang tuyển dụng</p>
			</div>
			<div class="col-md-4 col-sm-6">
				<label>Email</label>
				<input name="email" type="email" class="form-control" value="${employer.email}">
			</div>
			<div class="col-md-4 col-sm-6">
				<label>Điện thoại</label>
				<input name="phone" type="text" class="form-control" value="${employer.phone}">
			</div>
			<div class="col-md-4 col-sm-6">
				<label>Tỉnh / Thành Phố</label>
				<input name="address.id" type="hidden"  class="form-control" value="${employer.address.id}">
				<select name="address.province" class="form-control"  id="tinh"></select>

			</div>
			<div class="col-md-4 col-sm-6">
				<label>Quận / Huyện</label>
				<select name="address.district" class="form-control" id="huyen"></select>

			</div>
			<div class="col-md-4 col-sm-6">
				<label>Xã Phường</label>
				<select name="address.ward" class="form-control" id="xa"></select>
			</div>
			<div class="col-md-4 col-sm-6">
				<label>Địa Chỉ</label>
				<input name="address.detailAddress" type="text" class="form-control" value="${employer.address.detailAddress}">
			</div>
			<div class="col-md-4 col-sm-6">
				<label>Facebook</label>
				<input name="facebook" type="text" class="form-control" value="${employer.facebook}">
			</div>
			<div class="col-md-4 col-sm-6">
				<label>Twitter</label>
				<input name="twitter" type="text" class="form-control" value="${employer.twitter}">
			</div>
			<div class="col-md-4 col-sm-6">
				<label>Website</label>
				<input name="website" type="text" class="form-control" value="${employer.website}">
			</div>
			
			<div class="col-md-4 col-sm-6">
				<label>Giới thiệu bản thân</label>
				<textarea name="about" class="form-control" >${employer.about}</textarea>
			</div>
			
			
			<div class="col-md-4 col-sm-6">
				<label>Tải hình đại diện</label>
				<img id="img-avatar" src="data:image/png;base64,${employer.imageBase64}" alt="your image" />
				<input id="input-avatar" name="image" type="file" class="form-control" value="Chọn ảnh">
			</div>
			
			<div class="col-md-4 col-sm-6">
				<label>Tải ảnh bìa</label>
				<img id="img-background" src="data:image/png;base64,${employer.backgroundBase64}" alt="your image" />
				<input id="input-background" name="background" type="file" class="form-control" value="Chọn ảnh">
			</div>
			<div class="col-sm-12">
				<button type="submit" form="form-settings" value="Submit" id="btn_submit_settings" class="update-btn">Update Now</button>
			</div>
			</form>
			
		</div>
		
	</div>
</div>
<script type="text/javascript">
	function readURL(input, img) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    
	    reader.onload = function(e) {
	      img.attr('src', e.target.result);
	    }
	    
	    reader.readAsDataURL(input.files[0]); // convert to base64 string
	  }
	}
	$(document).ready(function(){
		$("#input-avatar").change(function() {
			  readURL(this, $("#img-avatar"));
		});
		$("#input-background").change(function() {
			  readURL(this, $("#img-background"));
		});
		
		
			
	});
	function updateAddress(){
		$(document).ready(function(){
			<c:if test="${not empty employer.major}">
				$("select[name='major']").val('${employer.major}');
			</c:if>
			<c:if test="${not empty employer.ready}">
				$("input[name='ready']").prop('checked', ${employer.ready});
				$("input[name='ready']").val('${employer.ready}');
				$("input[name='ready']").change();
				
			</c:if>
			
			
			
			<c:if test="${not empty employer.address.province}">
				$("select[name='address.province']").val("${employer.address.province}").change();
				$("select[name='address.province']")[0].dispatchEvent(new Event('change'));
				<c:if test="${not empty employer.address.province}">
				$("select[name='address.district']").val("${employer.address.district}").change();
				$("select[name='address.district']")[0].dispatchEvent(new Event('change'));
				</c:if>
				<c:if test="${not empty employer.address.province}">
				$("select[name='address.ward']").val("${employer.address.ward}");
				$("select[name='address.ward']")[0].dispatchEvent(new Event('change'));
				</c:if>
			</c:if>
			
		});
		
	}
	
</script>