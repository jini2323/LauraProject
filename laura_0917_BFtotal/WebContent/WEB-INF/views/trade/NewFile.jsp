<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>




<div class="container">
			<div class="row">
				<!-- ##### Post Content Area ##### -->
				<div class="col-12 col-lg-9">
					<!-- Single Blog Area  -->
					<div class="single-blog-area blog-style-2 mb-50">
						<!-- Blog Content -->
						<div class="single-blog-content">
							<div class="line"></div>
							<a href="#" class="post-tag">TR</a>
							<h4>
								<a href="#" class="post-headline mb-0"></a>
							</h4>
							<div class="post-meta mb-50">
								<div class="trwriter">
									<p>
										By <a href="#">${trvo.trwriter}</a>
									</p>
									<!-- 작성 날짜 -->
									<p>${trvo.trupdate}</p>
									<p>
										<img src="${rPath }/img/bg-img/comm1.png" calss="comm_count"
											alt="">&nbsp;3
									</p>
								</div>
								<br>
								<!-- 지역 -->
								<p>place :</p>
								&nbsp;${trvo.trloc} <br>
								<!-- 가격 -->
								<p>cost :</p>
								&nbsp;${trvo.trprice} <br>
								<!-- 이미지 -->
								<p>
									image : <img src="${rPath}/img/trboard/${trvo.trimgn}"
										style="width: 80px; border: dotted 1px; cursor: pointer;"
										id="trimgn">
								</p>
							</div>
							<!-- 내용 -->
							<p>${trvo.trcontent}</p>
						</div>
					</div>
					<div class="trbtn" style="text-align: right;">
						<a href="trboardList" class="btn btn-light">list</a> <a
							href="modify?trnum=${trvo.tradenum}" class="btn btn-light">edit</a>
						<a href="remove?trnum=${trvo.tradenum}" class="btn btn-light"
							onclick="return confirm('삭제하시겠습니까?')">remove</a>
					</div>
					<!-- 게시글 작성자 프로필(박원빈 수정) -->
					<div class="blog-post-author d-flex">
						<div class="author-thumbnail">
							<img src="${rPath }/img/bg-img/001.png" alt="">
						</div>
						<div class="author-info">
							<div class="line"></div>
							<span class="author-role">Gold</span>
							<h4>
								<a href="#" class="author-name">${trvo.trwriter}</a>
							</h4>
							<p>프로필 내용 및 활동내역 등</p>
						</div>
					</div>

					<!-- 댓글 입력폼 -->
					<div class="post-a-comment-area mt-70">
						<h5>Leave a reply</h5>
						<!-- Reply Form -->
						<form action="trcommInsert" method="post">
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="group">
										<input type="hidden" id="trade_tradenum" name="trade_tradenum"
											value="${trvo.tradenum}">
										<!-- <label class="form-label">writer</label> -->
										<input type="text" id="tcwriter" name="tcwriter"
											value="${sessionScope.sessionNNAME}" readonly="readonly">
										<span class="highlight"></span> <span class="bar"></span>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<!-- <div class="group">
                                        <input type="email" name="email" id="email" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Email</label>
                                    </div> -->
								</div>
								<div class="col-12">
									<div class="group">
										<textarea type="hidden" name="tcomm" id="tcomm" required></textarea>
										<span class="highlight"></span> <span class="bar"></span> <label>Comment</label>
									</div>
								</div>
								<div class="col-12">
									<!--<div class="group">
                                        <textarea name="message" id="message" required></textarea>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Comment</label>
                                    </div>-->
								</div>
								<div class="col-12">
									<button type="submit" class="btn original-btn">Reply</button>
								</div>
							</div>
						</form>
					</div>

					<!-- 댓글 부분 댓글 없을 시 작성된 댓글이 없습니다. 나오도록 수정하기(박원빈 수정) -->
					<!-- Comment Area Start -->
					<div class="comment_area clearfix mt-70">
						<h5 class="title">Comments</h5>

						<ol>
							<!-- Single Comment Area -->
							<c:forEach var="e" items="${trclist}">
								<li class="single_comment_area">
									<!-- Comment Content -->
									<div class="comment-content d-flex">
										<!-- Comment Author -->
										<div class="comment-author">
											<img src="${rPath }/img/bg-img/003.png" alt="author">
										</div>
										<!-- Comment Meta -->
										<div class="comment-meta">
											<a href="#" class="post-date">${e.tcdate}</a>
											<p>
												<a href="#" class="post-author">${e.tcwriter}</a>
											</p>

											<p>${e.tcomm}</p>
											<a href="TrCdel?trnum=${trvo.tradenum}" disabled class="delbtn btn-light">삭제</a>
											<!-- 댓글용 -->
											<input type="button" disabled="disabled" class="delbtn btn-light" value="삭제">
										</div>
									</div>
								</li>
							</c:forEach>
						</ol>
					</div>
				</div>
			</div>
		</div>





</body>
</html>