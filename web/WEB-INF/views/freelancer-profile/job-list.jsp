<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="post-job" class="tab-pane fade">
	<h3>Bạn đã nhận ${listjob.size()} công việc</h3>
	<div class="row">
		<c:if test="${not empty listjob}">
									<c:forEach var="listjob" items="${listjob}">
		<article>
			<div class="mng-company">
			<a href="${pageContext.request.contextPath}/job-detail?id_job=${listjob.id}">
				<div class="col-md-2 col-sm-2">
					<div class="mng-company-pic"><img src='data:image/jpge;base64,${listjob.img}' class="img-responsive" alt=""></div>
				</div>
				
				<div class="col-md-5 col-sm-5">
					<div class="mng-company-name">
						<!-- <h4>Autodesk <span class="cmp-tagline">(Software Company)</span></h4><span class="cmp-time">10 Hour Ago</span></div> -->
						<h4>${listjob.jobTitle}</h4>
						</div>
				</div>
				</a>
				<div class="col-md-4 col-sm-4">
					<div class="mng-company-location">
						<p><i class="fa fa-map-marker"></i> ${listjob.city}</p>
					</div>
				</div>
				
				<div class="col-md-1 col-sm-1">
					<div class="mng-company-action"><a href="<c:url value="/deletejob"/>?id_job=${listjob.id}&idAccount=${freelancer.id}"></a></div>
					<a href="employer-profile?id_employer=${listjob.view}">Báo cáo</a>
				</div>
				
			</div>
	<!-- 		<span class="tg-themetag tg-featuretag">Premium</span> -->
		</article>
		</c:forEach>
								</c:if>
	</div>
	
</div>