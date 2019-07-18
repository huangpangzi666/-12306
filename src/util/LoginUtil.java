package util;

import java.util.Vector;


import dao.MyDao;
import javabean.User;

public class LoginUtil {

	/**
	 * 根据数据库检查登录
	 * @param username 用户名
	 * @param password 密码
	 * @return String 无法登陆理由
	 */
	public static String checkAccount(String username,String password) {
		MyDao mydao = new MyDao();
		Vector<User> user = mydao.searchByUsername(username);
		if(user == null || user.size() == 0) {
			return "登录名不存在。";
		}else if(password.equals(user.get(0).getUserPass()) == false) {
			return "密码输入错误。如果输错次数超过4次，用户将被锁定。";
		}
		return null;
	}
	
	public static String getFullName(String username) {
		MyDao mydao = new MyDao();
		Vector<User> user = mydao.searchByUsername(username);
		if(user !=null && user.size() > 0) {
			return user.get(0).getFullName();
		}
		return null;
	}
	
}
