<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- backend -->

<c:forEach var="evaluate" items="${listEvaluate}"
	varStatus="tagStatus">



	<div class="mail-card">
		<header class="card-header cursor-pointer collapsed"
			data-toggle="collapse" data-target="#meaages-2"
			aria-expanded="false">
			<div class="card-title flexbox">
				<img class="img-responsive img-circle avatar"
					src="${pageContext.request.contextPath}${evaluate.account.image}"
					alt="...">
				<div>
					<h6>${evaluate.account.fullname}</h6>
					<small><fmt:formatDate
							pattern="EEEE, d MMM yyyy hh:mm aaa" value="${evaluate.time}" /></small>
				</div>
			</div>
			<div class="rate-star">
				<span class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span class="fa fa-star "></span>
			</div>
		</header>
		<div class="collapse" id="meaages-2" aria-expanded="false"
			style="height: 0px;">
			<div class="card-body">${evaluate.content}</div>
		</div>
	</div>


</c:forEach>