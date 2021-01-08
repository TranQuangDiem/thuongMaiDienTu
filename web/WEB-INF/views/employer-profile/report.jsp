<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Start Report -->
<div id="report" class="tab-pane fade">
	<div class="row no-mrg">
		<h3 style="margin-bottom: 30px;">Báo cáo</h3>
		<div class="edit-pro">
			<form>
				<input class="form-control" id="input-title" type="text" placeholder="Tiêu đề báo cáo">
				<textarea class="form-control" placeholder="nội dung chi tiết báo cáo"></textarea>
				<div class="row" style="margin-bottom: 45px;">
					<div class="col-sm-2">
						<div class="image-upload-wrap" id="image-upload-wrap1">
						<input class="file-upload-input" id="file-upload-input1" type='file' onchange="readURL(this,'image1','image-upload-wrap1','file-upload-content1','image-title1');" accept="image/*" />
						<div class="drag-text">
						  <h6>Drag and drop a file or select add Image</h6>
						</div>
					  </div>
					  <div class="file-upload-content" id="file-upload-content1">
						<img class="file-upload-image"  id="image1" src="#" alt="your image" />
						<div class="image-title-wrap">
						  <button type="button" onclick="removeUpload('file-upload-input1','image-upload-wrap1','file-upload-content1')" class="remove-image">Remove <span id="image-title1" class="image-title">Uploaded Image</span></button>
						</div>
					  </div>
					</div>
					<div class="col-sm-2">
						<div class="image-upload-wrap" id="image-upload-wrap2">
						<input class="file-upload-input" id="file-upload-input2" type='file' onchange="readURL(this,'image2','image-upload-wrap2','file-upload-content2','image-title2');" accept="image/*" />
						<div class="drag-text">
						  <h6>Drag and drop a file or select add Image</h6>
						</div>
					  </div>
					  <div class="file-upload-content" id="file-upload-content2">
						<img class="file-upload-image" id="image2" src="#" alt="your image" />
						<div class="image-title-wrap">
						  <button type="button" onclick="removeUpload('file-upload-input2','image-upload-wrap2','file-upload-content2')" class="remove-image">Remove <span id="image-title2" class="image-title">Uploaded Image</span></button>
						</div>
					  </div>
					</div>
					<div class="col-sm-2">
						<div class="image-upload-wrap" id="image-upload-wrap3">
						<input class="file-upload-input" id="file-upload-input3" type='file' onchange="readURL(this,'image3','image-upload-wrap3','file-upload-content3','image-title3');" accept="image/*" />
						<div class="drag-text">
						  <h6>Drag and drop a file or select add Image</h6>
						</div>
					  </div>
					  <div class="file-upload-content" id="file-upload-content3">
						<img class="file-upload-image" id="image3" src="#" alt="your image" />
						<div class="image-title-wrap">
						  <button type="button" onclick="removeUpload('file-upload-input3','image-upload-wrap3','file-upload-content3')" class="remove-image">Remove <span id="image-title3" class="image-title">Uploaded Image</span></button>
						</div>
					  </div>
					</div>
				</div>
					<button type="button" class="update-btn btn-report" data-toggle="modal" data-target="#modal-report" >Gửi</button>
			</form>
		</div>
	</div>
</div>
<div class="modal fade" id="modal-report" role="dialog">
	<div class="modal-dialog modal-lg">
	  <div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal">&times;</button>
		  <h4 class="modal-title title-modal-report">Thành Công</h4>
		</div>
		<div class="modal-body">
			<img id="img-success-report" src="assets/img/success.png" alt="success.png">
		  <p>Báo cáo của bạn đã được báo cáo thành công gửi thành công</p>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
	  </div>
	</div>
  </div>
<!-- End Report -->
<script type="text/javascript">
	
	$(document).ready(function(){
	
		
			
	});
	
	
</script>