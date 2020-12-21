<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- backend -->

<c:forEach var="evaluate" items="${listEvaluate}"
	varStatus="tagStatus">



	<div class="mail-card">
		<header class="card-header cursor-pointer collapsed"
			data-toggle="collapse" data-target="#message-${evaluate.id}"
			aria-expanded="false">
			<div class="card-title flexbox">
				<img class="img-responsive img-circle avatar"
					src="data:image/png;base64,${evaluate.account.imageBase64}"
					alt="...">
				<div>
					<h6>${evaluate.account.fullname}</h6>
					<small><fmt:formatDate
							pattern="EEEE, d MMM yyyy hh:mm aaa" value="${evaluate.time}" /></small>
				</div>
			</div>
			<div class="rate-star">
			<c:forEach var="i" begin="0" end="4" varStatus="loop">
				<c:if test="${i<evaluate.star}">
					<span class="fa fa-star star-checked"></span>
				</c:if>
				<c:if test="${i>=evaluate.star}">
					<span class="fa fa-star"></span>
				</c:if>
				
				
			    
			</c:forEach>

				 
			</div>
		</header>
		<div class="collapse" id="message-${evaluate.id}" aria-expanded="false"
			style="height: 0px;">
			<div class="card-body">${evaluate.content}</div>
		</div>
	</div>


</c:forEach>