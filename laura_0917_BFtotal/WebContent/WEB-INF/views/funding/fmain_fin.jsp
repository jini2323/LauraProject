<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<link rel="stylesheet" href="${rPath}/css/fmain_fin.css">


<div class = "container">
	<div class = "bar">
		<span>종료된 펀딩</span>
			<div class = "top-bar">
				<div>
					<select class = "selectBox" onchange="if(this.value) location.href=(this.value);">
						<option value>전체</option>
						<option value ="fmain_ing">진행중</option>
						<option value ="fmain_fin">종료된</option>
						<option value ="fmain_soon">오픈예정</option>
					</select>	
				</div>
					<ul>
						<li><a href = "#">최신순</a></li>
						<li><a href = "#">인기순</a></li>
						<li><a href = "#">추천순</a></li>
						<li><a href = "#">마감임박순</a></li>
						<li><a href = "#">모집금액순</a></li>
					</ul>
				</div>	
			</div>
		<div class="funding-movie">
			<div class="movie">
				<a href = "fdetail_fin"><img src="${rPath }/img/funding/poster1.jpg" alt="Image 1"></a>
				   <!-- 영화 제목 -->
				   <div class="caption">나를 구하지 마세요</div>
				   <!-- 영화 content -->
				   	<p class = "ff">난데없는 비행기 납치 사건의 유일한 해결사가 되어버린 부부. 숨겨왔던 내공을 펼치며 인질이 된 승객을 구하기 시작한다!</p>
				   		<!-- 진행바 위 text -->
				   		<div class = "text-style">
				   			<div class = "inner-text-style">
				   	 			<span><strong>50%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>10</span><span>일 남음</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				   		<!-- 프로세스 바 -->
					<div class="progress-bar">
					<div class="progress-bar-inner" style="width: 50%;"></div>
				</div>
			 </div>	    
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/poster5.png" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">겟아웃</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">흑인 남자가 백인 여자친구 집에 초대 받으면서 벌어지는 이야기</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span style = "color:#777; font-size: 12px;">215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>10</span><span>일 남음</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/poster6.jpg" alt="Image 1"></a>
					<!-- 영화 제목 -->
				   <div class="caption">HER</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/poster7.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">2012</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/poster8.jpg" alt="Image 1"></a>
					<!-- 영화 제목 -->
				   <div class="caption">스즈메의 문단속</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/poster9.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">위대한 쇼맨</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/poster10.jpg" alt="Image 1"></a>
					<!-- 영화 제목 -->
				   <div class="caption">바비</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/poster11.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">라라랜드</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/poster12.jpg" alt="Image 1"></a>
					<!-- 영화 제목 -->
				   <div class="caption">미니언즈</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/okja.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">TOMBOY</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">더넌</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">더넌</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">더넌</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">더넌</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">더넌</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- 영화 제목 -->
				   <div class="caption">더넌</div>
				   	  <!-- 영화 content -->
				      <p class = "ff">영화 관련 이야기 어쩌구 저쩌구 궁시렁 궁시렁</p>
				      <!-- 진행바 위 text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000원</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- 진행바 위 text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>

				  </div>
				  </div>
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



</html>

<%@include file="../temp/footer.jsp" %>