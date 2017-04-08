package com.dao;


import java.util.ArrayList;
import java.util.HashMap;

import com.tools.DBtool;

public class AdminDao {
	DBtool db = new DBtool();
	public int queryPs(String username,String oldPassword){
		String sql = "select * from user where username='"+username+"' and password='"+oldPassword+"'";
		ArrayList<HashMap<String, String>> list = db.query(sql);
		if(list.size()>0){
			return 1;
		}
		return 0;
	}
	public int updatePs(String username,String password){
		String sql = "UPDATE USER SET password='"+password+"'  WHERE username='"+username+"'";
		int num = db.updata(sql);
		return num;
	}
	public void close(){
		db.close();
	}
}
