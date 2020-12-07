<%@ page language="java" pageEncoding="UTF-8"%>

<%@ page contentType="text/html;charset=UTF-8" %>

<!-- Start Message -->
<div id="rate" class="tab-pane fade">
	<div class="inbox-body inbox-widget">
		<div class="row" style="margin-top: 40px;">
			<div class="col-sm-12">
				<div class="well well-sm">
					<div class="text-right">
						<a class="btn btn-primary btn-rate" href="#reviews-anchor"
							id="open-review-box">Đánh giá</a>
					</div>

					<div class="row" id="post-review-box" style="display: none;">
						<div class="col-md-12">
							<form accept-charset="UTF-8" action="" method="post">
								<input id="ratings-hidden" name="rating" type="hidden">
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
									<button class="btn btn-success btn-rate-save" type="submit">Save</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		
	</div>

	<div class="mail-card">
		<header class="card-header cursor-pointer collapsed"
			data-toggle="collapse" data-target="#meaages-2" aria-expanded="false">
			<div class="card-title flexbox">
				<img class="img-responsive img-circle avatar"
					src="${pageContext.request.contextPath}/resources/assets/img/can-2.png"
					alt="...">
				<div>
					<h6>Daniel Duke</h6>
					<small>Today at 07:34 AM</small>
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
			<div class="card-body">
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
					voluptas sit aspernatur aut odit aut fugit, sed quia.</p>
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo.</p>
			</div>
		</div>
	</div>

	<div class="mail-card">
		<header class="card-header cursor-pointer collapsed"
			data-toggle="collapse" data-target="#meaages-3" aria-expanded="false">
			<div class="card-title flexbox">
				<img class="img-responsive img-circle avatar"
					src="${pageContext.request.contextPath}/resources/assets/img/can-1.png"
					alt="...">
				<div>
					<h6>Daniel Duke</h6>
					<small>Today at 07:34 AM</small>
				</div>
			</div>
			<div class="rate-star">
				<span class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span>
			</div>
		</header>
		<div class="collapse" id="meaages-3" aria-expanded="false"
			style="height: 0px;">
			<div class="card-body">
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
					voluptas sit aspernatur aut odit aut fugit, sed quia.</p>
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo.</p>
			</div>
		</div>
	</div>

	<div class="mail-card">
		<header class="card-header cursor-pointer collapsed"
			data-toggle="collapse" data-target="#meaages-4" aria-expanded="false">
			<div class="card-title flexbox">
				<img class="img-responsive img-circle avatar"
					src="${pageContext.request.contextPath}/resources/assets/img/can-3.png"
					alt="...">
				<div>
					<h6>Daniel Duke</h6>
					<small>Today at 07:34 AM</small>
				</div>
			</div>
			<div class="rate-star">
				<span class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span class="fa fa-star "></span>
			</div>
		</header>
		<div class="collapse" id="meaages-4" aria-expanded="false"
			style="height: 0px;">
			<div class="card-body">
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
					voluptas sit aspernatur aut odit aut fugit, sed quia.</p>
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo.</p>
			</div>
		</div>
	</div>

	<div class="mail-card">
		<header class="card-header cursor-pointer collapsed"
			data-toggle="collapse" data-target="meaages-5" aria-expanded="false">
			<div class="card-title flexbox">
				<img class="img-responsive img-circle avatar"
					src="${pageContext.request.contextPath}/resources/assets/img/can-4.png"
					alt="...">
				<div>
					<h6>Daniel Duke</h6>
					<small>Today at 07:34 AM</small>
				</div>
			</div>
			<div class="rate-star">
				<span class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span> <span
					class="fa fa-star star-checked"></span>
			</div>
		</header>
		<div class="collapse" id="meaages-5" aria-expanded="false"
			style="height: 0px;">
			<div class="card-body">
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
					voluptas sit aspernatur aut odit aut fugit, sed quia.</p>
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo.</p>
			</div>
		</div>
	</div>
</div>
</div>


<!-- End Message -->