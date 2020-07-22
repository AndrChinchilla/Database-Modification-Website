<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Copy Table</title>
</head>
<body>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/henrybooks"
         user = "root"  password = "titylovu99"/>
         
       <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from copy;
      </sql:query>  
      
       <table border = "1" width = "100%">
         <tr>
            <th>bookCode</th>
            <th>branchNum</th>
            <th>copyNum</th>
            <th>quality</th>
            <th>price</th>
         </tr>
      
      <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.bookCode}"/></td>
               <td><c:out value = "${row.branchNum}"/></td>
               <td><c:out value = "${row.copyNum}"/></td>
               <td><c:out value = "${row.quality}"/></td>
               <td><c:out value = "${row.price}"/></td>
            </tr>
         </c:forEach>
      </table>
</body>
</html>