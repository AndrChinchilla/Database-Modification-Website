<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Publisher</title>
</head>
<body>
<h4>Please input the data of a publisher to add.</h4>

<br>
<form method="post" action="AddPublisherServlet">
Publisher Code :<br>
<input type="text" name="publisherCode">
<br>
Publisher Name:<br>
<input type="text" name="publisherName">
<br>
City:<br>
<input type="text" name="city">
<br><br>
<input type="submit" value="submit">
</form>

</body>
</html>