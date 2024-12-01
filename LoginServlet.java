package com.abhi.servlet;

import java.io.IOException;
import com.abhi.dao.UserDao;
import com.abhi.dao.UserDaoImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.abhi.dao.UserDaoImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userDao = new UserDaoImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");	
			
			if(userDao.isValidUser(username, password))
			{
				HttpSession session = request.getSession();
				session.setAttribute(username, username);
				response.sendRedirect("welcome.jsp");
			}
//			if(username.equals("shiv")) {
//				response.sendRedirect("welcome.jsp");
//			}
			
			else
			{
				response.sendRedirect("login.jsp?error=1");
				System.out.println("Error A gya");
				
			}
		}

}