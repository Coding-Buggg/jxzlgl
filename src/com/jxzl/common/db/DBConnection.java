package com.jxzl.common.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {

//	加载驱动
	static{
		   try{
	             Class.forName("com.mysql.jdbc.Driver");
	         }catch(Exception e){
	             e.printStackTrace();
	         }
	}
	
//	数据库连接地址
	      private static String url="jdbc:mysql://127.0.0.1/jxzl";
	      private static String user="root";   //
	      private static String  password="root";
          
//           获得数据库的连接
          public Connection getConnection()  throws SQLException {      //声明异常，暂时不处理异常，谁调用谁处理。
        	  return DriverManager.getConnection(url,user,password);
          }
          
//          关闭数据库的连接
          public void closeConnection(Connection conn){
        	  
        	  try {
        		  if(conn !=null);
        		  conn.close();
        	  } catch (SQLException e) {
        		  e.printStackTrace();
        	  }
        	  
          }
          
//          关闭执行sql语句的对象Statement
          public void closeStatment(Statement stmt){
        	  try {
        		  if(stmt !=null)
        			  stmt.close();
        	  } catch (SQLException e) {
        		  e.printStackTrace();
        	  }
        	  
          }
          
//          关闭结果集
          public void closeResultSet(ResultSet rs){
        	  
        	  try {
      			if(rs !=null)
      			rs.close();
      		} catch (SQLException e1) {
      			e1.printStackTrace();
      		}
        	  
          }
          
}
