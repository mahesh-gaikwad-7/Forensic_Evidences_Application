package com.Forensic_Officer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.Dbconn;

/**
 * Servlet implementation class FLogin
 */
@WebServlet("/FLogin")
public class FLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		session.invalidate();

		out.println("<script type=\"text/javascript\">");
		out.println("alert('You are successfully logged out!');");
		out.println("</script>");
		request.getRequestDispatcher("index.jsp")
				.include(request, response);
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession(true);

		String emailid = request.getParameter("email");
		String password = request.getParameter("password");
		try {
			Connection conn = Dbconn.conn();
			Statement st = conn.createStatement();
			Statement st1 = conn.createStatement();

			ResultSet rs = st1
					.executeQuery("select * from tblregister_forensic where Email_Id='"
							+ emailid + "' and Password='" + password + "'");
			if (rs.next()) {

				session.setAttribute("pid", rs.getString("pid"));
				session.setAttribute("Email_Id", rs.getString("Email_Id"));
				session.setAttribute("Full_Name", rs.getString("Full_Name"));
				session.setAttribute("Mobile", rs.getString("Mobile"));
				pw.println("<script> alert(' Login Forensic Successfully');</script>");
				RequestDispatcher rd = request
						.getRequestDispatcher("/Forensic_Officer_HomePage.jsp");
				rd.include(request, response);
			} else {
				pw.println("<script> alert(' Wromg Email id and Password');</script>");
				RequestDispatcher rd = request
						.getRequestDispatcher("/Forensic_Login.jsp");
				rd.include(request, response);
			}

		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
