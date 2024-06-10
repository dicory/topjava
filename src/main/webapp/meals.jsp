<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <c:forEach var="item" items="${name}">
        <tr>
            <td>${item.getDateTime()}</td>
            <td>${item.getDescription()}</td>
            <td>${item.getCalories()}</td>
            <td><a href=#>Update</a></td>
            <td><a href=#>Delete</a></td>
            <td><a href="MelServlet?action=Delete&getId=<c:out value="${item.id}"/>">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<form method="post" action="delete">
    <input type="hidden" name="objectId" value="1"> 2
    <button type="submit">Удалить</button>
</form>
</body>
</html>