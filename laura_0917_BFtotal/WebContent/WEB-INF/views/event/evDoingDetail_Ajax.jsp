<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src="${rPath}/js/ajaxDemo2.js"></script>

<article>
	<header style="color: white">Event Detail</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<div class="container-fluid px-4">
			<h1 class="mt-4">Event Detail</h1>
			<div class="card mb-4">

				<!-- 게시판 디테일 영역  -->
				<div class="card-body">
					<div class="mb-3 mt-3">
						<label class="form-label">이벤트 번호 : </label>${vo.evNum}
					</div>

					<div class="mb-3">
						<label class="form-label">제목 : </label> <input type="text"
							class="form-control" id="evTitle" name="evTitle"
							value="${vo.evTitle}" disabled>
					</div>
					<div class="mb-3">
						<label class="form-label">보상 : </label> <input type="text"
							class="form-control" id="reward" name="reward"
							value="${vo.reward}" disabled>
					</div>
					<div class="mb-3">
						<label class="form-label">작성자 : </label> <input type="text"
							class="form-control" id="evWriter" name="evWriter" value="Admin"
							disabled>
					</div>
					<div class="mb-3">
						<label class="form-label">내용 : </label>
						<textarea class="form-control" id="evContent" name="evContent"
							disabled>
							${vo.evContent}</textarea>
					</div>

					<!-- 이미지 및 동영상 -->
					<c:choose>
						<c:when test="${vo.evImg == null}">
							<!-- 이미지가 없을 경우 -->
							<div class="mb-3">
								<label class="form-label">이미지 : </label> <img
									src="${rPath}/img/event_form/basic.PNG"
									style="width: 80px; border: dotted 1px; cursor: pointer;"
									name="evImg" id="evImg">
							</div>
						</c:when>

						<c:when test="${vo.evImg != null}">
							<!-- 이미지가 있을 경우 -->
							<div class="mb-3">
								<label class="form-label">이미지 : </label> <img
									src="${rPath}/img/eventImg/${vo.evImg}"
									style="width: 80px; border: dotted 1px; cursor: pointer;"
									name="evImg" id="evImg">
							</div>
						</c:when>
					</c:choose>


					<c:choose>
						<c:when test="${vo.evVeo == null}">
							<!-- 이미지가 없을 경우 -->
							<div class="mb-3">
								<label class="form-label">동영상 : </label> <img
									src="${rPath}/img/event_form/basic.PNG"
									style="width: 80px; border: dotted 1px; cursor: pointer;"
									name="evVeo" id="evVeo">
							</div>
						</c:when>

						<c:when test="${vo.evVeo != null}">
							<!-- 이미지가 있을 경우 -->
							<div class="mb-3">
								<label class="form-label">동영상 : </label> <img
									src="${rPath}/img/eventImg/${vo.evVeo}"
									style="width: 80px; border: dotted 1px; cursor: pointer;"
									name="evVeo" id="evVeo">
							</div>
						</c:when>
					</c:choose>


					<div class="mb-3">
						<label class="form-label">이벤트 시작일 : </label> ${vo.evSdate}
					</div>
					<div class="mb-3">
						<label class="form-label">이벤트 마감일 : </label> ${vo.evFdate}
					</div>
					<div class="mb-3">
						<label class="form-label">글 작성일 : </label> ${vo.evWdate}
					</div>
					<div class="mb-3">
						<label class="form-label">아이피 : </label><%=request.getRemoteAddr()%>
					</div>
					<a href="eventMain" class="btn btn-outline-secondary">리스트</a> <a
						href="eventModForm?evNum=${vo.evNum}"
						class="btn btn-outline-warning">수정</a> <a
						href="eventDel?evNum=${vo.evNum}" class="btn btn-outline-danger"
						onclick="return confirm('복구가 불가능합니다. 정말로 삭제하시겠습니까?')">삭제</a>
				</div>
			</div>
			<!-- 게시판 디테일 영역 끝  -->


			<!-- Comment Area Start 댓글 리스트 -->
			<div class="comment_area clearfix mt-70">
				<h5 class="title">Comments</h5>
				<ol>
					<!-- Single Comment Area -->
					<c:forEach var="e" items="${evListComm}">
						<li class="single_comment_area">
							<!-- Comment Content -->
							<div class="comment-content d-flex">
								<!-- Comment Author -->
								<div class="comment-author">
									<img src="${rPath }/img/bg-img/003.png" alt="author">
								</div>
								<!-- Comment Meta -->
								<div class="comment-meta">
								<p class="post-date">${e.evpNum}: </p><a href="#" class="post-date"> ${e.evPdate}</a>
									<p>${e.evWriter}</p>
									<p>내용: ${e.evCont}</p>
									<%--나중에 당첨여부는 운영진만 수정가능하도록 수정하기 --%>
									<p>이벤트 참여 상태 :${e.evStatus}</p>
									<p>당첨여부 (d:추첨 전) : ${e.evWin}</p>
								</div>
							</div>
						
						<%--작성자 일치 시 수정 및 삭제 버튼 생성 --%>
						<!-- <form method="POST" name="evCommMod" action="evCommMod">
										<button type="submit">수정</button>
									</form>  -->
						<c:choose>
						<c:when test="${sessionScope.sessionID == e.evId}">
						<div class="col-12">
							<button type='button' class='btn btn-outline-warning' data-toggle='modal' data-target='#modifyModal'>
							  수정</button>
							<a href="evCommDel?evNum=${vo.evNum}&evpNum=${e.evpNum}" class="btn btn-outline-danger"
						onclick="return confirm('복구가 불가능합니다. 정말로 삭제하시겠습니까?')">삭제</a>
						</div>
														
							<div class="modal fade" id="modifyModal" role="dialog">
						    <div class="modal-dialog">
						        <div class="modal-content">
						            <div class="modal-header">
						                <button type="button" class="close" data-dismiss="modal">&times;</button>
						                <h4 class="modal-title">댓글 수정창</h4>
						            </div>
						            <div class="modal-body">
						                <div class="form-group">
						                    <label for="evWriter">작성자</label>
						                    <input class="form-control" id="evWriter" name="evWriter" value="${e.evWriter}" readonly>
						                </div>
						                <div class="form-group">
						                    <label for="evCont">댓글 내용</label>
						                    <input class="form-control" id="evCont" name="evCont" placeholder="${e.evCont}">
						                </div>
						                <div class="form-group">
						                    <label for="evStatus">참여여부</label><br>
						                  <label><input class="form-control" type="radio" id="evStatus" name="evStatus" value="y" checked="checked">
						                    	참여</label>
						                   <label><input class="form-control" type="radio" id="evStatus" name="evStatus" value="n">
						               			응원</label>
						                </div>
						            </div>
						            <div class="modal-footer">
						                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">닫기</button>
						                <button type="button" class="btn btn-success modalModBtn">수정</button>
						            </div>
						        </div>
						    </div>
						</div>						
					</c:when>
				</c:choose>
					</li>	
				</c:forEach>
					<%-- <!-- Single Comment Area -->
                            <li class="single_comment_area">
                                <!-- Comment Content -->
                                <div class="comment-content d-flex">
                                    <!-- Comment Author -->
                                    <div class="comment-author">
                                        <img src="${rPath }/img/bg-img/003.png" alt="author">
                                    </div>
                                    <!-- Comment Meta -->
                                    <div class="comment-meta">
                                        <a href="#" class="post-date">2023-07-12</a>
                                        <p><a href="#" class="post-author">댓글작성자2</a></p>
                                        
                                         <p>댓글내용</p>
                                    </div>
                                </div>
                            </li>

                            <!-- Single Comment Area -->
                            <li class="single_comment_area">
                                <!-- Comment Content -->
                                <div class="comment-content d-flex">
                                    <!-- Comment Author -->
                                    <div class="comment-author">
                                        <img src="${rPath }/img/bg-img/003.png" alt="author">
                                    </div>
                                    <!-- Comment Meta -->
                                    <div class="comment-meta">
                                        <a href="#" class="post-date">2023-07-12</a>
                                        <p><a href="#" class="post-author">댓글작성자3</a></p>
                                        
                                         <p>댓글내용</p>
                                    </div>
                                </div>
                            </li> --%>
				</ol>
			</div>
			<!-- Comment Area Start 댓글 리스트 끝 -->


			<%--로그인 후: 댓글 작성 가능 --%>
			<c:choose>
				<c:when test="${sessionScope.sessionID != null}">
					<!-- 댓글 입력폼 -->
					<div class="post-a-comment-area mt-70">
						<h5>Leave a reply</h5>
						<!-- Reply Form -->
						<form action="evCommInsert?evNum=${vo.evNum}" method="post">
							<div>
								<!-- 이벤트 참여여부 선택 -->
								<label> <input type="radio" name="evStatus"
									id="evStatus" checked="checked" value="y"> 이벤트 참여
								</label> <label> <input type="radio" name="evStatus"
									id="evStatus" value="n"> 응원하기
								</label> <br> <input type="text" name="evWriter" id="evWriter"
									value="${sessionScope.sessionNNAME}" readonly>

								<!--테스트용 닉네임설정	<input type="text" name="evWriter" id="evWriter" value="루피3"
							readonly="readonly"> -->
							</div>
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="group">
									<%--히든 영역  --%>
										<input type="hidden" name="evpreip" id="evpreip" value="<%=request.getRemoteAddr()%>"> 
										<input type="hidden" id="evId" name="evId" value="${sessionScope.sessionID}"> 
											<%--외래키 --%>  
											<input type="hidden" name="evboardNum" id="evboardNum" value="${vo.evNum}">
									<%--히든 영역  끝 --%>	
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
										<span class="highlight"></span> <span class="bar"></span> <label>Comment</label>
										<br>
										<textarea name="evCont" id="evCont" required
											placeholder="링크나 응원글 남겨주세요"></textarea>
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
				</c:when>
				<%-- 댓글 입력폼 끝 --%>
				<%--로그인전 : 댓글 작성 폼  X --%>
					<c:otherwise>
					</c:otherwise>
			</c:choose>


		</div>
	</div>

</article>
<script>




$("#replies").on("click", ".replyLi button", function () {
    var reply = $(this).parent();

    
    var evpNum= reply.attr("data-evpNum");
    var evCont = reply.find(".evCont").text();
    var evWriter = reply.find(".evWriter").text();
    var evStatus = reply.find(".evStatus").text();
    
    
    $("#evpNum").val(evpNum);
    $("#evWriter").val(evWriter);
    $("#evCont").val(evCont);
    $("#evStatus").val(evStatus);

});


$(".modalModBtn").on("click", function () {

    // 댓글 선택자
    var reply = $(this).parent().parent();
    // 댓글번호
    var evpNum= reply.find("#evpNum").val();
    // 수정한 댓글내용
    var evCont = reply.find("#evCont").val();

    // AJAX통신 : PUT
    $.ajax({
        type : "put",
        url : "${path}/replies/" + reply_no,
        headers : {
            "Content-type" : "application/json",
            "X-HTTP-Method-Override" : "PUT"
        },
        data : JSON.stringify(
            {reply_text : reply_text}
        ),
        dataType : "text",
        success : function (result) {
            console.log("result : " + result);
            if (result == "modSuccess") {
                alert("댓글 수정 완료!");
                $("#modifyModal").modal("hide"); // Modal 닫기
                getReplies(); // 댓글 목록 갱신
            }
        }
    });

});



</script>



<%@include file="../temp/footer.jsp"%>
