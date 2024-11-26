package com.Hospital_Officer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Dbconn;

/**
 * Servlet implementation class Hosp_Register
 */
@WebServlet("/Hosp_Register")
public class Hosp_Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hosp_Register() {
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
PrintWriter pw = response.getWriter();
		
		String fullname = request.getParameter("uname");
		String mobileno = request.getParameter("mobileno");
		String emailid = request.getParameter("email");
		/*String dob = request.getParameter("dob");*/
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");

		try {
			Connection conn = Dbconn.conn();
			Statement st = conn.createStatement();

			st.executeUpdate("insert into tblhospitalregister(Full_Name,Email_Id,Address,Mobile,Gender,Password) values('"
					+ fullname
					+ "','"
					+ emailid
					+ "','"
					+ address
					+ "','"
					+ mobileno
					+ "','"
					+ gender
					+ "','"
					+ password + "')");

			pw.println("<script> alert('Registerd Successfully');</script>");
			RequestDispatcher rd = request
					.getRequestDispatcher("/Hospital_Login.jsp");
			rd.include(request, response);
		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
