<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of all</title>
</head>
<h2>List of all Data</h2>
<body>
<table border="1">
<tr>
<th>Id</th>
<th>First_Name</th>
<th>Last_Name</th>
<th>Source</th>
<th>Email</th>
<th>Mobile</th>
</tr>
 <c:forEach var = "lead" items="${lead}">
      <tr>
<td>${lead.id}</td>
<td><a href="display_lead?id=${lead.id}">${lead.firstName}</a></td>
<td>${lead.lastName}</td>
<td>${lead.source}</td>
<td>${lead.email}</td>
<td>${lead.mobile}</td>
</tr>  
      </c:forEach>


</table>
</body>
</html>