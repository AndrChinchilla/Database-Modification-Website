<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%><html>
<head>
<meta charset="ISO-8859-1">
<title>Wrote Table</title>
</head>
<body>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/henrybooks"
         user = "root"  password = "titylovu99"/>
         
       <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from wrote;
      </sql:query>  
      
       <table border = "1" width = "100%">
         <tr>
            <th>bookCode</th>
            <th>authorNum</th>
            <th>sequence</th>
           
         </tr>
      
      <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.bookCode}"/></td>
               <td><c:out value = "${row.authorNum}"/></td>
               <td><c:out value = "${row.sequence}"/></td>
              
            </tr>
         </c:forEach>
      </table>
</body>
</html>