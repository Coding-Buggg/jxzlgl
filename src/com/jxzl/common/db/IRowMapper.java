package com.jxzl.common.db;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface IRowMapper {    //�ӿ�
	public Object mappingRow(ResultSet rs) throws SQLException;

}
