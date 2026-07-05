package Servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.candidatebean;


/**
 * Servlet implementation class canreg
 */
@WebServlet("/canreg")
public class canreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public canreg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String mobile = request.getParameter("mobile");
	    String pass = request.getParameter("district");
	    String cpass = request.getParameter("assembly");

	    candidatebean v = new candidatebean();
	    v.setName(name);
	    v.setEmail(email);
	    v.setMobile(mobile);
	    v.setPass(pass);
	    v.setCapss(cpass);

	    inter n = new imple();
	    int b = n.creg(v);

	    if (b == 1) {
	        response.sendRedirect("candidatelog.jsp");  // Redirect to login on success
	    } else {
	        request.setAttribute("errorMessage", "E-mail Already Registerd. Please Use Different Email.");
	        request.getRequestDispatcher("cadidatereg.jsp").forward(request, response); // Forward back to the form
	    }
	}

	}


