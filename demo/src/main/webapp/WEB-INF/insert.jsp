<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>유저 삽입</title>
</head>
<body>
	<form action="<c:url value="/addMember"/>" method="get">
		
		<table width="500">
		
		<tr>
			<td>아이디</td>
			<td><input type="text" rows="16" cols="95" name="id" value="${id}"> </td>
		</tr>
		<tr>
			<td>저자</td>
			<td><input type="text" rows="16" cols="95" name="writer" value="${writer}"> </td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" rows="16" cols="95" name="title" value="${title}"> </td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" rows="16" cols="95" name="content" value="${content}"> </td>
		</tr>
		
		<tr>
			<td colspan="2"> 

				<a href="Test"><input type="submit"></a> 
			</td>
		</tr>
		
		</table>
	
	
	</form>
	
	
</body>
</html>