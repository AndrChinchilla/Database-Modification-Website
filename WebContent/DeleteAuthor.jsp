<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Author</title>
</head>
<body>

<h4>Please insert the author number of the entry you wish to delete.</h4>

<form method="post" action="DeleteAuthorServlet">
Author Number :<br>
<input type="text" name="authorNum">
<br><br>
<input type="submit" value="submit">

</form>
</body>
</html>