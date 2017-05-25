<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty requestScope.orders }">
	No Orders Found!
</c:if>
<c:if test="${!empty requestScope.orders }">
	<table><tr>
			<th>Id</th>
			<th>Order Date</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>City</th>
			<th>State</th>
			<th>Country</th>
			<th>Zipcode</th>
			<th>Enable</th>
		</tr>
		<c:forEach items="${requestScope.orders }" var="order">
		<tr>
			<td>${order.id} </td>			
			<td>${order.orderDate} </td>			
			<td>${order.person.firstName} </td>			
			<td>${order.person.lastName} </td>			
			<td>${order.person.email} </td>			
			<td>${order.person.phone} </td>			
			<td>${order.person.address.city} </td>			
			<td>${order.person.address.state} </td>			
			<td>${order.person.address.country} </td>			
			<td>${order.person.address.zipcode} </td>			
			<td>${order.person.enable} </td>			
		</tr>
		</c:forEach>
	</table>
</c:if>
<br/>
<a href="/admin">Back To Main</a>
</body>
</html>