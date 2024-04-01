<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Show Page</title>
    </head>
    <body>
        <h2>Book List</h2>
        <table border="1">
            <thead>
                <th>Title</th>
                <th>Author</th>
                <th>Year</th>
            </thead>
            <tbody>
                <c:forEach var="book" items="${bookList}">
                    <tr>
                        <td>${book.title}</td>
                        <td>${book.author}</td>
                        <td>${book.year}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
