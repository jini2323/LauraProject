<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<form action="ajaxTest" method="post">
		
	
	
	</form>
</div>


<script>
window.onload =function(){
	document.querySelector("#load1").onclick=function(e){
		e.preventDefault();
		let param = null;
		sendRequest("boardJsonList", param, res, "get");
	}
	
	
	document.querySelector("#sendAjax").onclick=function(e){
		e.preventDefault();
		//������ ��ü
		const data = {num:1,
				title:"������ ���� ��������0", 
				writer:"��浿",
				content:"���Ǵ� ��浿 �Ⱦ���",
				reip:"192.334.223",
				bdate: "2023-06-14"}
		let param = null;
		let type = "json"
		sendRequest("RequestParamDemo", param, res, "post", type);//���̽� ��Ʈ�ѷ� ���� ����� 
	}
	function res2() {
		if(xhr.readyState ===4 ){
			xhr.status === 200{
				let res = xhr.responseText;
				console.log(res);
			}
		}
	}
	
	
	
	function res() {
		if(xhr.readyState === 4){
			if(xhr.status ===200){
				let res = xhr.responseText;
				console.log(typeof(res)); //String -> json Ÿ��
				//�ڹٽ�ũ��Ʈ ��ü�� ��ȯ ****  Stringfy , JSON.parse()
				let jsObj = JSON.parse(res);
				console.log(typeof(jsObj));  //Obj
				
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
</body>
</html>