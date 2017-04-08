package com.dao;


import java.util.ArrayList;
import java.util.HashMap;

import com.tools.DBtool;

public class StudentDao {
	//添加学籍信息
	DBtool db = new DBtool();
	public int addSRInfo(String sno,String name ,String sex,String address,
			String born ,String postcode,String nation,String tel,String major,
			String admissiontime,int xz,String graduateschool,String idcard,String politicaloutlook){
		String sql = "INSERT INTO STUDENT (sno,name,sex,address,born,postcode,nation,tel,"
				+"major,admissionTime,xz,graduateschool,idcard,politicaloutlook)"+
		"VALUES('"+sno+"','"+name+"','"+sex+"','"+address+"','"+born+"','"+postcode+"','"+nation+"','"+tel+"'," +
				"'"+major+"','"+admissiontime+"',"+xz+",'"+graduateschool+"','"+idcard+"','"+politicaloutlook+"')";
		int num = db.updata(sql);
		return num;
		
	}
	//查询学号是否已经存在
	public int querySno(String sno){
		String sql = "SELECT * FROM student where sno="+sno;
		ArrayList<HashMap<String, String>> list = db.query(sql);
		if(list.size()>0){
			return 1;
		}
		return 0;
	}
	//查询学籍信息
	public ArrayList<HashMap<String,String>> querySRInfo(String sno,String name){
		
		String sql = "SELECT * FROM student where 1=1";
		if(sno!=null&&!sno.equals("")){
			sql+=" and sno like '%"+sno+"%'";
		}
		if(name!=null&&!name.equals("")){
			sql+=" and name like '%"+name+"%'";
		}
		System.out.println(sql);
		ArrayList<HashMap<String, String>>  list = db.query(sql);
		System.out.println(list.size());
		return list;
	}
	//删除学籍信息
	public int delSRInfo(String id){
		String sql = "DELETE FROM student WHERE id="+id;
		int num = db.updata(sql);
		return num;
	}
	public void close(){
		db.close();
	}
	public ArrayList<HashMap<String,String>> querySRDetailInfo(String id){
		String sql = "SELECT * FROM student WHERE id="+id;
		ArrayList<HashMap<String, String>> list = db.query(sql);
		return list;
	}
	public int updateSRInfo(String id,String sno,String name ,String sex,String address,
		String born ,String postcode,String nation,String tel,String major,
		String admissiontime,int xz,String graduateschool,String idcard,String politicaloutlook){
		String sql = "UPDATE student SET sno='"+sno+"' ,NAME='"+name+"' , sex='"+sex+"',address='"+address+"',born='"+born+"',postcode='"+postcode+"',nation='"+nation+"',tel='"+tel+"',major='"+major+"',admissionTime='"+admissiontime+"',idcard='"+idcard+"',politicaloutlook='"+politicaloutlook+"' WHERE id="+id;
		System.out.println(id+" | "+sno);
		int num = db.updata(sql);
//		System.out.println(id);
		return num;
	}
	
	public static void main(String[] args){
		StudentDao sd = new StudentDao();
		int a=10;
		while(a-->0){
			int i = sd.addSRInfo("04144063"+a, "邓凯文", "男", "贵港", "2016-10-24", "537100", "汉族", "15754322834", "计算机","2014-09-28", 4, "达开", "450802199502212013", "群众");
		}
	}
}
