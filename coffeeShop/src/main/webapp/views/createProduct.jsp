<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
</head>
<body>

<form:form modelAttribute="product" action="saveProduct">	
    <table>
      <tr>
        <td><form:label path="price">Price:</form:label></td>
        <td><form:input path="price" /></td>
      </tr>
      <tr>
        <td><form:label path="productName">Product Name:</form:label></td>
        <td><form:input path="productName" /></td>
      </tr>
      <tr>
        <td><form:label path="description">Description:</form:label></td>
        <td><form:textarea path="description" /></td>
      </tr>
      <tr>
        <td><form:label path="productType">Product Type:</form:label></td>
        <td><form:select path="productType" items="${productType}" /></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="Save Product" /></td>
      </tr>
    </table>
    </form:form>
</body>
</html>