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
<title>Authors Table</title>
</head>
<body>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/henrybooks"
         user = "root"  password = "titylovu99"/>
         
       <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from Author;
      </sql:query>  
      
       <table border = "1" width = "100%">
         <tr>
            <th>authorNum</th>
            <th>authorLast</th>
            <th>authorFirst</th>
         </tr>
      
      <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.authorNum}"/></td>
               <td><c:out value = "${row.authorFirst}"/></td>
               <td><c:out value = "${row.authorLast}"/></td>
            </tr>
         </c:forEach>
      </table>
        

</body>
</html>