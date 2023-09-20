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
<link rel="stylesheet" href="${rPath}/css/style_mypage.css">
<script src="${rPath}/js/ajaxDemo.js"></script>


<div>
	<!-- 0712_마이페이지_버튼 -->
	<div class="row">
		<!-- 0703 카드1 -->
		<button class="col-lg-3 col-sm-6">
			<a href="#">
				<div class="card gradient-1">
					<div class="card-body">
						<h3 class="card-title text-white">정보 확인 / 수정</h3>
						<div class="d-inline-block">
							<h2 class="text-white">내 정보</h2>
						</div>
					</div>
				</div>
			</a>
		</button>
		<!-- 0703 카드2 -->
		<button class="col-lg-3 col-sm-6">
			<a href="#">
				<div class="card gradient-2">
					<div class="card-body">
						<h3 class="card-title text-white">펀딩내역 / 현황</h3>
						<div class="d-inline-block">
							<h2 class="text-white">펀딩</h2>
						</div>
					</div>
				</div>
			</a>
		</button>
		<!-- 0703 카드3 -->
		<button class="col-lg-3 col-sm-6">
			<a href="#">
				<div class="card gradient-3">
					<div class="card-body">
						<h3 class="card-title text-white">투표내역 / 현황</h3>
						<div class="d-inline-block">
							<h2 class="text-white">배우</h2>
						</div>
					</div>
				</div>
			</a>
		</button>
		<!-- 0703 카드4 -->
		<button class="col-lg-3 col-sm-6">
			<a href="#">
				<div class="card gradient-4">
					<div class="card-body">
						<h3 class="card-title text-white">내가 쓴 글 / 댓글</h3>
						<div class="d-inline-block">
							<h2 class="text-white">내 활동</h2>
						</div>
					</div>
				</div>
			</a>
		</button>
	</div>
	<!-- 마이펀딩리스트 -->
	<%-- <input type="hidden" id="fmem_num" value="${sessionScope.sessionNO }"> --%>
	<c:forEach var="e" items="${fplist}">
		제목: ${e.funtitle }
		펀딩작성자: ${e.funwriter }
		<c:forEach var="d" items="${e.funparti}">
		        펀딩금액: ${d.funmoney }
		        펀딩일자: ${d.joindate }
		  </c:forEach>
		<%-- 펀딩금액: ${e.funmoney }
		펀딩일자: ${e.joindate } --%>
	</c:forEach>
</div>


<%@include file="../temp/footer.jsp"%>