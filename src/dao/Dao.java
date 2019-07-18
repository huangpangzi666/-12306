package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.Date;
import java.util.Vector;

import com.mysql.fabric.xmlrpc.base.Data;

import javabean.OrderPassenger;
import javabean.Passenger;
import javabean.Station;
import javabean.User;

public class Dao {

	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;

	public Dao(String drivername, String url, String user, String password) {
		// TODO Auto-generated constructor stub
		try {
			Class.forName(drivername);
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * 访问数据库是否有此数据
	 * @param sql sql语句
	 * @param objects 数据内容
	 * @return boolean  有数据返回true 否则返回false 
	 * @throws SQLException 
	 */
	
	public boolean hasData(String sql,Object ...objects) throws SQLException {
		
		rs = executeQuery(sql,objects);
		if(rs.next()) {
			return true;
		}
		return false;
	}
	
	
	/**
	 * 查询数据库获取数据
	 * @param sql sql语句
	 * @param objects 查询内容
	 * @return ResultSet 结果集
	 * @throws SQLException
	 */
	private ResultSet executeQuery(String sql,Object ...objects) throws SQLException {
		ps = conn.prepareStatement(sql);
		for(int i = 0; i < objects.length; i++) {
			ps.setObject(i + 1, objects[i]);
		}
		rs = ps.executeQuery();
		return rs;
	}
	
	public String searchUserId(String sql,String username) throws SQLException {
		rs = executeQuery(sql, username);
		if(rs.next()) {
			return rs.getString("user_id");
		}else {
			return null;
		}
	}
	
	/**
	 * 
	 * @param sql sql语句
	 * @param username 用户名
	 * @return Vector<User> 查询的用户数据结果
	 * @throws SQLException
	 */
	public Vector<User> searchByUsername(String sql,String username) throws SQLException{
		Vector<User> result = new Vector<>();
		rs = executeQuery(sql, username);
		while(rs.next()) 
		{
			User user = new User();
			user.setUserId(rs.getInt("user_id"));
			user.setUserName(rs.getString("user_name"));
			user.setUserPass(rs.getString("user_pass"));
			user.setIdNumber(rs.getString("id_number"));
			user.setUserEmail(rs.getString("user_email"));
			user.setUserPhone(rs.getString("user_phone"));
			user.setFullName(rs.getString("full_name"));
			user.setUserStatus(rs.getBoolean("user_status"));
			result.add(user);
		}
		return result;
	}
	
	/**
	 * 更新数据
	 * @param sql sql语句
	 * @param objects 数据内容
	 * @return int 影响行数
	 * @throws SQLException 
	 */
	public int executeUpdate(String sql,Object ...objects) throws SQLException {
		ps = conn.prepareStatement(sql);
		for(int i = 0; i < objects.length; i++) {
			ps.setObject(i + 1, objects[i]);
		}
		return ps.executeUpdate();
	}
	
	public Vector<Station> searchByPinyin(String sql,Object ...objects) throws SQLException{
		Vector<Station> results = new Vector<Station>();
		rs = this.executeQuery(sql, objects);
		while(rs.next()) {
			Station station = new Station();
			station.setStationId(rs.getInt("station_id"));
			station.setStationName(rs.getString("station_name"));
			station.setStationCode(rs.getString("station_code"));
			results.add(station);
		}
		return results;
	}
	
	public String searchStationCode(String sql,Object ...objects) throws SQLException {
		String result = null;
		rs = this.executeQuery(sql, objects);
		if(rs.next()) {
			result = rs.getString("station_code");
		}
		return result;
	}
	
	public int[] deleteItems(String sql,String[] itemId) throws SQLException {
		ps = conn.prepareStatement(sql);
		for(int i = 0 ;i < itemId.length; i++) {
			ps.setString(1, itemId[i]);
			ps.addBatch();
		}
		return ps.executeBatch();
	}
	
	public Vector<Passenger> searchPasByUsername(String sql,Object ...objects) throws SQLException {
		Vector<Passenger> results = new Vector<>();
		rs = executeQuery(sql,objects);
		while(rs.next()) {
			Passenger passenger = new Passenger();
			passenger.setPaId(rs.getString("pa_id"));
			passenger.setUserId(rs.getString("user_id"));
			passenger.setPaName(rs.getString("pa_name"));
			passenger.setIdNumber(rs.getString("id_number"));
			passenger.setPaEmail(rs.getString("pa_email"));
			passenger.setPaPhone(rs.getString("pa_phone"));
			passenger.setPaStatus(rs.getBoolean("pa_Status"));
			results.add(passenger);
		}
		return results;
	}
	
	public int updateOrderId(String sql,String[] itemId,float[] price,String orderId) throws SQLException {
		ps = conn.prepareStatement(sql);
		for(int i = 0; i < itemId.length; i++) {
			ps.setString(1, orderId);
			ps.setFloat(2, price[i]);
			ps.setString(3, itemId[i]);
		}
		return ps.executeUpdate();
	}
	
	public boolean insertOrder(String sql,Vector<OrderPassenger> passengers) throws SQLException {
		conn.setAutoCommit(false);
		ps = conn.prepareStatement(sql);
		for(int i = 0; i < passengers.size(); i++) {
			ps.setString(1, passengers.get(i).getItemId());
			ps.setString(2, passengers.get(i).getPaId());
			ps.setFloat(3, passengers.get(i).getItemPrice());
			ps.setString(4, passengers.get(i).getPaSeat());
			ps.setDate(5,passengers.get(i).getPaTime());
			ps.setString(6, passengers.get(i).getTrainNo());
			ps.setString(7, passengers.get(i).getUserId());
			ps.addBatch();
		}
		int[] result = ps.executeBatch();
		for(int i = 0; i < result.length; i++) {
			if(result[i] <= 0) {
				conn.rollback();
				return false;
			}
		}
		conn.commit();
		return true;
		
	}
	
	public Vector<OrderPassenger> searchOrderByUsername(String sql,String username,String flag) throws SQLException{
		rs = executeQuery(sql, username,flag);
		Vector<OrderPassenger> passengers = new Vector<>();
		while(rs.next()) {
			OrderPassenger temp = new OrderPassenger();
			temp.setItemId(rs.getString("item_id"));
			temp.setPaId(rs.getString("pa_id"));
			temp.setUserId(rs.getString("user_id"));
			temp.setPaTime(rs.getDate("pa_time"));
			temp.setTrainNo(rs.getString("train_no"));
			temp.setPaSeat(rs.getString("pa_seat"));
			temp.setItemPrice(rs.getFloat("item_price"));
			temp.setUserName(rs.getString("full_name"));
			passengers.add(temp);
		}	
		return passengers;
	}
	
	public int insertOrders(String sql,String orderId,String userId,float price,int count) throws SQLException {
		ps = conn.prepareStatement(sql);
		ps.setString(1, orderId);
		ps.setString(2, userId);
		ps.setFloat(3, price);
		ps.setInt(4, count);
		return ps.executeUpdate();
	}
	
	/**
	 * 清除数据库除连接以外的东西
	 */
	public void clear() {

		try {
			if (ps != null) {
				ps.close();
			}
			if(rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * 关闭数据库
	 */
	
	public void close() {
		
		clear();
		try {
			if(conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
