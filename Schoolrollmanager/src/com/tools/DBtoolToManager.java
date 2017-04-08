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

public class DBtoolToManager {
	public Connection con;
	public Statement statement;
	public ResultSet rs;
	
	public DBtoolToManager(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//������
			con=DriverManager.getConnection("jdbc:mysql://localhost:3308/schoolrollmanager?characterEncoding=UTF-8", "root", "mysql");
			//������߽�������
			statement=con.createStatement();
			//���Ӷ��󴴽�������
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	/* 
	 * �������
	 * @param sql ������sql���
	 * @return ����Ӱ�������
	 */
	public int updata(String sql){
		int num=-1;
		try {
			num=statement.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close();
		}
		
		return num;
	}
	/* 
	 * ��ͨ��ѯ
	 * @param sql ��ѯ��sql���
	 * @return ���ز�ѯ���
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
	 * �ر������
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
	 * ��ҳ��ѯ
	 * @param sql ��ѯ��sql���
	 * @param ys ��ѯ��ҳ��
	 * @param sjs ÿҳ��ʾ�������
	 * @return ���ز�ѯ���
	 */
	public ArrayList<HashMap<String, String>> pageQuerry(String sql,int ys,int sjs){
		String newSql=sql+" limit "+(ys-1)*sjs+","+sjs;
		ArrayList<HashMap<String, String>> arr=query(newSql);
		return arr;
	}
	
	
	public static void main(String[] args) {
		
		DBtoolToManager db=new DBtoolToManager();
		
		
		
		String sql="select *from user where username='admin' and password = 'admin' and position='管理员'";
		
		System.out.println(sql);
		
		ArrayList<HashMap<String, String>> list = db.query(sql);
		
		System.out.println(list.size());
		
	}
	
	


}
