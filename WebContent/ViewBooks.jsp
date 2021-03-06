<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books Table</title>
</head>

<body>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/henrybooks"
         user = "root"  password = "titylovu99"/>
         
       <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from Book;
      </sql:query>  
      
       <table border = "1" width = "100%">
         <tr>
            <th>bookCode</th>
            <th>title</th>
            <th>publisher</th>
            <th>type</th>
            <th>paperback</th>
         </tr>
      
      <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.bookCode}"/></td>
               <td><c:out value = "${row.title}"/></td>
               <td><c:out value = "${row.publisher}"/></td>
               <td><c:out value = "${row.type}"/></td>
               <td><c:out value = "${row.paperback}"/></td>
            </tr>
         </c:forEach>
      </table>
        
</body>
</html>