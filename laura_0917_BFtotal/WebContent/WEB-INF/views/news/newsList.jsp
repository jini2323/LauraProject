<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<link rel="stylesheet" href="${rPath}/css/board_under.css">



	<!-- 채지우 8/31일 이미지 & 텍스트 수정 -->
<div class="breadcumb-area bg-img" style="background-image: url(${rPath }/img/newsUpload/news3.jpg); height:310px;">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="imgText" style = "text-align: right;color: #fff;font-weight: bold;font-size: 38px;position: relative;left: 100px;top:80px;">
                        <span style = "background-color:rgba(0, 0, 0, 0.5);">라우라에서 가장 먼저 <br>
						영화소식을 전해드려요 </span>
                    </div>
                </div>
            </div>
        </div>
    </div>





		<div class="container">
			<!-- 0823_박형지 : 다른 게시판으로 넘어가는 상단 바 추가 -->
			<!-- 본문 윗 부분 bar -->
			<div>
				<!-- <h3 style = "font-weight: bold; margin-top: 50px;">커뮤니티</h3> -->
				<div class="ui-tab">
					<ul class="tab">
						<li>
							<a href="partyList">
								<div><span class="material-symbols-outlined">diversity_3</span></div>
								<div><span>파티모집</span></div>
							</a>
						</li>
						<li>
							<a href="trboardList">
								<div><span class="material-symbols-outlined">redeem</span></div>
								<div><span>굿즈양도</span></div>
							</a>
						</li>
						<li>
							<a href="newsList">
								<div><span class="material-symbols-outlined">newsmode</span></div>
								<div><span>뉴스</span></div>
							</a>
						</li>
					</ul>
				</div>
				<!-- 기사 나열 선택 select box 시작!!!!-->
				<div class="selectBox">
					<select class="select"
						onchange="if(this.value) location.href=(this.value);">
						<option value>전체</option>
						<option value="#">최신순</option>
						<option value="#">인기순</option>
						<option value="#">추천순</option>
					</select>
				</div>
				<!-- select box 끝!!!!! -->
			</div>
			<!-- 본문 윗 부분 bar 끝 !!! -->
			
			<div class="newslistform">
				<c:forEach var="e" items="${newsList}">
					<div class="single-blog-area blog-style-2 mb-50 wow fadeInUp"
						data-wow-delay="0.2s" data-wow-duration="1000ms">
						<div class="row align-items-center">
							<div class="col-12 col-md-6">
								<div class="single-blog-thumbnail">
									<a href="upNewsHit?nnum=${e.nnum}"><img
										src="${rPath}/img/news/${e.nimgn}"></a>
								</div>
							</div>
							<div class="col-12 col-md-6">
								<!-- Blog Content -->
								<div class="single-blog-content">
									<div class="line"></div>
									<p>조회수 ${e.nhit}</p>
									<h4>
										<a href="upNewsHit?nnum=${e.nnum}" class="post-headline">${e.ntitle }</a>
									</h4>
									<p>${e.npreview}</p>
									<div class="post-meta">
										<p>${e.ncompany}
											/ ${e.nwriter} 기자</a>
										</p>
										<p>${e.ndate}</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
		</div>
		<div style = "border-top:1px solid #eee; text-align:right;">
					<button type="button" class="btn btn-outline-secondary"
							onclick="location='news_upload'" style = " margin:30px 20px;">글작성</button>
				</div>
			<!-- 리스트 하단 검색, 페이지네이션, 글작성 부분 -->
			<div class="">

				<%-- 검색영역 --%>
				<div class="">
				<%@include file="../temp/pageProcess.jsp"%>
					<%-- 기존의 리스트 모델로 요청을 보낸다. --%>
					<form class="d-flex" method="post" action="fboardList" style = "display: flex; justify-content: center; gap:5px;margin-bottom:50px;">
							<select class="form-control btn-mini" name="searchType"
								id="searchType" style="width: 100px; height: 31px;">
								<option value="">검색</option>
								<option value="1">제목</option>
								<option value="2">이름</option>
								<option value="3">내용</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="검색어를 입력해주세요" name="searchValue" id="searchValue"
								style="width: 200px; height: 31px; color:#c6c6c6;">
							<button class="btn btn-outline-secondary" type="submit" style = "width: 80px; height: 31px;"><span>검색</span></button>
						</form>
				</div>
				<!-- n_search 끝 -->

				

				<!-- 글작성 버튼 영역 -->
				
			</div>
			<!-- n_uderbar 끝 -->
		</div>
		<!-- container -->

<%@include file="../temp/footer.jsp"%>