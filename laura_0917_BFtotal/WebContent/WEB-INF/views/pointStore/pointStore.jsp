<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/storeShop.css">


<div class = "container">
	<div class = "bar">
		<span>포인트 스토어</span>
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
					</ul>
				</div>	
			</div>
		<div class="pointShop_ItemList">
			<div class="pointshop_item">
				<a href = "pointstoreMain"><img src="${rPath }/img/pointStore/snoopy1.jpg" class = "img1"></a>
				<a href = "pointstoreMain"><img src="${rPath }/img/pointStore/snoopy2.jpg" class = "img-hover"></a>
				<div class = "item_info">
					<a href = "pointstoreMain"><span class = "itemName">25cm 하르방 스누피 인형</span></a>
					<div class = "salePrice">
						<div>
							<span class = "Pointprice">30,000P</span>
							<span class = "Pointprice2">20,000P</span>
						</div>
						<span class="material-symbols-outlined">shopping_cart</span>
					</div>
					<div class = "item_stuation">
						<span>세일</span>
						<span>무료배송</span>
					</div>
				</div>
			</div>  
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy3.jpg" class = "img1"></a>
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy4.jpg" class = "img-hover"></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy5.jpg" class = "img1"></a>
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy6.jpg" class = "img-hover"></a>
				   <div class="caption">35cm 스누피 인형</div>
				   <span class = "price">68000원</span>
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy7.jpg" class = "img1"></a>
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy8.jpg" class = "img-hover"></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="movie">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy5.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="movie">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy6.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="movie">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy7.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="movie">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy8.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy9.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy10.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy11.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy12.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy13.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy14.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy15.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
			</div>
			<div class="pointshop_item">
				<a href = "#"><img src="${rPath }/img/pointStore/snoopy16.jpg" ></a>
					<!-- 영화 제목 -->
				   <div class="caption">35cm 스누피 인형</div>
				   	  <!-- 영화 content -->
				      <span class = "price">68000원</span>
				      <!-- 진행바 위 text -->
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

<script>

</script>



<%@include file="../temp/footer.jsp" %>