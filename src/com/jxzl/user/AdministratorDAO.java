package com.jxzl.user;
import java.sql.*;
import java.util.List;

import com.jxzl.common.db.BaseDAO;
import com.jxzl.common.db.IParamBangding;
import com.jxzl.common.db.IRowMapper;
import com.jxzl.user.TeacherDAO.TeacherRowMapper;

public class AdministratorDAO extends BaseDAO{

	public void save(final Administrator adm){  //保存
		
		String sql="insert into administrator values(?,?,?,?,?)";
		super.updateBysql(sql, new IParamBangding(){
			public void bangdParam(PreparedStatement pstmt) throws SQLException {
				pstmt.setString(1, adm.getAid());
				pstmt.setString(2, adm.getPassword());
				pstmt.setString(3, adm.getAname());
				pstmt.setString(4, adm.getAsex());
				pstmt.setString(5, adm.getAphone());
				
			}
			
		});
		
	}

	public void update(final Administrator administrator){   //修改
		String sql=String.format("update administrator set password='%s',aname='%s',asex='%s',aphone='%s'  where aid='%s'",
				administrator.getPassword(),administrator.getAname(),administrator.getAsex(),administrator.getAphone(),administrator.getAid());
		super.updateBysql(sql);
	}
	
	public void updatemm(String aid,String password ){   //修改密码
		String sql=String.format("update administrator set password='%s' where aid='%s'",
				password,aid);
		super.updateBysql(sql);
	}

	public void delete(String aid){     //删除
		updateBysql("delete from administrator where aid="+aid);
		
	}

	public Administrator get(String aid){  //根据aid来得到一个对象
		List<Administrator> administrators=queryBysql("select * from administrator where aid="+aid,new AdministratorRowMapper());
		if(administrators == null || administrators.size() == 0)
			return null;
		else
			return administrators.get(0);
	}

	public 	List<Administrator> QueryAll(){   //查询所有的记录
		
	     return	super.queryBysql("select * from administrator", new AdministratorRowMapper());
	}

	class AdministratorRowMapper implements IRowMapper{
		public Object mappingRow(ResultSet rs) throws SQLException{
			Administrator administrator=new Administrator();
			administrator.setAid(rs.getString("aid"));
			administrator.setPassword(rs.getString("password"));
			administrator.setAname(rs.getString("aname"));
			administrator.setAsex(rs.getString("asex"));
			administrator.setAphone(rs.getString("aphone"));
	    	return administrator;	
	             }
	       }


	public Administrator login(final String aid, final String password){
		String sql = "select * from administrator where aid=? and password=?";
		List<Administrator> administrator = queryBysql(sql
				, new IParamBangding(){
			public void bangdParam(PreparedStatement pstmt) throws SQLException {
				pstmt.setString(1, aid);
				pstmt.setString(2, password);
			}
		}
		, new AdministratorRowMapper()
		);
		
		if(administrator == null || administrator.size() == 0)
			return null;
		else
			return administrator.get(0);
	}

	}


