package com.jxzl.common.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {

//	��������
	static{
		   try{
	             Class.forName("com.mysql.jdbc.Driver");
	         }catch(Exception e){
	             e.printStackTrace();
	         }
	}
	
//	���ݿ����ӵ�ַ
	      private static String url="jdbc:mysql://127.0.0.1/jxzl";
	      private static String user="root";   //
	      private static String  password="root";
          
//           ������ݿ������
          public Connection getConnection()  throws SQLException {      //�����쳣����ʱ�������쳣��˭����˭����
        	  return DriverManager.getConnection(url,user,password);
          }
          
//          �ر����ݿ������
          public void closeConnection(Connection conn){
        	  
        	  try {
        		  if(conn !=null);
        		  conn.close();
        	  } catch (SQLException e) {
        		  e.printStackTrace();
        	  }
        	  
          }
          
//          �ر�ִ��sql���Ķ���Statement
          public void closeStatment(Statement stmt){
        	  try {
        		  if(stmt !=null)
        			  stmt.close();
        	  } catch (SQLException e) {
        		  e.printStackTrace();
        	  }
        	  
          }
          
//          �رս����
          public void closeResultSet(ResultSet rs){
        	  
        	  try {
      			if(rs !=null)
      			rs.close();
      		} catch (SQLException e1) {
      			e1.printStackTrace();
      		}
        	  
          }
          
}
