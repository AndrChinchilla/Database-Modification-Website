<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Copy</title>
</head>
<body>
<h4>Please insert the book code, branch number, copy number and updated data of the entry you wish to update.</h4>

<br>
<form method="post" action="UpdateCopyServlet">
Book Code :<br>
<input type="text" name="bookCode">
<br>
Branch Number:<br>
<input type="text" name="branchNum">
<br>
Copy Number:<br>
<input type="text" name="copyNum">
<br>
Quality:<br>
<input type="text" name="quality">
<br>
Price<br>
<input type ="text" name= "price">
<br><br>
<input type="submit" value="submit">

</form>
</body>
</html>