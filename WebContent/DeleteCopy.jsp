<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Copy</title>
</head>
<body>
<h4>Please insert the book code, branch number and copy number of the entry you wish to delete.</h4>

<form method="post" action="DeleteCopyServlet">
Book Code :<br>
<input type="text" name="bookCode">
<br>
Branch Number:<br>
<input type="text" name="branchNum">
<br>
Copy Number:<br>
<input type="text" name="copyNum">
<br><br>
<input type="submit" value="submit">
</form>
</body>
</html>