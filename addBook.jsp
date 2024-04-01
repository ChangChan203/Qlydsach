<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book Page</title>
    </head>
    <body>
        <h2>Add Book</h2>
        <form action="AddBookServlet" method="post">
            <label for="title">Name</label><input id="title" name="title" type="text"><br>
            <label for="author">Name</label><input id="author" name="author" type="text"><br>
            <label for="year">Name</label><input id="year" name="year" type="text"><br>
            <input type="submit" value="Add">
        </form>
    </body>
</html>
