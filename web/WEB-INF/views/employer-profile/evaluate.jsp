<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div id="rate" class="tab-pane fade">
	<div id="evaluate-inbox-boy" class="inbox-body inbox-widget">
		<div class="row" style="margin-top: 40px;">
			<div class="col-sm-12">
				<div class="well well-sm">
					<div class="text-right">
						<a class="btn btn-primary btn-rate" href="#reviews-anchor"
							id="open-review-box">Đánh giá</a>
					</div>

					<div class="row" id="post-review-box" style="display: none;">
						<div class="col-md-12">
							<form accept-charset="UTF-8"
								action="${pageContext.request.contextPath}/submit"
								id="form-submit-evaluate"
								method="post">
								<input id="ratings-hidden" name="rating" type="hidden" value="0">
								<input  name="id_employer" type="hidden" value="${id_employer}">
								<textarea class="form-control animated" cols="50"
									id="new-review" name="comment"
									placeholder="Enter your review here..." rows="5"></textarea>

								<div class="text-right">
									<div class='rating-stars'>
										<ul id='stars'>
											<li class='star' title='Rất Tệ' data-value='1'><i
												class='fa fa-star fa-fw'></i></li>
											<li class='star' title='Tệ' data-value='2'><i
												class='fa fa-star fa-fw'></i></li>
											<li class='star' title='Bình Thường' data-value='3'><i
												class='fa fa-star fa-fw'></i></li>
											<li class='star' title='Tốt' data-value='4'><i
												class='fa fa-star fa-fw'></i></li>
											<li class='star' title='Rất Tốt' data-value='5'><i
												class='fa fa-star fa-fw'></i></li>
										</ul>
									</div>
									<a class="btn btn-danger btn-rate-cancel" href="#"
										id="close-review-box" style="margin-right: 10px;">Cancel</a>
									<button id="btn_submit_evaluate" class="btn btn-success btn-rate-save" type="submit">Save</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>

		<!-- Row -->



	</div>
</div>



<script type="text/javascript">
countI=0;
star=parseInt(${employer.star});
count_evaluate=parseInt(${employer.countEvaluate});
$(document).ready(function(){
	//Init row
	$.ajax({
			type: "GET",
			url: '${pageContext.request.contextPath}/get-row-evaluate-employer',
		data : {
			numberPage : 0,
			id_employer:${id_employer}
		},
		success : function(
				data) {
	
			$('#evaluate-inbox-boy').append(data);
			
		}
	});
	
	//Sroll row
  	$contentLoadTriggered = false;
	$(window).scroll(function() {
		if($(window).scrollTop() == $('evaluate-inbox-boy').height() - $(window).height()) {
			$contentLoadTriggered = true; 
			$.ajax({
				type: "GET",
				url: '${pageContext.request.contextPath}/get-row-evaluate-employer',
				data : {
					numberPage : ++countI,
					id_employer:${id_employer}
				},
				success : function(
						data) {
				
					$('#evaluate-inbox-boy').append(data);
					$contentLoadTriggered = false;  
				}
			});
  		}

	});
	//Add btn submit
	$("#btn_submit_evaluate" ).click(function( event ) {
		
		  event.preventDefault();
		  $.ajax({
				type: "POST",
				url: '${pageContext.request.contextPath}/submit-evaluate-employer',
				data : $('#form-submit-evaluate').serialize(),
				success : function(data) {
					console.log(data);
					$('#evaluate-inbox-boy').children().slice(1).detach();
					
					$('#evaluate-inbox-boy').append(data);
					countI=0;
					$('#close-review-box').click();
					$('#new-review').val('');
				  
				  	var stars = $("#stars").children('li.star');
				  	for (i = 0; i < stars.length; i++) {
				        $(stars[i]).removeClass('selected');
				    }
				  	star=star+parseInt($('#form-submit-evaluate').find("input[name='rating']").val());
				  	console.log(star);
				  	count_evaluate=count_evaluate+1;
				  	console.log(count_evaluate);
				  	starAverage= star/count_evaluate;
				  	  
				  	$('#starAverage').html(starAverage.toFixed(2));
				  	$('#starAverage').append('<i class="fa fa-star"></i>');
				  	$('#ratings-hidden').val(0);
					
						
					
				}
			});
		  
	});
	
	  	
   		
});
</script>



<!-- End Message -->