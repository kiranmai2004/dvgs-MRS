package com.movie.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

 @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  String uname = request.getParameter("name");
  String uemail = request.getParameter("email");
  String upwd = request.getParameter("pass");
  String Reupwd = request.getParameter("re_pass");
  String umobile = request.getParameter("contact");

  RequestDispatcher dispatcher = null;
  Connection con = null;
  
  if (uname == null || uname.equals("")) {
    request.setAttribute("status", "invalidname");
    dispatcher = request.getRequestDispatcher("registration.jsp");
    dispatcher.forward(request, response);
    return;
  }
  
  if (uemail == null || uemail.equals("")) {
    request.setAttribute("status", "invalidemail");
    dispatcher = request.getRequestDispatcher("registration.jsp");
    dispatcher.forward(request, response);
    return;
  }
  
  if (upwd == null || upwd.equals("")) {
    request.setAttribute("status", "invalidpassword");
    dispatcher = request.getRequestDispatcher("registration.jsp");
    dispatcher.forward(request, response);
    return;
  }
  
  if (!upwd.equals(Reupwd)) {
    request.setAttribute("status", "invalidconfirmpassword");
    dispatcher = request.getRequestDispatcher("registration.jsp");
    dispatcher.forward(request, response);
    return;
  }
  
  if (umobile == null || umobile.equals("")) {
    request.setAttribute("status", "invalidmobile");
    dispatcher = request.getRequestDispatcher("registration.jsp");
    dispatcher.forward(request, response);
    return;
  }
  
  if (umobile.length() > 10 || umobile.length() < 10) {
    request.setAttribute("status", "invalidmobilelength");
    dispatcher = request.getRequestDispatcher("registration.jsp");
    dispatcher.forward(request, response);
    return;
  }
  
  try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "root");
    PreparedStatement pst = con.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)");
    pst.setString(1, uname);
    pst.setString(2, upwd);
    pst.setString(3, uemail);
    pst.setString(4, umobile);

    int rowCount = pst.executeUpdate();

    dispatcher = request.getRequestDispatcher("registration.jsp");

    if (rowCount > 0) {
      request.setAttribute("status", "success");
    } else {
      request.setAttribute("status", "failed");
    }
    
    dispatcher.forward(request, response);
    
    pst.close();
    con.close();
  } catch (Exception e) {
    e.printStackTrace();
  }
 }
}
