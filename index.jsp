<%@page import="java.util.ArrayList"%>
<%@page import="com.example.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%
    Arraylist<Book> bookList = (ArrayList<Book>) session.getAttribute("bookList");
    if (bookList == null){
        response.sendRedirect("addbook.jsp");
    }
    else{
        response.sendRedirect("showBooks.jsp");
    }
%>
