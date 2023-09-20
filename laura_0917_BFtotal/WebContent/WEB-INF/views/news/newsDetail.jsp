<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet" href="${rPath}/css/newsDetail.css">



<div class="single-blog-wrapper section-padding-0-100">
	<div class="container">
		<div class="row">
			<div class="col-12 col-lg-12">
				<div class="single-blog-area blog-style-2 mb-50">
					<div class="single-blog-area blog-style-2 mb-50">
						<div class="single-blog-thumbnail-news">
							<img src="${rPath}/img/news/${nvo.nimgn}" style = "width:600px;height:500px">
						</div>
					</div>
					<div class="single-blog-content">
						<span style = "font-size:18px;">${nvo.ncompany }</span>
						<h4>
							<a href="#" class="post-headline mb-0">${nvo.ntitle }</a>
						</h4>
						<div class="post-meta mb-20">
							<p style = "color:black;font-family:'NanumSquareNeo-Variable';">작성일  ${nvo.ndate }</p>
						</div>
						<div class  = "reporter">
							<img src="${rPath }/img/bg-img/director.jpg"><p style = "color:black;">${nvo.nwriter } 기자</p>
						</div>
						<p style = "color:black;font-family:'NanumSquareNeo-Variable';font-size:15px;">${nvo.ncontent}</p>
						<br><p>${nvo.nvideon }</p>
					</div>
				</div>

				<!-- About Author -->
				<div class = "reporter_profile">
					<div class="author-thumbnail">
						<img src="${rPath }/img/bg-img/director.jpg" alt="">
					</div>
					<div class="author-info">
						<span>${nvo.ncompany }</span>
						<span>${nvo.nwriter } 기자</span>
					</div>
				</div>

				<div class="form-group" style="text-align: right; margin-top: 10px;">
					<input type="button" value="목록" class="btn btn-danger"
						onclick="location='newsList'" />
				</div>
			</div>
		</div>
	</div>
</div>




<%@include file="../temp/footer.jsp"%>