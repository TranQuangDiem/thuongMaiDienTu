<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:forEach var="subscribe" items="${lstSubscribe}"
	varStatus="tagStatus">

	<tr>
		<td>
			<div class="image-text">
				<img src="${pageContext.request.contextPath}${subscribe.account.image}" alt="">
			</div>
		</td>
		<td>
			<p>${subscribe.account.fullname}</p>
		</td>
		<td>
			<a href="${pageContext.request.contextPath}/freelancer-profile?id_freelancer=1"><p>${subscribe.account.username}</p></a>
		</td>
		<td>
			<p><fmt:formatDate
							pattern="d/MM/yyyy" value="${subscribe.dateApply}" /></p>
		</td>
		<td>
			<strong class="j-shared rate-custom">${subscribe.account.starAverage}<i class="fa fa-star"></i></strong>
		</td>
		<td>
		<div class="tag">Accept</div>
		<div class="tag-delete">Delete</div>
		</td>
	</tr>
</c:forEach>