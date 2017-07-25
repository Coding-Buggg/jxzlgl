package com.jxzl.zl;

	import java.sql.*;
	import java.util.List;

	import com.jxzl.common.db.BaseDAO;
	import com.jxzl.common.db.IParamBangding;
	import com.jxzl.common.db.IRowMapper;

	public class MaterialDAO extends BaseDAO{
	
		
	public void save(final Material material){  //����
//		String sql="insert into material values('"+material.getMname()+"','"+material.getType()+"','"+material.getMsize()+"','"+material.getTname()+"','"+material.getProfile()+"','"+material.getScDate()+"')";
//		super.updateBysql(sql);
		
		String sql="insert into material values(?,?,?,?,?,?,?)";
		super.updateBysql(sql, new IParamBangding(){
			public void bangdParam(PreparedStatement pstmt) throws SQLException {
				pstmt.setInt(1, material.getMid());
				pstmt.setString(2, material.getMname());
				pstmt.setString(3, material.getType());
				pstmt.setString(4, material.getMsize());
				pstmt.setString(5, material.getTname());
				pstmt.setString(6, material.getProfile());
				pstmt.setString(7, material.getScDate());
			}
			
		});
		
	}

	public void update(final Material material){   //�޸�
		String sql=String.format("update student set  mname='%s', type='%s',msize='%s', tname='%s', profile='%s', scDate='%s', where mid=%d",
				material.getMname(),material.getType(),material.getMsize(), material.getTname(),material.getProfile(),material.getScDate(),material.getMid());
		super.updateBysql(sql);
		
	}

	public void delete(int mid){     //ɾ��
		updateBysql("delete from material where mid="+mid);
		
	}

	public Material get(int mid){  //����mid���õ�һ������
		List<Material> material=queryBysql("select * from material where mid="+mid,new MaterialRowMapper());
		if(material== null || material.size() == 0)
			return null;
		else
			return material.get(0);
	}

	public 	List<Material> QueryAll(){   //��ѯ���еļ�¼
	     return	super.queryBysql("select * from material", new MaterialRowMapper());
	}
	
	public 	List<Material> quickSearch( String tname,String mname){   //�����ϴ���ʦ���������������������
	    if(tname==null)tname="";
	    if(mname==null)mname="";
		String sql="select * from material where tname like '%"+tname+"%' and mname like '%"+mname+"%' ";
		System.out.println(sql);
		return	super.queryBysql(sql, new MaterialRowMapper());
	}
	

	class MaterialRowMapper implements IRowMapper{
		public Object mappingRow(ResultSet rs) throws SQLException{
	    	Material  material=new Material();
	    	material.setMid(rs.getInt("mid"));
	    	material.setMname(rs.getString("mname"));
	    	material.setType(rs.getString("type"));
	    	material.setMsize(rs.getString("msize"));
	    	material.setTname(rs.getString("tname"));
	    	material.setProfile(rs.getString("profile"));
	    	material.setScDate(rs.getString("scDate"));
	    	return material;	
	             }
	       }

	
	

}

