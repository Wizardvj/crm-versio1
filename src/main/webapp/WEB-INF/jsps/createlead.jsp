<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ include file="menu.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create lead</title>
</head>
<h2>Create lead</h2>
<body>
<form  action="savelead" method="post">
<table>
<tr>
<td>First_Name</td>
<td><input type="text" name="firstName"></td>
</tr>
<tr>
<td>Last_Name</td>
<td><input type="text" name="lastName"></td>
</tr>
<tr>
<td>Source</td>
<td><select name="source">
    <option value="television">television</option>
    <option value="radio">radio</option>
    <option value="news_paper">news_paper</option>
     <option value="online">online</option>
</select></td>
</tr>
<tr>
<td>email</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>mobile</td>
<td><input type="text" name="mobile"></td>
</tr>
</table>
<input type="submit" value="save">

</form>
</body>
</html>