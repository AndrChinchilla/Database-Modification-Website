<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Publisher</title>
</head>
<body>
<h4>Please insert the publisher code and updated data of the entry you wish to update.</h4>
<br>
<form method="post" action="UpdatePublisherServlet">
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