/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
/**
 *
 * @author 503
 */
@WebServlet(urlPatterns = {"/AddBookServlet"})
public class AddBookServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        int year = Integer.parseInt(request.getParameter("year"));
        
        Book newBook = new Book(title, author, year);
        
        HttpSession session = request.getSession();
        ArrayList<Book> bookList = (ArrayList<Book>) session.getAttribute("bookList");
        if(bookList == null){
            bookList = new ArrayList<>();
            session.setAttribute("bookList", bookList);
        }
        
        bookList.add(newBook);
        response.sendRedirect("index.jsp");
    }

}
