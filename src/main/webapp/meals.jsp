<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <title>Users</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h1>Hello</h2>
<a href=#>Add Meal</a>
<table border=1>
     <thead>
           <tr>
               <th>Date</th>
               <th>Description</th>
               <th>Calories</th>
               <th></th>
               <th></th>
           </tr>
     </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td><c:out value="${user.getDateTime}" /></td>
            <td><c:out value="${user.getDescription}" /></td>
            <td><c:out value="${user.getCalories}" /></td>
            <td><a href="MealServlet?action=delete&userId=<c:out value="${user.id}"/>">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>