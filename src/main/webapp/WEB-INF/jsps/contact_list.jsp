<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
       <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h2>List of all Contact</h2>
<body>
<table border="1">
<tr>
<th>Id</th>
<th>First_Name</th>
<th>Last_Name</th>
<th>Email</th>
<th>Mobile</th>
</tr>
 <c:forEach var ="leads" items="${leads}">
      <tr>
<td>${leads.id}</td>
<td>${leads.firstName}</td>
<td>${leads.lastName}</td>
<td>${leads.email}</td>
<td>${leads.mobile}</td>
</tr>  
      </c:forEach>


</table>
</body>
</html>