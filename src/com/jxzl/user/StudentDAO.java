package com.jxzl.user;

import java.sql.*;
import java.util.List;

import com.jxzl.common.db.BaseDAO;
import com.jxzl.common.db.IParamBangding;
import com.jxzl.common.db.IRowMapper;

public class StudentDAO  extends BaseDAO{
	
	
public void save(final Student stu){  //保存
//	String sql="insert into student value('"+stu.getSid()+"','"+stu.getPassword()+"',"
//			+ "'"+stu.getSname()+"','"+stu.getSsex()+"','"+stu.getMajor()+"',"
//			+ "'"+stu.getSyear()+"','"+stu.getSphone()+"')";
//	super.updateBysql(sql);
	
	String sql="insert into student values(?,?,?,?,?,?,?)";
	super.updateBysql(sql, new IParamBangding(){
		public void bangdParam(PreparedStatement pstmt) throws SQLException {
			pstmt.setInt(1, stu.getSid());
			pstmt.setString(2, stu.getPassword());
			pstmt.setString(3, stu.getSname());
			pstmt.setString(4, stu.getSsex());
			pstmt.setString(5, stu.getMajor());
			pstmt.setString(6, stu.getSyear());
			pstmt.setString(7, stu.getSphone());
			
		}
		
	});
	
}

public void update(final Student stu){   //修改
	String sql=String.format("update student set password='%s',sname='%s',ssex='%s',major='%s',syear='%s',sphone='%s'  where sid=%d",
			stu.getPassword(),stu.getSname(),stu.getSsex(),stu.getMajor(),stu.getSyear(),stu.getSphone(),stu.getSid());
	super.updateBysql(sql
//			, new IParamBangding(){
//		public void bangdParam(PreparedStatement pstmt) throws SQLException {
//			pstmt.setString(1, stu.getPassword());
//			pstmt.setString(2, stu.getSname());
//			pstmt.setString(3, stu.getSsex());
//			pstmt.setString(4, stu.getMajor());
//			pstmt.setString(5, stu.getSyear());
//			pstmt.setString(6, stu.getSphone());
//			pstmt.setInt(7, stu.getSid());
//		}
//		
//	}
	);
}

public void updatemm( int sid,String password){   //修改密码
	String sql=String.format("update student set password='%s' where sid=%d",
			password,sid);
	super.updateBysql(sql);
}

public void delete(int sid){     //删除
	updateBysql("delete from student where sid="+sid);
	
}

public Student get(int sid){  //根据sid来得到一个对象
	List<Student> student=queryBysql("select * from student where sid="+sid,new StudentRowMapper());
	if(student == null || student.size() == 0)
		return null;
	else
		return student.get(0);
}

public 	List<Student> QueryAll(){   //查询所有的记录
	
//     return	super.queryBysql("select * from student", new IRowMapper(){
//		    public Object mappingRow(ResultSet rs) throws SQLException{
//		    	Student  stu=new Student(rs.getInt("sid"),rs.getString("password") , rs.getString("sname"), rs.getString("ssex"), rs.getString("major"), rs.getString("syear"), rs.getString("sphone"));
//		    	return stu;
//		    }
//	});
     return	super.queryBysql("select * from student", new StudentRowMapper());
}

class StudentRowMapper implements IRowMapper{
	public Object mappingRow(ResultSet rs) throws SQLException{
    	Student  stu=new Student();
    	stu.setSid(rs.getInt("sid"));
    	stu.setPassword(rs.getString("password")) ;
    	stu.setSname(rs.getString("sname"));
    	stu.setSsex(rs.getString("ssex"));
    	stu.setMajor(rs.getString("major"));
    	stu.setSyear(rs.getString("syear"));
    	stu.setSphone(rs.getString("sphone"));
    	return stu;	
             }
       }


public Student login(final int sid, final String password){  //登录验证
	String sql = "select * from student where sid=? and password=?";
	List<Student> student = queryBysql(sql
			, new IParamBangding(){
		public void bangdParam(PreparedStatement pstmt) throws SQLException {
			pstmt.setInt(1, sid);
			pstmt.setString(2, password);
		}
	}
	, new StudentRowMapper()
	);
	
	if(student == null || student.size() == 0)
		return null;
	else
		return student.get(0);
}

}



