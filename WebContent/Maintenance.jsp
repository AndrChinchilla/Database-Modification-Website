<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Maintenance</title>
</head>
<body>
<h2>Add, Modify or Delete data from Henry Books Database</h2>
<br>
<form action = "MaintenanceServlet" method = "POST">
Enter Table:
<select name = "table">
<option>Book</option>
<option>Author</option>
<option>Copy</option>
<option>Publisher</option>
</select>


<br>

Function:
<select name = "function">
<option>Add</option>
<option>Delete</option>
<option>Update</option>
</select>

<input type="submit" value="Submit"/>

</form>

</body>
</html>