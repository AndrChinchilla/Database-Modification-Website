<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Author</title>
</head>
<body>
<h4>Please input the data of a author to add.</h4>

<br>
<form method="post" action="AddAuthorServlet">
Author Number :<br>
<input type="text" name="authorNum">
<br>
Last Name:<br>
<input type="text" name="authorLast">
<br>
First Name:<br>
<input type="text" name="authorFirst">
<br><br>
<input type="submit" value="submit">
</form>
</body>
</html>