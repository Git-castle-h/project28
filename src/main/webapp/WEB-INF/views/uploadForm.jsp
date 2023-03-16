<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import = "java.util.*"
    isELIgnored="false"
    %>
<%@taglib prefix ="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<h1>파일 업로드 하기</h1>
	<form action="${contextPath}/upload" method="post" enctype="multipart/form-data">
		<label>아이디:</label>
			<input type="text" name="id"><br>
		<label>이름:</label>
			<input type="text" name="name"><br>
			<input type="button" value="파일추가" onClick="fn_addFile()"><br><br>
			<div id="d_file">
			</div>
			<input type="submit" value=" 업로드"/>
	</form>
</body>
<script>
	
	

		let d_file = document.querySelector("#d_file");
		let cnt = 1;
		
		function fn_addFile(){
			let input = document.createElement("input");
			input.setAttribute("type","file");
			input.setAttribute("name","file"+cnt);
			
			let div = document.createElement("div");
			div.append(input);
			d_file.append(div);
			
			cnt++;
		}

</script>
</html>

