<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
	<h1 align = "center">Menu</h1>
	<table border = "1" style="margin-left:auto;margin-right:auto; width: 30%; height: 600px; border-color: red" >
		<tr>
		<th>Code</th>
		<th>Item</th>
		<th>Price</th>
		</tr>
		<c:forEach var="items" items="${foodItems}">
			<tr>
				<td> ${items.id} </td>
				<td> ${items.item} </td>
				<td> ${items.price} </td>
			</tr>	
		</c:forEach>
</table>
	
</body>
</html>