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

				<!-- �Խ��� ������ ����  -->
				<div class="card-body">
					<div class="mb-3 mt-3">
						<label class="form-label">�̺�Ʈ ��ȣ : </label>${vo.evNum}
					</div>

					<div class="mb-3">
						<label class="form-label">���� : </label> <input type="text"
							class="form-control" id="evTitle" name="evTitle"
							value="${vo.evTitle}" disabled>
					</div>
					<div class="mb-3">
						<label class="form-label">���� : </label> <input type="text"
							class="form-control" id="reward" name="reward"
							value="${vo.reward}" disabled>
					</div>
					<div class="mb-3">
						<label class="form-label">�ۼ��� : </label> <input type="text"
							class="form-control" id="evWriter" name="evWriter" value="Admin"
							disabled>
					</div>
					<div class="mb-3">
						<label class="form-label">���� : </label>
						<textarea class="form-control" id="evContent" name="evContent"
							disabled>
							${vo.evContent}</textarea>
					</div>

					<!-- �̹��� �� ������ -->
					<c:choose>
						<c:when test="${vo.evImg == null}">
							<!-- �̹����� ���� ��� -->
							<div class="mb-3">
								<label class="form-label">�̹��� : </label> <img
									src="${rPath}/img/event_form/basic.PNG"
									style="width: 80px; border: dotted 1px; cursor: pointer;"
									name="evImg" id="evImg">
							</div>
						</c:when>

						<c:when test="${vo.evImg != null}">
							<!-- �̹����� ���� ��� -->
							<div class="mb-3">
								<label class="form-label">�̹��� : </label> <img
									src="${rPath}/img/eventImg/${vo.evImg}"
									style="width: 80px; border: dotted 1px; cursor: pointer;"
									name="evImg" id="evImg">
							</div>
						</c:when>
					</c:choose>


					<c:choose>
						<c:when test="${vo.evVeo == null}">
							<!-- �̹����� ���� ��� -->
							<div class="mb-3">
								<label class="form-label">������ : </label> <img
									src="${rPath}/img/event_form/basic.PNG"
									style="width: 80px; border: dotted 1px; cursor: pointer;"
									name="evVeo" id="evVeo">
							</div>
						</c:when>

						<c:when test="${vo.evVeo != null}">
							<!-- �̹����� ���� ��� -->
							<div class="mb-3">
								<label class="form-label">������ : </label> <img
									src="${rPath}/img/eventImg/${vo.evVeo}"
									style="width: 80px; border: dotted 1px; cursor: pointer;"
									name="evVeo" id="evVeo">
							</div>
						</c:when>
					</c:choose>


					<div class="mb-3">
						<label class="form-label">�̺�Ʈ ������ : </label> ${vo.evSdate}
					</div>
					<div class="mb-3">
						<label class="form-label">�̺�Ʈ ������ : </label> ${vo.evFdate}
					</div>
					<div class="mb-3">
						<label class="form-label">�� �ۼ��� : </label> ${vo.evWdate}
					</div>
					<div class="mb-3">
						<label class="form-label">������ : </label><%=request.getRemoteAddr()%>
					</div>
					<a href="eventMain" class="btn btn-outline-secondary">����Ʈ</a> <a
						href="eventModForm?evNum=${vo.evNum}"
						class="btn btn-outline-warning">����</a> <a
						href="eventDel?evNum=${vo.evNum}" class="btn btn-outline-danger"
						onclick="return confirm('������ �Ұ����մϴ�. ������ �����Ͻðڽ��ϱ�?')">����</a>
				</div>
			</div>
			<!-- �Խ��� ������ ���� ��  -->


			<!-- Comment Area Start ��� ����Ʈ -->
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
									<p>����: ${e.evCont}</p>
									<%--���߿� ��÷���δ� ����� ���������ϵ��� �����ϱ� --%>
									<p>�̺�Ʈ ���� ���� :${e.evStatus}</p>
									<p>��÷���� (d:��÷ ��) : ${e.evWin}</p>
								</div>
							</div>
						
						<%--�ۼ��� ��ġ �� ���� �� ���� ��ư ���� --%>
						<!-- <form method="POST" name="evCommMod" action="evCommMod">
										<button type="submit">����</button>
									</form>  -->
						<c:choose>
						<c:when test="${sessionScope.sessionID == e.evId}">
						<div class="col-12">
							<button type='button' class='btn btn-outline-warning' data-toggle='modal' data-target='#modifyModal'>
							  ����</button>
							<a href="evCommDel?evNum=${vo.evNum}&evpNum=${e.evpNum}" class="btn btn-outline-danger"
						onclick="return confirm('������ �Ұ����մϴ�. ������ �����Ͻðڽ��ϱ�?')">����</a>
						</div>
														
							<div class="modal fade" id="modifyModal" role="dialog">
						    <div class="modal-dialog">
						        <div class="modal-content">
						            <div class="modal-header">
						                <button type="button" class="close" data-dismiss="modal">&times;</button>
						                <h4 class="modal-title">��� ����â</h4>
						            </div>
						            <div class="modal-body">
						                <div class="form-group">
						                    <label for="evWriter">�ۼ���</label>
						                    <input class="form-control" id="evWriter" name="evWriter" value="${e.evWriter}" readonly>
						                </div>
						                <div class="form-group">
						                    <label for="evCont">��� ����</label>
						                    <input class="form-control" id="evCont" name="evCont" placeholder="${e.evCont}">
						                </div>
						                <div class="form-group">
						                    <label for="evStatus">��������</label><br>
						                  <label><input class="form-control" type="radio" id="evStatus" name="evStatus" value="y" checked="checked">
						                    	����</label>
						                   <label><input class="form-control" type="radio" id="evStatus" name="evStatus" value="n">
						               			����</label>
						                </div>
						            </div>
						            <div class="modal-footer">
						                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">�ݱ�</button>
						                <button type="button" class="btn btn-success modalModBtn">����</button>
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
                                        <p><a href="#" class="post-author">����ۼ���2</a></p>
                                        
                                         <p>��۳���</p>
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
                                        <p><a href="#" class="post-author">����ۼ���3</a></p>
                                        
                                         <p>��۳���</p>
                                    </div>
                                </div>
                            </li> --%>
				</ol>
			</div>
			<!-- Comment Area Start ��� ����Ʈ �� -->


			<%--�α��� ��: ��� �ۼ� ���� --%>
			<c:choose>
				<c:when test="${sessionScope.sessionID != null}">
					<!-- ��� �Է��� -->
					<div class="post-a-comment-area mt-70">
						<h5>Leave a reply</h5>
						<!-- Reply Form -->
						<form action="evCommInsert?evNum=${vo.evNum}" method="post">
							<div>
								<!-- �̺�Ʈ �������� ���� -->
								<label> <input type="radio" name="evStatus"
									id="evStatus" checked="checked" value="y"> �̺�Ʈ ����
								</label> <label> <input type="radio" name="evStatus"
									id="evStatus" value="n"> �����ϱ�
								</label> <br> <input type="text" name="evWriter" id="evWriter"
									value="${sessionScope.sessionNNAME}" readonly>

								<!--�׽�Ʈ�� �г��Ӽ���	<input type="text" name="evWriter" id="evWriter" value="����3"
							readonly="readonly"> -->
							</div>
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="group">
									<%--���� ����  --%>
										<input type="hidden" name="evpreip" id="evpreip" value="<%=request.getRemoteAddr()%>"> 
										<input type="hidden" id="evId" name="evId" value="${sessionScope.sessionID}"> 
											<%--�ܷ�Ű --%>  
											<input type="hidden" name="evboardNum" id="evboardNum" value="${vo.evNum}">
									<%--���� ����  �� --%>	
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
											placeholder="��ũ�� ������ �����ּ���"></textarea>
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
				<%-- ��� �Է��� �� --%>
				<%--�α����� : ��� �ۼ� ��  X --%>
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

    // ��� ������
    var reply = $(this).parent().parent();
    // ��۹�ȣ
    var evpNum= reply.find("#evpNum").val();
    // ������ ��۳���
    var evCont = reply.find("#evCont").val();

    // AJAX��� : PUT
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
                alert("��� ���� �Ϸ�!");
                $("#modifyModal").modal("hide"); // Modal �ݱ�
                getReplies(); // ��� ��� ����
            }
        }
    });

});



</script>



<%@include file="../temp/footer.jsp"%>
