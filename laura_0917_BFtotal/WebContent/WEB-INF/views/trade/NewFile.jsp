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
									<!-- �ۼ� ��¥ -->
									<p>${trvo.trupdate}</p>
									<p>
										<img src="${rPath }/img/bg-img/comm1.png" calss="comm_count"
											alt="">&nbsp;3
									</p>
								</div>
								<br>
								<!-- ���� -->
								<p>place :</p>
								&nbsp;${trvo.trloc} <br>
								<!-- ���� -->
								<p>cost :</p>
								&nbsp;${trvo.trprice} <br>
								<!-- �̹��� -->
								<p>
									image : <img src="${rPath}/img/trboard/${trvo.trimgn}"
										style="width: 80px; border: dotted 1px; cursor: pointer;"
										id="trimgn">
								</p>
							</div>
							<!-- ���� -->
							<p>${trvo.trcontent}</p>
						</div>
					</div>
					<div class="trbtn" style="text-align: right;">
						<a href="trboardList" class="btn btn-light">list</a> <a
							href="modify?trnum=${trvo.tradenum}" class="btn btn-light">edit</a>
						<a href="remove?trnum=${trvo.tradenum}" class="btn btn-light"
							onclick="return confirm('�����Ͻðڽ��ϱ�?')">remove</a>
					</div>
					<!-- �Խñ� �ۼ��� ������(�ڿ��� ����) -->
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
							<p>������ ���� �� Ȱ������ ��</p>
						</div>
					</div>

					<!-- ��� �Է��� -->
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

					<!-- ��� �κ� ��� ���� �� �ۼ��� ����� �����ϴ�. �������� �����ϱ�(�ڿ��� ����) -->
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
											<a href="TrCdel?trnum=${trvo.tradenum}" disabled class="delbtn btn-light">����</a>
											<!-- ��ۿ� -->
											<input type="button" disabled="disabled" class="delbtn btn-light" value="����">
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