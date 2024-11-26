package com.Police_Officer;

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
 * Servlet implementation class police_info
 */
@WebServlet("/police_info")
public class police_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public police_info() {
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
		String Pname = (String) session.getAttribute("P_Full_Name");
    	String Pemail = (String)session.getAttribute("P_Email_Id");
		String Pmobile = (String) session.getAttribute("P_Mobile");
		String VID = request.getParameter("Victim_ID");
String typeofcrime=request.getParameter("crime");
		int flag = 0;
		String Status_info = "Accecpt";
		try {
			Connection conn = Dbconn.conn();
			Statement st = conn.createStatement();
			st.executeUpdate("update tblvictim_info set PStatus_info='"
					+ Status_info + "',Police_Name='" + Pname
					+ "',Police_Email_id='" + Pemail
					+ "',Police_Mobile_No='" + Pmobile + "',PStatus_info='"+typeofcrime+"' where VID='" + VID + "'");
			
			int noofnode=4;
			String data = Pname + "#" + Pemail + "#" + Pmobile + "#"+VID
					+"#"+ typeofcrime +"#"+ Status_info ;
			ptop.ptopverify(noofnode, data);pw.println("<script> alert('Update Info Successfully');</script>");
			RequestDispatcher rd = request
					.getRequestDispatcher("/Police_Officer_HomePage.jsp");
			rd.include(request, response);

		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
