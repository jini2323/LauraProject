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
<script src="${rPath}/js/ajaxDemo.js"></script>

<article>
	<header style="color: white">FBoard Detail</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<div class="container-fluid px-4">
			<h1 class="mt-4">Detail</h1>
			<div class="card mb-4">
				<div class="card-body">
					
						<div class="mb-3 mt-3">
							<label class="form-label">번호 : </label>${vo.fnum }
						</div>
						<div class="mb-3">
							<label class="form-label">제목 : </label> <input type="text"
								class="form-control" id="title" name="title" value="${vo.title}"
								disabled>
						</div>
						<div class="mb-3">
							<label class="form-label">내용 : </label>
							<textarea class="form-control" id="content" name="content"
								disabled>${vo.content}</textarea>
						</div>
						<div class="mb-3">
							<label class="form-label">이미지 : </label> <img
								src="${rPath}/img/fboard/${vo.imgn}"
								style="width: 80px; border: dotted 1px; cursor: pointer;"
								id="imgn">
						</div>
						<div class="mb-3">
							<label class="form-label">작성자(닉네임) : </label> <input type="text"
								class="form-control" id="fwriter" name="fwriter"
								value="${vo.fwriter}" disabled>
						</div>
						<div class="mb-3">
							<label class="form-label">비용 : </label> <input type="number"
								class="form-control" id="cost" name="cost"
								value="${vo.cost}" disabled>
						</div>
						<div class="mb-3">
							<label class="form-label">펀딩시작일 : </label> ${vo.sdate}
						</div>
						<div class="mb-3">
							<label class="form-label">펀딩마감일 : </label> ${vo.fdate}
						</div>
						<div class="mb-3">
							<label class="form-label">아이피 : </label><%=request.getRemoteAddr()%>
						</div>
						<a href="fboardList" class="btn btn-outline-secondary">list</a> <a
							href="modify?num=${vo.fnum}" class="btn btn-outline-warning">modify</a>
						<a href="remove?num=${vo.fnum}" class="btn btn-outline-danger"
							onclick="return confirm('삭제하시겠습니까?')">remove</a>
					
				</div>
			</div>
		</div>

	

		<!-- 댓글 -->
		<div class="container-fluid px-4">
			<h2 class="mt-4">MyComment Form</h2>
			<div class="card mb-4">
				<div class="card-body">
					<form action="commInsert" method="post">
						<div class="mb-3 mt-3">
							<input type="hidden" id="creip" name="creip" value="<%=request.getRemoteAddr()%>"> 
							<input type="hidden" id="fboard_fnum" name="fboard_fnum" value="${vo.fnum}">
							<label class="form-label">writer</label>
							<input type="text" 
								class="form-control" id="cwriter" name="cwriter" value="${sessionScope.sessionNNAME}" readonly="readonly" >
						</div>
						<div class="mb-3">
							<textarea class="form-control" id="ccomm" name="ccomm" required="required"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">등록</button>
					</form>

					<div>
						<table  class="table table-bordered" id="upboardTable">
							<thead>
							<tr>
								<th>댓글순서NO</th>
								<th>댓글작성자(닉네임)</th>
								<th>댓글내용</th>
								<th>작성날짜</th>
							</tr>
							</thead>
							<!-- 반복 시작 -->
							<tbody>
							<c:forEach var="e" items="${clist}">
								<tr>
									<td>${e.cnum}</td>
									<td>${e.cwriter}</td>
									<td>${e.ccomm}</td>
									<td>${e.cdate}</td>
								</tr>
							</c:forEach>
							</tbody>
							<!-- 반복 끝 -->
						</table>
					</div>
				</div>
			</div>
		<%@include file="../temp/pageProcess2.jsp"%>
		</div>

	</div>
</article>


<%@include file="../temp/footer.jsp"%>





