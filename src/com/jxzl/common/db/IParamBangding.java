package com.jxzl.common.db;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public interface IParamBangding {  //绑定参数接口

	    public void bangdParam(PreparedStatement pstmt) throws SQLException;
}
