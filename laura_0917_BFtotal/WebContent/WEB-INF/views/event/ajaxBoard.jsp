<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<article>
	<header>Board Ajax Demo</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div>
	<%--�⺻ form���� �Ʒ�ó�� �����ؼ� ���� �س���  --%>
	<input type="hidden" name="reip" id="reip" value="<%=request.getRemoteAddr()%>">
	<p><input type="text" class="form-control" id="title" placeholder="�����Է�(4-100��)" name="title" maxlength="100"></p>	
	<p><textarea class="form-control" rows="3" id="content" name="content" placeholder="���� �ۼ�"></textarea></p>	
	<p><input type="text" class="form-control" id="writer" placeholder="�ۼ���(2-10��)" name="writer"></p>	
	
	
	<%--�⺻ form���� �Ʒ�ó�� �����ؼ� ���� �س���  --%>
		<button type="button" class="btn btn-outline-secondary" id="load1" >AjaxListLoad</button>
		<button type="button" class="btn btn-outline-secondary" id="sendAjax" >����������</button>
	</div>
	<div class="container">
		<table class="table table-borderd">
			<thead>
				<tr>
				<tr>
					<td>��ȣ</td>
					<td>����</td>
					<td>�ۼ���</td>
					<td>��ȸ��</td>
					<td>�ۼ���¥</td>
				</tr>
			</thead>
			<%--for start ����
			${vo.�Ӽ�} , ${map.key}
			List<BoardVO> list => BoardVO=> e
			--%>
			<tbody id="target">
			
			
			</tbody>
			<tfoot>
				<%--page ���� --%>
				<tr>
					<th colspan="5" style="text-align: center;">
						<ul class="pagination" style="margin: 0 auto; width: 35%">
							<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</th>
				</tr>
				<%--�˻� ���� --%>
				<tr>
					<th colspan="5">
						<form class="d-flex">
							<select class="form-control btn-mini" id="sel1"
								style="margin-left: 120px;">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="Search.." style="width: 300px">
							<button class="btn btn-outline-secondary" type="button">Search</button>
						</form>
					</th>
				</tr>
				<tr>
					<td colspan="5" style="text-align: right;">
						<!-- 
						      jQuery�� ���ۼ� ������ �̵���Ű��
						      id�� �ο��Ͽ� �����ڷ� selector�� ����ؼ� �̵���Ű��
						      footer.jsp���� �ۼ�.
						       -->
						<button type="button" class="btn btn-outline-secondary" id="wbtn" >���ۼ�</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</article>
<script>
	window.onload =function(){
		//���� �� 
		//var param = null;
		//var type = 'aa';
		//sendRequest("RequestParamDemo", param, res2, "post", type);
		
		
		//�׽�Ʈ��? 
		let number=1;
		document.querySelector("#load1").onclick=function(e){
			e.preventDefault();
			let param = null;
			sendRequest("boardJsonList", param, res, "get");
		}
		
		
		document.querySelector("#sendAjax").onclick=function(e){
			e.preventDefault();
			//������ ��ü
			/* const data = {num:1,
					title:"������ ���� ��������0", 
					writer:"��浿",
					content:"���Ǵ� ��浿 �Ⱦ���",
					reip:"192.334.223",
					bdate: "2023-06-14"} */
			//��ü�� �������� �����غ��� 
			const data = {}
			data.num=number;
			data.title=document.getElementById("title").value;
			data.writer=document.getElementById("writer").value;
			data.content=document.getElementById("content").value;
			data.reip=document.getElementById("reip").value;
			data.bdate="2023-06-15";
			let param = JSON.stringify(data); //json���� ��ȯ 
			let type = "json"
			alert(data.num);
			sendRequest("RequestParamDemo", param, res2, "post", type);//���̽� ��Ʈ�ѷ� ���� ����� 
			
			number++;
			
		}
		function res2() {
			if(xhr.readyState ===4 ){
			 if(xhr.status === 200) {
					let res = xhr.responseText;
					let jsObj = JSON.parse(res);
					//console.log(res);
					console.log("==============");
					console.log(jsObj);
					//UI ��ġ
					let htmls = "";
					for(let e in jsObj){
						htmls += "<tr><td>"+jsObj[e].num+"</td>"					
						htmls += "<td>"+jsObj[e].title+"</td>"					
						htmls += "<td>"+jsObj[e].writer+"</td>"	
						htmls += "<td>0</td>"	
						htmls += "<td>"+jsObj[e].bdate+"</td></tr>"					
					}
					
					
					document.getElementById("target").style.backgroundColor="pink";
					document.getElementById("target").style.color="red";
					//target.innerHTML = "<tr><td colspan ='5'>test</td></tr>";
					target.innerHTML = htmls;
					
					
				}
			}
		}
		
		
		
		function res() {
			if(xhr.readyState === 4){
				if(xhr.status ===200){
					let res = xhr.responseText;
					//console.log(typeof(res)); //String -> json Ÿ��
					//�ڹٽ�ũ��Ʈ ��ü�� ��ȯ ****  Stringfy , JSON.parse()
					let jsObj = JSON.parse(res);
					//console.log(typeof(jsObj));  //Obj
					
					//UI ��ġ
					let target = document.getElementById("target");
					let htmls = "";
					for(let e in jsObj){
						htmls += "<tr><td>"+jsObj[e].num+"</td>"					
						htmls += "<td>"+jsObj[e].title+"</td>"					
						htmls += "<td>"+jsObj[e].writer+"</td>"	
						htmls += "<td>0</td>"	
						htmls += "<td>"+jsObj[e].bdate+"</td></tr>"					
					}
					
					
					document.getElementById("target").style.backgroundColor="lightgray";
					document.getElementById("target").style.color="red";
					//target.innerHTML = "<tr><td colspan ='5'>test</td></tr>";
					target.innerHTML = htmls;
				}
			}
			
		}
		
	};
	

</script>

<%@include file="../temp/footer.jsp"%>