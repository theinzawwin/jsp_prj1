package com.bestbright;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {

	public Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_test_db","root","root");
		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		
	}
	public void saveGrade(Grade g) {
		try {
			Connection con=getConnection();
			String sql="insert into grade(name,teacher_name) values(?,?)";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, g.getName());
			pstmt.setString(2, g.getTeacherName());
			pstmt.executeUpdate();
			con.close();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public List<Grade> getGradeList(){
		List<Grade> gradeList=new ArrayList<Grade>();
		try {
			Connection con=getConnection();
			String  sql="select * from grade";
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()) {
				Grade g=new Grade(Integer.parseInt(rs.getString("id")), rs.getString("name"), rs.getString("teacher_name"));
				gradeList.add(g);
			}
			
		}catch(Exception e) {
			
		}
		return gradeList;
	}
}
