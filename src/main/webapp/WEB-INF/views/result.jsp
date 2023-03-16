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
<title>결과창</title>
</head>
<body>
<h1>업로드가 완료되었습니다.</h1>
<label>아이디 :</label>
<input type="text" name="id" value="${map.id}" readonly><br>
<label>이름 :</label>
<input type="text" name="name" value="${map.name}" readonly><br>
<input>
<div class="result-images">
	<c:forEach var="imageFileName" items="${map.fileList}">
		<img alt="" src="${contextPath }/download?imageFileName=${imageFileName}">
		<br><br>
	</c:forEach>
</div>
<a href="${contextPath }/form">다시 업로드 하기</a>
</body>
</html>