/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Higher_Officer;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDFont;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.font.Standard14Fonts;

import com.connection.Dbconn;

public class Report_Generate {

	public static PDDocument invc;
	int n;

	// Using the constructor to create a PDF with a blank page
	public Report_Generate() {
		// Create Document
		invc = new PDDocument();
		// Create Blank Page
		PDPage newpage = new PDPage();
		// Add the blank page
		invc.addPage(newpage);
	}

	// getdata() method is used to get the customer information and the product
	// details from the input stream
	public void WriteReport(String id) {
		// get the page
		 String uname="";
	        String uage="";
	        String udate ="";
	        String txtdocument =""; 
	        String gender ="";
	        String txt_Location ="";
	        String Digital_Evidence ="";
	        String Physical_Evidence ="";
	        String Biological_Evidence ="";
	        String txt_Reason_of_Death ="";
	        String Hname ="";
	        String Hmobile="";
	        String Hemail ="";
	        String blood_group ="";
	        String Fname ="";
	        String Fmobile="";
	        String Femail = "";
	        String Pname ="";
	        String Pmobile="";
	        String Pemail ="";
	        String Pcrime="";
	        
	        
	        
		PDPage mypage = invc.getPage(0);
		try {
			String query = "select * from tblvictim_info where VID='"
					+ id
					+ "' ";
			Connection conn = Dbconn.conn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if(rs.next()) {
				 uname = rs.getString(2);
				 uage = rs.getString(3);
				udate = rs.getString(4);
				 txtdocument = rs.getString(5);
				gender = rs.getString(6);
				 txt_Location = rs.getString(7);
				 Digital_Evidence = rs.getString(8);
				Physical_Evidence = rs.getString(9);
				 Biological_Evidence = rs.getString(10);
				 txt_Reason_of_Death = rs.getString(11);
				 Hname = rs.getString(18);
				 Hmobile= rs.getString(16);
				 Hemail = rs.getString(15);
				 blood_group = rs.getString(17);
			 Fname = rs.getString(19);
				 Fmobile= rs.getString(13);
				 Femail = rs.getString(12);
				 
				 Pname = rs.getString(21);
				 Pmobile= rs.getString(23);
				 Pemail = rs.getString(22);
				 Pcrime = rs.getString(20);
			}
			// Prepare Content Stream
			PDPageContentStream cs = new PDPageContentStream(invc, mypage);

			PDFont font = new PDType1Font(
					Standard14Fonts.FontName.HELVETICA_BOLD); // Or whatever
																// font you
																// want.

			int fontSize = 16; // Or whatever font size you want.

			String title = "Forensic Report"; // Or whatever title you want.
			int marginTop = 30; // Or whatever margin you want.
			float titleWidth = font.getStringWidth(title) / 1000 * fontSize;
			float titleHeight = font.getFontDescriptor().getFontBoundingBox()
					.getHeight()
					/ 1000 * fontSize;

			cs.beginText();
			cs.setFont(font, fontSize);
			cs.newLineAtOffset(
					(mypage.getMediaBox().getWidth() - titleWidth) / 2, mypage
							.getMediaBox().getHeight()
							- marginTop
							- titleHeight);
			cs.showText(title);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 710);
			cs.showText("Victim ID:" + id);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 690);
			cs.showText("Forensic Name:" + Fname );
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 670);
			cs.showText("Forensic Mobile No:" + Fmobile);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 650);
			cs.showText("Forensic Email ID:" + Femail);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 630);
			cs.showText("User Name:" + uname);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 610);
			cs.showText("User Age:" + uage);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 590);
			cs.showText("Date and Time:" + udate);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 570);
			cs.showText("Document:" + txtdocument);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 550);
			cs.showText("Gender:" + gender);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 530);
			cs.showText("Location:" + txt_Location);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 510);
			cs.showText("Digital Evidence:" + Digital_Evidence);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 490);
			cs.showText("Physical Evidence:" + Physical_Evidence);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 470);
			cs.showText("Biological Samples:" + Biological_Evidence);
			cs.endText();
			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 450);
			cs.showText("Reason of Death:" + txt_Reason_of_Death);
			cs.endText();
			// Hospital Name
			String htitle = "Hospital Report"; // Or whatever title you want.
			int hmarginTop = 340; // Or whatever margin you want.
			float htitleWidth = font.getStringWidth(htitle) / 1000 * fontSize;
			float htitleHeight = font.getFontDescriptor().getFontBoundingBox()
					.getHeight()
					/ 1000 * fontSize;

			cs.beginText();
			cs.setFont(font, fontSize);
			cs.newLineAtOffset(
					(mypage.getMediaBox().getWidth() - htitleWidth) / 2, mypage
							.getMediaBox().getHeight()
							- hmarginTop
							- htitleHeight);
			cs.showText(htitle);
			cs.endText();

			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 420);
			cs.showText("Hospital Name:" + Hname);
			cs.endText();
			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 400);
			cs.showText("Hospital Email ID:" + Hmobile);
			cs.endText();
			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 380);
			cs.showText("Hospital Mobile No:" + Hemail);
			cs.endText();
			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 360);
			cs.showText("Blood Group:" + blood_group);
			cs.endText();
			//
			String ptitle = "Police Report"; // Or whatever title you want.
			int pmarginTop = 428; // Or whatever margin you want.
			float ptitleWidth = font.getStringWidth(htitle) / 1000 * fontSize;
			float ptitleHeight = font.getFontDescriptor().getFontBoundingBox()
					.getHeight()
					/ 1000 * fontSize;

			cs.beginText();
			cs.setFont(font, fontSize);
			cs.newLineAtOffset(
					(mypage.getMediaBox().getWidth() - ptitleWidth) / 2, mypage
							.getMediaBox().getHeight()
							- pmarginTop
							- ptitleHeight);
			cs.showText(ptitle);
			cs.endText();
			
			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 320);
			cs.showText("Police Name:" + Pname);
			cs.endText();
			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 300);
			cs.showText("Police Email ID:" + Pmobile);
			cs.endText();
			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 280);
			cs.showText("Police Mobile No:" + Pemail);
			cs.endText();
			
			
			cs.beginText();
			cs.setFont(new PDType1Font(Standard14Fonts.FontName.TIMES_ROMAN),
					14);
			cs.newLineAtOffset(60, 260);
			cs.showText("Types of crime:" + Pcrime);
			cs.endText();
			// Close the content stream
			cs.close();
			// Save the PDF
			String outputPdfFilePath = Dbconn.filepath+id+".pdf";

			invc.save(outputPdfFilePath);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String args[]) {
        String size="2";
       
       
    }
}
