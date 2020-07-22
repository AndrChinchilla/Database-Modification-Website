<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>
</head>
<body>

<h4>Please input the data of a book to add.</h4>

<br>
<form method="post" action="AddBookServlet">
Book Code :<br>
<input type="text" name="bookCode">
<br>
Title:<br>
<input type="text" name="title">
<br>
Publisher Code:<br>
<input type="text" name="publisherCode">
<br>
Type:<br>
<input type="text" name="type">
<br>
Paperback (Y/N)<br>
<input type ="text" name= "paperback">
<br><br>
<input type="submit" value="submit">
</form>

</body>
</html>