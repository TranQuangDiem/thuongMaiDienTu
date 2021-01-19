<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Start Job List -->
<div id="post-job" class="tab-pane fade">
	<h3>Bạn đã đăng ${count} công việc</h3>
	<div class="row">
		<c:if test="${not empty listjob}">
			<c:forEach var="job" items="${listjob}">
				<article>
					<div class="mng-company">
						<div class="col-md-2 col-sm-2">
							<div class="mng-company-pic">
								<img src="${pageContext.request.contextPath}/${job.img}"
									class="img-responsive" alt="">
							</div>
						</div>

						<div class="col-md-5 col-sm-5">
							<div class="mng-company-name">
								<h4>
									 <span class="cmp-tagline">(Software Company)${job.jobTitle}</span>
								</h4>
								<span class="cmp-time">Ngày đăng: ${job.createday}</span>
							</div>
						</div>

						<div class="col-md-4 col-sm-4">
							<div class="mng-company-location">
								<p>
									<i class="fa fa-map-marker"></i>${job.city}
								</p>
							</div>
						</div>

						<div class="col-md-1 col-sm-1">
							<div class="mng-company-action">
								<a href="#"><i class="fa fa-edit"></i></a><a href="#"><i
									class="fa fa-trash-o"></i></a>
							</div>
						</div>

					</div>
					<span class="tg-themetag tg-featuretag">Premium</span>
				</article>
			</c:forEach>
		</c:if>
	</div>
	<div class="row">
		<ul class="pagination">
			<li><a href="#">«</a></li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#"><i class="fa fa-ellipsis-h"></i></a></li>
			<li><a href="#">»</a></li>
		</ul>
	</div>
</div>
<!-- End Job List -->