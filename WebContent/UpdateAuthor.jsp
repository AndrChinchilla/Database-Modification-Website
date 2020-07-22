<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Authors</title>
</head>
<body>

<h4>Please insert the author number and updated data of the entry you wish to update.</h4>

<br>
<form method="post" action="UpdateAuthorServlet">
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