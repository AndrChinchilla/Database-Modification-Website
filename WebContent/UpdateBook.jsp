<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
<h4>Please insert the book code and updated data of the entry you wish to update.</h4>

<br>
<form method="post" action="UpdateBookServlet">
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