package com.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.bean.User;
import com.tools.DBtoolToManager;

public class UserDao {
	
	DBtoolToManager db=new DBtoolToManager();
	
	public int login(User user){
		
		String sql="select *from user where username='"+user.getUsername()+"' and password = '"+user.getPassword()+"' and position='"+user.getPosition()+"'";
		
		System.out.println(sql);
		
		ArrayList<HashMap<String, String>> list = db.query(sql);
		
		if(list.size()>0){
			return list.size();
		}else {
			return 0;
		}
	}
	public ArrayList<HashMap<String, String>> selectAll(){
		
		ArrayList<HashMap<String, String>> list=db.query("select *from user where position='教师'");
		
		return list;
	}
	
	public int delUser(User user){
		int i=db.updata("delete from user where id="+user.getId());
		return i;
	}
	
	public ArrayList<HashMap<String, String>> selectById(String id){
		
		ArrayList<HashMap<String, String>> list=db.query("select *from user where id="+id);
		
		return list;
	}
	
	public int UpdById(User user){
		
		
		String sql="update user set username='"+user.getUsername()+"',password='"+user.getPassword()+"',name='"+user.getName()+"' where id="+user.getId()+"";
		
		System.out.println(sql);
		int i=db.updata(sql);
		
		return i;
	}
	
	public int insertUser(User user){
		
		String sql="insert into user (username,password,name,position) values ('"+user.getUsername()+"','"+user.getPassword()+"','"+user.getName()+"','"+user.getPosition()+"')";
		
		System.out.println(sql);
		
		int i = db.updata(sql);
		
		return i;
	}
	
	public int updPwd(User user){
		
		String sql="update user set password='"+user.getPassword()+"' where username='"+user.getUsername()+"' and position='管理员'";
		
		int i = db.updata(sql);
		
		return i;
	}
	
	

}
