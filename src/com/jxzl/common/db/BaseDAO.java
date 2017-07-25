package com.jxzl.common.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class BaseDAO {
	private static final String logger = null;
	protected DBConnection dbconn;
	public BaseDAO(){
		dbconn=new DBConnection();
		
	}
        //ִ����/ɾ/�ĵȲ����������ؽ����
	       public int updateBysql(String sql){
	    	   Connection conn=null;
	    		Statement stmt=null;
	    		try{
	    			conn=dbconn.getConnection();
	    			stmt=conn.createStatement();
	    			return stmt.executeUpdate(sql);
	    		}catch(SQLException e){
	    			e.printStackTrace();
	    			return -1;
	    		}finally{
	    			dbconn.closeStatment(stmt);
	    			dbconn.closeConnection(conn);
	    		}
	    	}
	       
	       public int updateBysql(String sql,IParamBangding bang){
	    	   Connection conn=null;
	    		PreparedStatement pstmt=null;
	    		try{
	    			conn=dbconn.getConnection();
	    			pstmt=conn.prepareStatement(sql);
	    			bang.bangdParam(pstmt);  //������
	    			return pstmt.executeUpdate();
	    		}catch(SQLException e){
	    			e.printStackTrace();
	    			return -1;
	    		}finally{
	    			dbconn.closeStatment(pstmt);
	    			dbconn.closeConnection(conn);
	    		}
	    	}
	       
	       //��ѯ
	       public List queryBysql(String sql, IRowMapper mapper){
	    	   Connection conn = null;
	    		Statement stmt = null;
	    		ResultSet rs = null;
	    		List reList=new ArrayList();
	    		try{
	    			conn=dbconn.getConnection();
	    			stmt=conn.createStatement();
	    			rs=stmt.executeQuery(sql);
	    			while(rs.next()){  
	    				Object obj=mapper.mappingRow(rs);
	    				//Student  stu=new Student(rs.getInt("sid"),rs.getString("password") , rs.getString("sname"), rs.getString("ssex"), rs.getString("major"), rs.getString("syear"), rs.getString("sphone"));
	    			    reList.add(obj);
	    			}
	    		}catch(SQLException e){
	    			e.printStackTrace();
	    		}finally{
	    			dbconn.closeResultSet(rs);
	    			dbconn.closeStatment(stmt);
	    			dbconn.closeConnection(conn);
	    		}
	    		return reList;  
	       }
	       
	       public List queryBysql(String sql, IParamBangding bang, IRowMapper mapper){
	    	   Connection conn = null;
	    		PreparedStatement pstmt = null;
	    		ResultSet rs = null;
	    		List reList=new ArrayList();
	    		try{
	    			conn=dbconn.getConnection();
	    			pstmt=conn.prepareStatement(sql);
	    			bang.bangdParam(pstmt);  //������
	    			rs=pstmt.executeQuery();
	    			while(rs.next()){  
	    				Object obj=mapper.mappingRow(rs);
	    				//Student  stu=new Student(rs.getInt("sid"),rs.getString("password") , rs.getString("sname"), rs.getString("ssex"), rs.getString("major"), rs.getString("syear"), rs.getString("sphone"));
	    			    reList.add(obj);
	    			}
	    		}catch(SQLException e){
	    			e.printStackTrace();
	    		}finally{
	    			dbconn.closeResultSet(rs);
	    			dbconn.closeStatment(pstmt);
	    			dbconn.closeConnection(conn);
	    		}
	    		return reList;  
	       }
	       
//	       public int[] executeBatch(String[] sqls){      //ִ�ж�������������sql���
//	    	   Connection conn=null;
//	    	   Statement stmt=null;
//	    	   try {
//				        conn=dbconn.getConnection();
//				        stmt=conn.createStatement();
//				        for (int i = 0; i < sqls.length; i++) {
//							logger.debug(sqls[i]);
//							stmt.addBatch(sqls[i]);
//						}
//				        return stmt.executeBatch();
//			} catch (SQLException e) {
//				logger.debug("ִ��sql�쳣");
//				e.printStackTrace();
//				return null;
//			}finally{
//				dbconn.closeConnection(conn);
//				dbconn.closeStatment(stmt);
//				
//			}
//	    	   
//	       }
	       
	 }
