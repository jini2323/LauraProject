<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/vote.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.ranking .img{}
</style>
</head>
<body>
	<div class="vote-wrap">
		<div class="vote-ranking">
			<img src = "${rPath }/img/vote/jennie.jpg">
			<img src = "${rPath }/img/vote/jennie.jpg">
			<img src = "${rPath }/img/vote/jennie.jpg">
		</div>
		
		<div class = "vote_list">
			<ul>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
						<div class="ranking-vote">
							<a href="#">
								<p class="material-symbols-outlined">how_to_reg</p>
								<p>투표하기</p>
							</a>
						</div>
					<div style="width: 100%; height: 15px; background: #e0e0e0">
						<div style="width: 80%; height: 15px; background-color: #b6e6fc"></div>
					</div>
				</li>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
				</li>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
				</li>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
				</li>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
				</li>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
				</li>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
				</li>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
				</li>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
				</li>
				<li>
					<img src = "${rPath }/img/vote/jennie.jpg">
				</li>
			</ul>
		</div>
	</div>


<style>
	.vote-wrap {margin: 0 auto; text-align: center}
	.vote-wrap .vote-ranking {}
	.vote-wrap .vote_list {}
	.vote-wrap .vote_list ul {display: flex; flex-wrap: wrap; text-align: center; justify-content: space-between; align-items: center}
	.vote-wrap .vote_list ul li {width: 150px; height: 200px; margin: 20px 0;}
	.vote-wrap .vote_list ul li img {width: 100%; height: 100%; object-fit:cover;}
	.vote-wrap .vote_list ul li .ranking-vote {border: 1px solid #b8edfa; padding: 4px 10px;}
</style>












































<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>













				<!-- main 시작 -->	
				<main>		
				<!-- 투표 top3 랭킹 현황 -->
				<div class = "ranking" style = "display: flex; text-align: center;">
					<a class = "img" href = "#"><img src = "${rPath }/img/vote/jennie.jpg" style = "border-radius: 50%;"></a>
					<a class = "img" href = "#"><img src = "${rPath }/img/vote/h.jpg" style = "border-radius: 50%; width: 30%"></a>
					<a class = "img" href = "#"><img src = "${rPath }/img/vote/jisoo.jpg" style = "border-radius: 50%;"></a>
				</div>
				  <div class="a101">
		 
				    <div class="item">
				      <img src="${rPath }/img/vote/jennie.jpg" alt="actor4">
				      <div class="caption">제니</div>
				      
					     
						 <!-- 프로세스 바 들어갈 곳 -->
						 <div class="progress-bar">
				        	<div class="progress-bar-inner" style="width: 50%;"></div>
				         </div>
						 
				    </div>
				   <div class="item">
				      <img src="${rPath }/img/vote/risa.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				     <div class="item">
				      <img src="${rPath }/img/vote/rose.jpg" alt="actor3">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				   <div class="item">
				      <img src="${rPath }/img/vote/jisoo.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				     <div class="item">
				      <img src="${rPath }/img/vote/h.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				    <div class="item">
				      <img src="${rPath }/img/vote/jang.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				     <div class="item">
				      <img src="${rPath }/img/funding_detail/risa.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				    <div class="item">
				      <img src="${rPath }/img/funding_detail/risa.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				     <div class="item">
				      <img src="${rPath }/img/funding_detail/risa.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				    <div class="item">
				      <img src="${rPath }/img/funding_detail/risa.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				     <div class="item">
				      <img src="${rPath }/img/funding_detail/risa.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				    <div class="item">
				      <img src="${rPath }/img/funding_detail/risa.jpg" alt="actor4">
				      <div class="caption">제니</div>
					      <div class = "voteBtn">
							<span class="material-symbols-outlined">
							 how_to_reg </span>
					        <p style="margin: 0;">투표하기</p>
					     </div>
				    </div>
				 </div>
		<!-- 페이징 -->
			<tr>
				<th style="text-align: center; ">
				      <ul class="pagination" style="margin:0 auto; width: 35%; padding-left: 115px; padding-top: 100px;">
						  <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
						  <li class="page-item active" ><a class="page-link" href="#">1</a></li>
						  <li class="page-item"><a class="page-link" href="#">2</a></li>
						  <li class="page-item"><a class="page-link" href="#">3</a></li>
						  <li class="page-item"><a class="page-link" href="#">4</a></li>
						  <li class="page-item"><a class="page-link" href="#">5</a></li>
						  <li class="page-item"><a class="page-link" href="#">Next</a></li>
				      </ul>
				 </th>
      		</tr>				 
		<!-- 페이징 처리 끝 -->
</main>
<!-- main 끝 -->	
</body>
</html>

<%@include file="../temp/footer.jsp" %>