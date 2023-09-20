<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources" />

<link rel="stylesheet" href="${rPath}/css/tradeDetailForm.css">

	<div class="single-blog-wrapper">
		<div class="breadcumb-area bg-img"
			style="background-image: url(${rPath }/img/fboard_img/trade.jpg); height:310px;">
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<div class="breadcumb-content text-center">

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- party content & comm -->
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-12">
                	<div class = "pagemain">
	                    <div class="single-blog-area blog-style-2" style = "margin-top:0px;">
	                        <div class="single-blog-content">
	                            <div class="line"></div>
	                            <a href="#" class="post-tag">굿즈교환 게시글</a>
	                            <h4><a href="#" class="post-headline mb-0">${trvo.trtitle}</a></h4>
	                            <div class="post-meta mb-50">
	                                <div class="prwriter">
	                                <p>By <a href="#">${trvo.trwriter}</a></p>
	                                <!-- 작성날짜 -->
	                                <p><img src="${rPath }/img/bg-img/date.png" calss="write_date" alt="">&nbsp;2023-07-12</p>
	                                <!-- 댓글 수 -->
	                                <p><img src="${rPath }/img/bg-img/comm1.png" calss="comm_count" alt="">&nbsp;5</p>
	                                </div>
	                                <br>
	                                <!-- 이미지 -->
	                                <img
									src="${rPath}/img/fboard/${trvo.trimgn}"
									style="width: 300px;cursor: pointer;"
									id="imgn">
									<!-- 지역 -->
									<p>place :</p>
									&nbsp;${trvo.trloc} <br>
									<!-- 가격 -->
									<p>cost :</p>
									&nbsp;${trvo.trprice} <br>
		                            </div>
		                            <!-- 내용 -->
	                            <p>${trvo.trcontent}</p>
	                        </div>
	                    </div>
	                    
	                    <div class="buttons" style="text-align: right;">
	                    	<a href="trboardList" class="button">목록</a>
	                    	<a href="modify?trnum=${trvo.tradenum}" class="button">편집</a>
							<a href="remove?trnum=${trvo.tradenum}" class="button" onclick="return confirm('삭제하시겠습니까?')">삭제</a>
						</div>
	
						<!-- 댓글 입력폼 -->
	                    <div class="post-a-comment-area">
	                        <!-- Comment Area Start -->
		                    <div class="comment_area clearfix">
		                        <h5 class="title">댓글</h5>
		
		                        <ol>
		                            <!-- Single Comment Area -->
		                          <c:forEach var="e" items="${trclist}">
		                            <li class="single_comment_area">
		                                <!-- Comment Content -->
		                                <div class="comment-content d-flex">
		                                    <!-- Comment Author -->
		                                    <div class="comment-author">
		                                        <img src="${rPath }/img/making_funding/my.svg" alt="author"> <!-- 프로필사진 -->
		                                        <span>${e.tcwriter}</span>
		                                    </div>
		                                    <!-- Comment Meta -->
		                                    <div class="comment-meta">
		                                    	<span>${e.tcomm}</span>
		                                        <p>${e.tcdate}</p>
		                                    </div>
		                                </div>
		                            </li>
		                            </c:forEach>
		                        </ol>
		                   	 </div>
		                       
	                        <!-- Reply Form -->
	                        <form action="trcommInsert" method="post">
	                            <div class="partyComm">
	                                <div class="">
	                                    <div class="">
	                                    	<input type="hidden" id="trade_tradenum" name="trade_tradenum" value="${trvo.tradenum}">                 
	                                    </div>
	                                </div>
	                                <div class="mainComm">
	                                    <div class="mainPComm">
	                                    	<input type="text" id="tcwriter" name="tcwriter" value="${sessionScope.sessionNNAME}" readonly="readonly">
	                                        <textarea type="hidden" name="tcomm" id="tcomm" placeholder="댓글을 남겨주세요" required></textarea>
	                                    </div>
	                                    <div class="commBtn">
	                                    	<button type="submit" class="button">등록</button>
	                                	</div>
	                                </div>
	                            </div>
	                        </form>
	                    </div>
	                </div>
				</div>
	        </div>
	  	</div>


<!-- 댓글 수정삭제 작업중 -->
<script>
var writer = document.getElementsByClassName("post-author")
$(document).ready(function() {
    $(".delbtn.btn-light").each(function(index) {
        // value 값이 '테스트1'인 경우에만 버튼을 활성화
        if (writers[index].textContent.trim() === $(SessionScope.sessionNNAME)) {
            $(this).prop("disabled", false);
        }
    });
});
</script>
<!-- ##### Single Blog Area End ##### -->

<%@include file="../temp/footer.jsp"%>