package com.jxzl.common.db;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface IRowMapper {    //½Ó¿Ú
	public Object mappingRow(ResultSet rs) throws SQLException;

}
