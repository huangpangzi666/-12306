package dao;

import java.sql.SQLException;
import java.util.Vector;

import javabean.OrderPassenger;
import javabean.Passenger;
import javabean.Station;
import javabean.User;

public class MyDao {

	private Dao dao = null;
	private static final String drivername="com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://localhost:3306/newdb";
	private static final String user = "root";
	private static final String password = "12346789";
	
	public MyDao() {
		dao = new Dao(drivername, url, user, password);
	}
	
	/**
	 * 根据用户名查询用户数据，如果查询全部数据，则传入空值
	 * @param username 用户名
	 * @return Vector<User> 用户集合
	 */
	public Vector<User> searchByUsername(String username){
		Vector<User> us = null;
		String sql;
		if(username != null) {
			sql = "SELECT * FROM station_user WHERE user_name = ?";
		}else {
			sql = "SELECT * FROM station_user";
		}
		
		try {
			us = dao.searchByUsername(sql, username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return us;
	}
	
	
	public String getUserId(String username) {
		String sql = "SELECT user_id FROM station_user WHERE user_name = ?";
		String result = null;
		try {
			result = dao.searchUserId(sql, username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * 检测数据库是否有此数据
	 * @param content 字段名
	 * @param data 数据内容
	 * @return boolean 有数据返回true 没有数据返回false
	 */
	public boolean hasData(String content, Object data) {
		boolean result = false;
		String sql = "SELECT * FROM station_user WHERE " + content + " = ?";
		try {
			result = dao.hasData(sql, data);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * 对数据库数据进行更新
	 * @param user 用户数据
	 * @return boolean 成功返回true 失败返回false
	 */
	public boolean executeQuery(User user) {
		String sql = "INSERT INTO "
				+ "station_user(user_name,user_pass,ID_number,user_email,user_phone,full_name)"
				+ " VALUES(?,?,?,?,?,?)";
		boolean result = false;
		try {
			if(dao.executeUpdate(sql, user.getUserName(),user.getUserPass(),
					user.getIdNumber(),user.getUserEmail(),user.getUserPhone(),user.getFullName()) > 0) {
				result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public Vector<Station> searchByPinyin(String pinyin){
		String sql = "SELECT station_id,station_name,station_code \r\n" + 
				"FROM station_name \r\n" + 
				"WHERE station_pinyin LIKE ?\r\n" + 
				"OR station_initials LIKE ?";
		Vector<Station> results = new Vector<>();
		try {
			results = dao.searchByPinyin(sql, pinyin,pinyin);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return results;
	}
	
	public Vector<Station> searchByStation(String stationName){
		String sql = "SELECT station_id,station_name,station_code \r\n" + 
				"FROM station_name \r\n" + 
				"WHERE station_name LIKE ?";
		Vector<Station> results = new Vector<>();
		try {
			results = dao.searchByPinyin(sql, stationName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return results;
	}
	
	public String searchStationCode(String stationName) {
		String sql = "SELECT station_code FROM station_name WHERE station_name = ?";
		String result = null;
		try {
			result = dao.searchStationCode(sql, stationName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result == null) {
			return stationName;
		}
		return result;
	}
	
	public Vector<Passenger> searchPasByUsername(String username){
		String sql = "SELECT p.* \r\n" + 
				"FROM station_passenger as p INNER JOIN station_user as u\r\n" + 
				"ON p.user_id = u.user_id\r\n" + 
				"WHERE u.user_name = ?";
		Vector<Passenger> results = null;
		try {
			 results = dao.searchPasByUsername(sql,username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return results;
	}
	
	public boolean insertOrder(Vector<OrderPassenger> passengers) {
		String sql = "INSERT INTO station_order_item(item_id,pa_id,item_price,pa_seat,pa_time,train_no,user_id)"
				+ " VALUES(?,?,?,?,?,?,?)";
		boolean result = false;
		try {
			result = dao.insertOrder(sql, passengers);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	public boolean setItemStatus(String orderId,int status) {
		String sql = "UPDATE station_order_item SET item_stauts = ? WHERE order_id = ?";
		int num = 0;
		try {
			num = dao.executeUpdate(sql, status,orderId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num > 0 ? true : false;
	}
	
	public boolean deleteItems(String[] itemId) {
		String sql = "DELETE station_order_item WHERE item_id = ?";
		int[] result = null;
		try {
			result = dao.deleteItems(sql,itemId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result == null) return false;
		for(int i = 0; i < result.length; i++) {
			if(result[i] <= 0) return false;
		}
		return true;
	}
	
	public boolean setOrderStatus(String orderId,int status) {
		String sql = "UPDATE station_orders SET order_status = ? WHERE order_id = ?";
		int num = 0;
		try {
			num = dao.executeUpdate(sql, status,orderId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num > 0 ? true : false;
	}
	
	public boolean updateOrderId(String[] itemId,float[] price,String OrderId) {
		String sql = "UPDATE station_order_item SET order_id = ?,item_price = ? WHERE item_id = ?";
		int num = 0;
		try {
			num = dao.updateOrderId(sql,itemId,price,OrderId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(num > 0) {
			return true;
		}else {
			return false;
		}
	}
	
	public Vector<OrderPassenger> searchOrderByUsername(String username,String status){
		String sql = "SELECT o.*,u.full_name\r\n" + 
				"FROM station_order_item as o inner join station_user as u\r\n" + 
				"on o.user_id = u.user_id\r\n" + 
				"where u.user_name = ? AND o.item_stauts = ?";
		Vector<OrderPassenger> result = null;
		try {
			result = dao.searchOrderByUsername(sql, username, status);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean insertOrders(String orderId,String userId,float price,int count) {
		String sql = "INSERT INTO station_orders(order_id,user_id,order_price,count) VALUES(?,?,?,?)";
		int num = 0;
		try {
			num = dao.insertOrders(sql,orderId,userId,price,count);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(num > 0) {
			return true;
		}else {
			return false;
		}
	}
	
	/**
	 * 关闭数据库连接
	 */
	public void close() {
		dao.close();
	}
	
}
