<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="content-box" class="container table-section" style="padding-left: 30px;">
	<h3>Subscribers</h3>
	<div class="table" style="max-height: 50vh; overflow-y: auto;">
		<table>
			<thead>
				<tr>
					<th>
						<p></p>
					</th>
					<th>
						<p>Full name</p>
					</th>
					<th>
						<p>Describe</p>
					</th>
					<th>
						<p>Date apply</p>
					</th>
					<th>
						<p>Evaluate</p>
					</th>
					<th>
						<p>Accept</p>
					</th>
				</tr>
			</thead>
			<!-- List subscriber -->
			<tbody id="bodyTable">
				
			</tbody>
				
			
		</table>
	</div>
</div>
<script>
	$('document').ready(function() {
		countI=0;
		
		$.ajax({
			type: "GET",
			url: '${pageContext.request.contextPath}/get-row-subscriber',
		data : {
			numberPage : 0,
			id_job:${id_job}
		},
		success : function(
				data) {
	
			$('#bodyTable').append(data);
			
		}
	});
			
			
	});
</script>
<style type="text/css">
#content-box {
	
    overflow: scroll;

}

</style>
<script type="text/javascript">

	$(document).ready(function(){
	  	$contentLoadTriggered = false;
	  	$("#content-box").scroll(function(){
	    	
	        if($("#content-box").scrollTop() >= ($('#bodyTable').height() - $("#content-box").height()) && $contentLoadTriggered == false){
	               $contentLoadTriggered = true; 
	               $.ajax({
	   				type: "GET",
	   				url: '${pageContext.request.contextPath}/get-row-subscriber',
					data : {
						numberPage : ++countI,
						id_job: ${id_job}
					},
					success : function(
							data) {
	
						$('#bodyTable').append(data);
						$contentLoadTriggered = false;  
					}
			});
		}
	
		});
	  	
    		
});
</script>

