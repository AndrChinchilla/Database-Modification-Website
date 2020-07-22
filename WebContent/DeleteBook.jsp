<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book</title>
</head>
<body>
<h4>Please insert the book code of the entry you wish to delete.</h4>

<form method="post" action="DeleteBookServlet">
Book Code :<br>
<input type="text" name="bookCode">
<br><br>
<input type="submit" value="submit">

</form>
</body>
</html>