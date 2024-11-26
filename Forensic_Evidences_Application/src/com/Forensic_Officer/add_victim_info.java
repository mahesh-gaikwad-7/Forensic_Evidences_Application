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

import Blockchain.ptop;

import com.connection.Dbconn;

/**
 * Servlet implementation class add_victim_info
 */
@WebServlet("/add_victim_info")
public class add_victim_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_victim_info() {
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
		String fEmail_Id = (String) session.getAttribute("Email_Id");
		String fMobile = (String) session.getAttribute("Mobile");
		String FName = (String) session.getAttribute("Full_Name");
		String uname = request.getParameter("uname");
		String uage = request.getParameter("uage");
		String udate = request.getParameter("udate");
		String txtdocument = request.getParameter("txtdocument");
		String gender = request.getParameter("gender");
		String txt_Location = request.getParameter("txt_Location");
		String Digital_Evidence = request.getParameter("Digital_Evidence");
		String Physical_Evidence = request.getParameter("Physical_Evidence");
		String Biological_Evidence = request
				.getParameter("Biological_Evidence");
		String txt_Reason_of_Death = request
				.getParameter("txt_Reason_of_Death");

		try {
			Connection con = Dbconn.conn();
			String stauts = "0";
			String Blood_Group = "0";
			PreparedStatement ps = con
					.prepareStatement("insert into tblvictim_info(Name,Age,Date_and_Time,Document,Gender,Location,Digital_Evidence,Physical_Evidence,Biological_Evidence,Reason_of_Death,Forensic_Email_id,Forensic_Mobile_No,Status_info,Hospital_Email_id,Hospital_Mobile_No,Blood_Group,Hospital_Name,Forensic_Name) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, uage);
			ps.setString(3, udate);
			ps.setString(4, txtdocument);
			ps.setString(5, gender);
			ps.setString(6, txt_Location);
			ps.setString(7, Digital_Evidence);
			ps.setString(8, Physical_Evidence);
			ps.setString(9, Biological_Evidence);
			ps.setString(10, txt_Reason_of_Death);
			ps.setString(11, fEmail_Id);
			ps.setString(12, fMobile);
			ps.setString(13, stauts);
			ps.setString(14, stauts);
			ps.setString(15, stauts);
			ps.setString(16, Blood_Group);
			ps.setString(17, Blood_Group);
			ps.setString(18, FName);

			ps.executeUpdate();
			int noofnode=4;
			String data = uname + "#" + uage + "#" + udate + "#"+txtdocument
					+"#"+ gender +"#"+ txt_Location +"#"+ Digital_Evidence
					+"#"+ Physical_Evidence +"#"+ Biological_Evidence
					+"#"+ txt_Reason_of_Death+"#"+fEmail_Id+"#"+fMobile+"#"+stauts+"#"+stauts+"#"+Blood_Group+"#"+Blood_Group+"#"+FName;
			ptop.ptopverify(noofnode, data);

			pw.println("<script> alert('Add Save Successfully');</script>");
			RequestDispatcher rd = request
					.getRequestDispatcher("/F_Add_Patient_infoPage.jsp");
			rd.include(request, response);

		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
