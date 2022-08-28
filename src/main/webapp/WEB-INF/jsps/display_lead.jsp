<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ include file="menu.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h2>Lead are below</h2>
<body>
First_Name:${lead.firstName }<br>
Last_Name:${lead.lastName }<br>
Source:${lead.source }<br>
Email:${lead.email }<br>
Mobile:${lead.mobile }<br>
<form action="covertlead" method="post">
<input type="hidden" name="id" value="${lead.id}">
<input type="submit" value="convert">

</form>
</body>
</html>