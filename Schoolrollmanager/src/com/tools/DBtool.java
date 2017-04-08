package com.tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DBtool {
	public Connection con;
	public Statement statement;
	public ResultSet rs;
	
	public DBtool(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//加载驱动
			con=DriverManager.getConnection("jdbc:mysql://localhost:3308/schoolrollmanager?characterEncoding=UTF-8", "root", "mysql");
			//驱动管理者建立连接
			statement=con.createStatement();
			//连接对象创建语句对象
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	/* 
	 * 更新数据
	 * @param sql 操作的sql语句
	 * @return 返回影响的行数
	 */
	public int updata(String sql){
		int num=-1;
		try {
			num=statement.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}
	/* 
	 * 普通查询
	 * @param sql 查询的sql语句
	 * @return 返回查询数据
	 */
	public ArrayList<HashMap<String, String>> query(String sql){
		ArrayList<HashMap<String, String>> arr=new ArrayList<HashMap<String, String>>();
		try {
			rs=statement.executeQuery(sql);
			ResultSetMetaData rsmd=rs.getMetaData();
			int count=rsmd.getColumnCount();
			while (rs.next()) {
				HashMap<String, String> hs=new HashMap<String, String>();
				for (int i = 1; i < count+1; i++) {
					
					hs.put(rsmd.getColumnName(i), rs.getString(i));
				}
				arr.add(hs);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close();
		}
		
		return arr;
	}
	/* 
	 * 关闭数据流
	 */
	public void close(){
		try {
			if(con!=null){
				con.close();
			}
			if(statement!=null){
				statement.close();
			}
			if(rs!=null){
				rs.close();
			}
		} catch (Exception e) {
		}
	}
	/* 
	 * 分页查询
	 * @param sql 查询的sql语句
	 * @param ys 查询的页好
	 * @param sjs 每页显示多少数据
	 * @return 返回查询数据
	 */
	public ArrayList<HashMap<String, String>> pageQuerry(String sql,int ys,int sjs){
		String newSql=sql+" limit "+(ys-1)*sjs+","+sjs;
		ArrayList<HashMap<String, String>> arr=query(newSql);
		return arr;
	}
	
	
	public static void main(String[] args) {
		
		DBtool db=new DBtool();
		
		ArrayList<HashMap<String, String>> list = db.query("select *from user");
		
		
		System.out.println(list.size());
	}
	

}
