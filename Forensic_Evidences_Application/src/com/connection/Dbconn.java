package com.connection;

import java.sql.*;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.*;
import java.util.*;
import java.util.*;

public class Dbconn {
	
public static String filepath="D:/ProjectSoftware/Report/Report_Victim_ID_";
	
	public Dbconn() throws SQLException {
		// initComponents();
		// Connection con;

	}

	public static Connection conn() throws Exception {
		Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3307/23ci1611_forensic_evidences_systems",
				"root", "admin");

		return (con);

	}

	public static String processData(String id, String val1, String val2,
			String val3, String val4, String val5, String val6, String val7,
			String val8, String Nval7, String Eval8) throws Exception {

		String StatePrediction = "";

			int v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0, v7 = 0, v8 = 0, v9 = 0, v10 = 0, v11 = 0, v12 = 0, v13 = 0;

			int Sysbp = Integer.valueOf(val1);
			int dysbp = Integer.valueOf(val2);
			int Hrate = Integer.valueOf(val3);
			int qt = Integer.valueOf(val4);
			int pr = Integer.valueOf(val5);
			int oxy = Integer.valueOf(val6);
			int tempreture = Integer.valueOf(val7);
			int hemo = Integer.valueOf(val8);

			if (Sysbp <= 120 && Sysbp >= 80) {
				v1 = 1;
			}
			if (Sysbp > 120 && Sysbp <= 130) {
				v1 = 1;
			}
			if (Sysbp > 130 && Sysbp < 150) {
				v1 = 0;
			}
			if (Sysbp < 80 || Sysbp > 150) {
				v1 = 0;
			}
			//
			if (dysbp <= 90 && dysbp >= 80) {
				v2 = 1;
			}
			if (dysbp > 90 && dysbp <= 120) {
				v2 = 1;
			}
			if (dysbp > 120 && dysbp < 150) {
				v2 = 0;
			}
			if (dysbp < 80 && dysbp > 150) {
				v2 = 0;
			}
			//
			if (Hrate >= 60 && Hrate <= 70) {
				v3 = 1;
			}
			if (Hrate > 70 && Hrate <= 80) {
				v3 = 1;
			}
			if (Hrate < 40 && Hrate < 60) {
				v3 = 0;
			}
			if (Hrate < 60 || Hrate > 80) {
				v3 = 0;
			}
			//

			if (qt >= 390 && qt <= 450) {
				v4 = 1;
			}
			if (qt > 450 || qt < 390) {
				v4 = 0;
			}
			if (pr <= 200 && pr >= 80) {
				v5 = 1;
			}
			if (pr > 200 || pr < 80) {
				v5 = 0;
			}
			//
			if (tempreture == 36 || tempreture == 37) {
				v6 = 1;
			}
			if (tempreture >= 35 && tempreture <= 37) {
				v6 = 1;
			}

			if (tempreture < 35) {
				v6 = 0;
			}
			if (tempreture > 37) {
				v6 = 0;
			}
			if (oxy <= 100 && oxy >= 95) {
				v7 = 1;
			}
			if (oxy < 95 && oxy >= 90) {
				v7 = 1;
			}
			// 0=c,1=n
			if (oxy >= 70 && oxy < 90) {
				v7 = 0;
			}
			if (oxy < 90 || oxy > 100) {
				v7 = 0;
			}

			if (hemo <= 120) {
				v8 = 1;
			}
			if (hemo <= 300 && hemo > 120) {
				v8 = 1;
			}
			if (hemo <= 400 && hemo > 310) {
				v8 = 0;
			}
			if (hemo > 400) {
				v8 = 0;
			}

			String values = v1 + "," + v2 + "," + v3 + "," + v4 + "," + v5
					+ "," + v6 + "," + v7 + "," + v8;
			// /////////////// Calculate the Regression base current state
			// scenario
			// ///////////////////////////////////////////////////////////////
			// double currentState = (double) values / 7;
			int tempMax = getsimilar(values);

			// System.out.println("V=>" + tempMax);
			double Th1 = 0.55;
			
			if (tempMax == 1) {
				StatePrediction = "Normal";
			} else {
				StatePrediction = "Critical";
			}
			// System.out.println("PRedicted Set \t:" + StatePrediction);

		
		return StatePrediction;
	}

	public static int getsimilar(String inputArray) {
		String[] val = inputArray.split(",");
		HashMap<Integer, Integer> map = new HashMap<>();
		int maxValue = 0;
		int zero = 0, one = 1;
		for (int i = 0; i < val.length; i++) {
			if (val[i].equals("0")) {
				zero++;
			} else {
				one++;
			}

		}
		int max = 0;
		map.put(0, zero);
		map.put(1, one);

		int maxValueInMap = (Collections.max(map.values()));

		for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
			if (entry.getValue() == maxValueInMap) {
				max = entry.getKey();
			}
		}
		// System.out.println("Max=>"+max);
		Random r = new Random();
		if (Math.random() < 0.02) {
			maxValue = r.nextInt(2);
		} else if (max == 0) {
			maxValue = 0;
		} else {
			maxValue = 1;
		}
		return maxValue;
	}

	public static void main(String args[]) {

	}
}
