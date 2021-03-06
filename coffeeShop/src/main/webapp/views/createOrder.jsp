<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
</head>
<body>
	<form:form modelAttribute="order" action="saveOrder">
		<table>
			<tr>
				<td><form:label path="orderDate">Order Date:</form:label></td>
				<td><form:input path="orderDate" /></td>
			</tr>
			<tr>
				<td><form:label path="person.firstName">First Name:</form:label></td>
				<td><form:input path="person.firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="person.lastName">Last Name:</form:label></td>
				<td><form:input path="person.lastName" /></td>
			</tr>
			<tr>
				<td><form:label path="person.email">Email:</form:label></td>
				<td><form:input path="person.email" /></td>
			</tr>
			<tr>
				<td><form:label path="person.phone">Phone:</form:label></td>
				<td><form:input path="person.phone" /></td>
			</tr>
			<tr>
				<td><form:label path="person.enable">Enable:</form:label></td>
				<td><form:checkbox path="person.enable" /></td>
			</tr>
			<tr>
				<td><form:label path="person.address.city">City:</form:label></td>
				<td><form:input path="person.address.city" /></td>
			</tr>
			<tr>
				<td><form:label path="person.address.state">State:</form:label></td>
				<td><form:input path="person.address.state" /></td>
			</tr>
			<tr>
				<td><form:label path="person.address.country">Country:</form:label></td>
				<td><form:input path="person.address.country" /></td>
			</tr>
			<tr>
				<td><form:label path="person.address.zipcode">Zipcode:</form:label></td>
				<td><form:input path="person.address.zipcode" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Save Your Order" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>