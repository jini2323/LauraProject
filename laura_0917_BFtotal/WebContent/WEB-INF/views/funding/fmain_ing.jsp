<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fmain_ing.css">



<div class = "container">
	<div class = "bar">
		<span>���� ���� �ݵ�</span>
			<div class = "top-bar">
				<div>
					<select class = "selectBox" onchange="if(this.value) location.href=(this.value);">
						<option value>��ü</option>
						<option value ="fmain_ing">������</option>
						<option value ="fmain_fin">�����</option>
						<option value ="fmain_soon">���¿���</option>
					</select>	
				</div>
					<ul>
						<li><a href = "#">�ֽż�</a></li>
						<li><a href = "#">�α��</a></li>
						<li><a href = "#">��õ��</a></li>
						<li><a href = "#">�����ӹڼ�</a></li>
						<li><a href = "#">�����ݾ׼�</a></li>
					</ul>
				</div>	
			</div>
		<div class="funding-movie">
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/1.gif" alt="Image 1"></a>
				   <!-- ��ȭ ���� -->
				   <div class="caption">�����̸���</div>
				   <!-- ��ȭ content -->
				   	<p class = "ff">�������� ����� ��ġ ����� ������ �ذ�簡 �Ǿ���� �κ�. ���ܿԴ� ������ ��ġ�� ������ �� �°��� ���ϱ� �����Ѵ�!</p>
				   		<!-- ����� �� text -->
				   		<div class = "text-style">
				   			<div class = "inner-text-style">
				   	 			<span><strong>50%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>10</span><span>�� ����</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				   		<!-- ���μ��� �� -->
					<div class="progress-bar">
					<div class="progress-bar-inner" style="width: 50%;"></div>
				</div>
			 </div>	    
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/getout.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">�پƿ�</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">���� ���ڰ� ���� ����ģ�� ���� �ʴ� �����鼭 �������� �̾߱�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span style = "color:#777; font-size: 12px;">215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>10</span><span>�� ����</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/her.jpg" alt="Image 1"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">HER</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/2012.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">2012</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/jpn.jpg" alt="Image 1"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">������� ���ܼ�</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/showman.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">������ ���</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/barbi.png" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">�ٺ�</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/lala.jpg" alt="Image 1"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">��󷣵�</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/mini.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">�̴Ͼ���</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/TOMBOY.jpg" alt="Image 1"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">TOMBOY</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">����</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">����</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">����</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">����</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">����</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
				      <div class="progress-bar">
				      <div class="progress-bar-inner" style="width: 80%;"></div>
				 </div>
			</div>
			<div class="movie">
				<a href = "fboardDetail?fnum=19"><img src="${rPath }/img/funding/thenun.jpg" alt="Image 2"></a>
					<!-- ��ȭ ���� -->
				   <div class="caption">����</div>
				   	  <!-- ��ȭ content -->
				      <p class = "ff">��ȭ ���� �̾߱� ��¼�� ��¼�� �ý÷� �ý÷�</p>
				      <!-- ����� �� text -->
				   		<div class = "text-style" style = "display: flex; text-align: center; align-items: center; justify-content: space-between;">
				   			<div class = "inner-text-style">
				   	 			<span style = "color:#ff595e; font-size: 17px;"><strong>345%</strong></span>
						   		<span>215,456,000��</span>
					   		</div>
						   <div class = "d-day">
						   	 <span>D-10</span>
						   </div>
				   		</div> <!-- ����� �� text end -->
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