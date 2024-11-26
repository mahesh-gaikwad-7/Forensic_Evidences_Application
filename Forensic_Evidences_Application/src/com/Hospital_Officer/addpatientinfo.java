package com.Hospital_Officer;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Blockchain.ptop;

import com.connection.Dbconn;

/**
 * Servlet implementation class addpatientinfo
 */
@WebServlet("/addpatientinfo")
public class addpatientinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addpatientinfo() {
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
		HttpSession session = request.getSession(true);
		String hospitalname = (String) session.getAttribute("H_Full_Name");
		String hospitalemail = (String) session.getAttribute("H_Email_Id");
		String hospitalmobile = (String) session.getAttribute("H_Mobile");
		String VID = request.getParameter("Victim_ID");
String Blood_Group=request.getParameter("Blood_Group");
		int flag = 0;
		String Status_info = "Accecpt";
		try {
			Connection conn = Dbconn.conn();
			Statement st = conn.createStatement();
			st.executeUpdate("update tblvictim_info set Status_info='"
					+ Status_info + "',Hospital_Email_id='" + hospitalemail
					+ "',Hospital_Mobile_No='" + hospitalmobile
					+ "',Blood_Group='" + Blood_Group + "',Hospital_Name='"
					+ hospitalname + "' where VID='" + VID + "'");
			
			
			int noofnode=4;
			String data = hospitalname + "#" + hospitalemail + "#" + hospitalmobile + "#"+VID
					+"#"+ Blood_Group +"#"+ Status_info ;
			ptop.ptopverify(noofnode, data);
			pw.println("<script> alert('Update Info Successfully');</script>");
			RequestDispatcher rd = request
					.getRequestDispatcher("/Hospital_HomePage.jsp");
			rd.include(request, response);

		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
