package com.jxzl.user;

import java.sql.*;
import java.util.List;

import com.jxzl.common.db.BaseDAO;
import com.jxzl.common.db.IParamBangding;
import com.jxzl.common.db.IRowMapper;


public class TeacherDAO  extends BaseDAO{
	
	
public void save(final Teacher  teacher){  //保存

	String sql="insert into teacher values(?,?,?,?,?,?,?)";
	super.updateBysql(sql, new IParamBangding(){
		public void bangdParam(PreparedStatement pstmt) throws SQLException {
			pstmt.setInt(1, teacher.getTid());
			pstmt.setString(2, teacher.getPassword());
			pstmt.setString(3, teacher.getTname());
			pstmt.setString(4, teacher.getTsex());
			pstmt.setString(5, teacher.getPost());
			pstmt.setString(6, teacher.getDept());
			pstmt.setString(7, teacher.getTphone());
			
		}
		
	});
	
}

public void update(Teacher teacher){   //修改
	String sql=String.format("update teacher set password='%s',tname='%s',tsex='%s',post='%s',dept='%s',tphone='%s' where tid=%d",
			     teacher.getPassword(),teacher.getTname(),teacher.getTsex(),teacher.getPost(),teacher.getDept(),teacher.getTphone(),teacher.getTid());
	super.updateBysql(sql);
	
}

public void updatemm( int tid,String password){   //修改密码
	String sql=String.format("update student set password='%s' where sid=%d",
			password,tid);
	super.updateBysql(sql);
}

public void delete(int tid){     //删除
	updateBysql("delete from teacher where tid="+tid);
	
}

public Teacher get(int tid){  //根据Tid来得到一个对象
	List<Teacher> teacher=queryBysql("select * from teacher where tid="+tid,new TeacherRowMapper());
	if(teacher == null || teacher.size() == 0)
		return null;
	else
		return teacher.get(0);
}

public 	List<Teacher> quickSearch( String tname){   //根据教师名得到一个对象
    if(tname==null)tname="";
	String sql="select * from teacher where tname like '%"+tname+"%' ";
	System.out.println(sql);
	return	super.queryBysql(sql, new TeacherRowMapper());
}

public 	List<Teacher> QueryAll(){   //查询所有的记录
     return	super.queryBysql("select * from teacher", new TeacherRowMapper());
    }

class TeacherRowMapper implements IRowMapper{
	public Object mappingRow(ResultSet rs) throws SQLException{
    	Teacher  teacher=new Teacher();
    	teacher.setTid(rs.getInt("tid"));
    	teacher.setPassword(rs.getString("password"));
    	teacher.setTname(rs.getString("tname"));
    	teacher.setTsex(rs.getString("tsex"));
    	teacher.setPost(rs.getString("post"));
    	teacher.setDept(rs.getString("dept"));
    	teacher.setTphone(rs.getString("tphone"));
    	return teacher;	
             }
    }



public Teacher login(final int tid, final String password){
String sql = "select * from teacher where tid=? and password=?";
List<Teacher> teacher = queryBysql(sql
		, new IParamBangding(){
	public void bangdParam(PreparedStatement pstmt) throws SQLException {
		pstmt.setInt(1, tid);
		pstmt.setString(2, password);
	}
}
, new TeacherRowMapper()
);

if(teacher == null || teacher.size() == 0)
	return null;
else
	return teacher.get(0);
}

}
