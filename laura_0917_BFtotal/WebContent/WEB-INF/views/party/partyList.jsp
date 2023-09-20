<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/partyList1.css">	


	<!-- 채지우 8/30 이미지 & 텍스트 수정 -->
	<div class="breadcumb-area bg-img" style="background-image: url(${rPath }/img/fboard_img/party.jpg); height:310px;">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="imgText" style = "text-align: right;color: #fff;font-weight: bold;font-size: 38px;position: relative;left: 100px;top:80px;">
                        <span style = "background-color:rgba(0, 0, 0, 0.5);">같이 영화 볼 친구가 필요하세요?<br>
						라우라에서 구해보세요</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

<div class="container" id = "upboardTable">
    <!-- background 적용 끝 -->
		<table class="test-tbl">
			<thead>
				<!-- <h3 style="text-align: center; margin-top: 50px; font-weight: bold;">파티모집</h3> -->
				<div class="ui-tab">
					<ul class="tab">
						<li>
							<a href="partyList">
								<div><span class="material-symbols-outlined">diversity_3</span></div>
								<div><span>파티모집</span></div>
							</a>
						</li>
						<li style = "background-color: var(--mint-m-100, #E7F9F9);width: 150px;height: 100px;text-align: center;border-radius: 1rem;">
							<a href="trboardList">
								<div><span class="material-symbols-outlined">redeem</span></div>
								<div><span>굿즈양도</span></div>
							</a>
						</li>
						<li style = "background-color: var(--mint-m-100, #E7F9F9);width: 150px;height: 100px;text-align: center;border-radius: 1rem;">
							<a href="newsList">
								<div><span class="material-symbols-outlined">newsmode</span></div>
								<div><span>뉴스</span></div>
							</a>
						</li>
					</ul>
				</div>
				<div class="bar">
						<select class="selectBox" onchange="if(this.value) location.href=(this.value);">
							<option value>전체</option>
							<option value="#">최신순</option>
							<option value="#">인기순</option>
							<option value="#">추천순</option>
						</select>
				</div>
			</thead>
				<colgroup>
						<col width = "10%">
						<col width = "45%">
						<col width = "10%">
						<col width = "10%">
						<col width = "15%">
						<col width = "10%">
					</colgroup>
			<tbody>
			<tr class="test-tbl-title" style="border-top: 2px solid black; border-bottom: 1px solid #bcbcbc; height: 35px;" colspan="6">
				<td style = "text-align: center;"><span>No</span></td>
				<td style = "text-align: center;"><span>제목</span></td>
				<td style = "text-align: center;"><span>작성자</span></td>
				<td style = "text-align: center;"><span>조회수</span></td>
				<td style = "text-align: center;"><span>이미지</span></td>
				<td style = "text-align: center;"><span>댓글</span></td>
			</tr>
				<c:forEach var="e" items="${plist}">
						<tr class="test-tbl-item">
							<td style = "text-align: center;">
							<span>${e.partynum }</span>
							</td>
								<td style = "text-align: left; font-weight: bold;"><span><a href="upPHit?partynum=${e.partynum }">${e.partytitle}</a></span></td>
								<td><p style = "margin: 0; padding-top: 5px; text-align: center;">${e.pwriter }</p></td>
								<td><p style = "margin: 0; text-align: center;">조회 ${e.phit}</p></td>
							
							<td style = "text-align: center;"><a href="upPHit?partynum=${e.partynum }"><img src="${rPath}/img/fboard/${e.pimgn}" style="width: 45%; border-radius: 10%;"></a></td>
							<td style = "text-align: center;">
								<span class = "tbl-item-comments">댓글</span>
								<span></span>
							</td>
						</tr>
					</c:forEach>
					<tr>
					<td colspan="9" style="text-align: right;">
						<button type="button" class="btn btn-outline-secondary"
							onclick="location='upparty'" style = " margin:30px 20px;">글작성</button>
					</td>
				</tr>
				<tr>
				</tbody>

			<%-- page영역 --%>
			<tfoot style = "background-color:rgba(249, 250, 251, 1);">
			
				<%-- 글작성 영역 --%>
				
				<%@include file="../temp/pageProcess.jsp"%>
					<th colspan="9">
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
					</th>
			</tfoot>
		</table>
	</div>
<script>
const swiper = new Swiper('.sample-slider', {
	autoplay: true,
	loop: true,
    pagination: {                       //pagination(dots)
        el: '.swiper-pagination',
    },
    navigation: {                       //navigation(arrows)
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
})

	
</script>

<%@include file="../temp/footer.jsp"%>