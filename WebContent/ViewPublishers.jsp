<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%><html>
<head>
<meta charset="ISO-8859-1">
<title>Publishers Table</title>
</head>
<body>

<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/henrybooks"
         user = "root"  password = "titylovu99"/>
         
       <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from Publisher;
      </sql:query>  
      
       <table border = "1" width = "100%">
         <tr>
            <th>publisherCode</th>
            <th>publisherName</th>
            <th>city</th>
                     </tr>
      
      <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.publisherCode}"/></td>
               <td><c:out value = "${row.publisherName}"/></td>
               <td><c:out value = "${row.city}"/></td>
           
            </tr>
         </c:forEach>
      </table>
        
</body>
</html>