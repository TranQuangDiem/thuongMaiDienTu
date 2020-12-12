<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:forEach var="subscriber" items="${lstSubscribe}"
	varStatus="tagStatus">
	<c:if test="${subscriber.status != 'REJECT'}">
		<tr id="subscriber-${subscriber.id}">
			<td>
				<div class="image-text">
					<img src="${pageContext.request.contextPath}${subscriber.account.image}" alt="">
				</div>
			</td>
			<td>
				<p>${subscriber.account.fullname}</p>
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/freelancer-profile?id_freelancer=1"><p>${subscriber.account.username}</p></a>
			</td>
			<td>
				<p><fmt:formatDate
								pattern="d/MM/yyyy" value="${subscriber.dateApply}" /></p>
			</td>
			<td>
				<strong class="j-shared rate-custom">${subscriber.account.starAverage}<i class="fa fa-star"></i></strong>
			</td>
			<td>
			<c:if test="${subscriber.status == 'APPLY'}">
				<div id="accept-${subscriber.account.id}" class="tag">Accept</div>
				<div id="delete-${subscriber.account.id}" class="tag-delete">Delete</div>
			</c:if>
			
			</td>
		</tr>
		<c:if test="${subscriber.status == 'APPLY'}">
		<script type="text/javascript">
		$(document).ready(function(){
			//Add btn submit
			$("#accept-${subscriber.account.id}").click(function( event ) {
				
				  event.preventDefault();
				  $.ajax({
						type: "POST",
						url: '${pageContext.request.contextPath}/change-status-subscriber',
						data : {
							freelancer_id: ${subscriber.account.id},
							id_job: ${id_job},
							status: "ACCEPT"
						},
						success : function(data) {
							if(data=="Ok"){
								console.log("Accept ${subscriber.account.id}")
								$("#accept-${subscriber.account.id}").hide();
								$("#delete-${subscriber.account.id}").hide();
							}
							
							
								
							
						}
					});
				  
			});
			$("#delete-${subscriber.account.id}").click(function( event ) {
				
				  event.preventDefault();
				  $.ajax({
						type: "POST",
						url: '${pageContext.request.contextPath}/change-status-subscriber',
						data : {
							freelancer_id: ${subscriber.account.id},
							id_job: ${id_job},
							status: "REJECT"
						},
						success : function(data) {
							if(data=="Ok"){
								console.log("Reject ${subscriber.account.id}")
								$("#subscriber-${subscriber.id}").remove();
								
							}
							
							
								
							
						}
					});
				  
			});
		
		  	
				
		});
		</script>
	</c:if>
</c:if>
</c:forEach>