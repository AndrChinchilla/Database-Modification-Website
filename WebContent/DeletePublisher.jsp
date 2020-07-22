<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Publisher</title>
</head>
<body>
<h4>Please insert the publisher code of the entry you wish to delete.</h4>

<form method="post" action="DeletePublisherServlet">
Publisher Code :<br>
<input type="text" name="publisherCode">
<br><br>
<input type="submit" value="submit">
</form>
</body>
</html>