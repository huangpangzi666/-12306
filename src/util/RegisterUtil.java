package util;

import java.util.regex.Pattern;

import dao.MyDao;

public class RegisterUtil {

	/**
	 * 检查用户名是否合法
	 * 
	 * @param username
	 *            用户名
	 * @return String 不合法理由
	 */
	public static String checkUsername(String username) {
		if (null == username || "".equals(username)) {
			return "账号不能为空";
		} else if (username.length() < 6) {
			return "账号长度不能小于6位";
		} else if (checkUser(username) == false) {
			return "用户名只能由字母、数字和_组成，须以字母开头";
		} else {
			MyDao mydao = new MyDao();
			boolean result = mydao.hasData("user_name", username);
			mydao.close();
			if (result) {
				return "该用户名已存在";
			}

		}
		return null;
	}

	private static boolean checkUser(String username) {
		Pattern pattern = Pattern.compile("[a-zA-Z][0-9a-zA-Z\\_]{5,29}");
		return pattern.matcher(username).matches();
	}

	/**
	 * 检查密码是否合法
	 * 
	 * @param password
	 *            密码
	 * @return String 不合法理由
	 */
	public static String checkPassword(String password) {
		if (null == password || "".equals(password)) {
			return "请输入密码";
		} else if (password.length() < 6) {
			return "密码长度不能小于6位";
		} else if (checkPass(password) == false || checkPassWord(password) == false) {
			return "格式错误，必须且只能包含字母、数字，下划线中的两种或者两种以上";
		}
		return null;
	}

	private static boolean checkPass(String password) {
		Pattern pattern = Pattern.compile("[0-9A-Za-z\\_]{6,20}");
		return pattern.matcher(password).matches();
	}
	private static boolean checkPassWord(String password) {
		int type = 0;
		boolean isLetters = false;
		boolean isNumber = false;
		boolean isUnderline = false;
		for(int i = 0 ; i < password.length(); i++) {
			if(!isLetters && (password.charAt(i) >= 'A' && password.charAt(i) <= 'Z') 
					|| (password.charAt(i) >= 'a' && password.charAt(i) <= 'z')) {
				type++;
				isLetters = true;
			}else if(!isNumber && (password.charAt(i) >= '0' && password.charAt(i) <= '9')) {
				type++;
				isNumber = true;
			}else if(!isUnderline && password.charAt(i) == '_') {
				type++;
				isUnderline = true;
			}
			if(type >= 2) {
				break;
			}
		}
		return type >= 2 ? true : false;
	}

	/**
	 * 检查确认密码是否合法
	 * 
	 * @param rePass
	 *            确认密码
	 * @param password
	 *            密码
	 * @return 不合法理由
	 */
	public static String checkConfirmPassword(String rePass, String password) {
		if (null == rePass || "".equals(rePass)) {
			return "请输入确认密码!";
		} else if (rePass.equals(password) == false) {
			return "确认密码与密码不同!";
		}
		return null;
	}

	/**
	 * 检查姓名是否通过
	 * 
	 * @param name
	 *            姓名
	 * @return 不通过理由
	 */
	public static String checkName(String name) {
		if (null == name || "".equals(name) || name.length() == 0) {
			return "请输入您的姓名!";
		} else {
			return null;
		}
	}

	/**
	 * 检查身份证是否通过
	 * 
	 * @param idNumber
	 *            身份证号码
	 * @return 不通过理由
	 */
	public static String checkIdNumber(String idNumber) {
		if (null == idNumber || "".equals(idNumber) || idNumber.length() == 0) {
			return "请输入证件号码!";
		} else if (idNumber.length() < 17 || idNumber.length() > 18 || !checkIdCard(idNumber)) {
			return "请正确输入18位的证件号码!";
		}
		return null;
	}

	private static boolean checkIdCard(String idNumber) {
		Pattern pattern = Pattern
				.compile("(^[1-9]\\d{5}(18|19|20)\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$)");
		if (!pattern.matcher(idNumber).matches()) {
			return false;
		} else {
			if (idNumber.length() == 18) {
				char[] charArray = idNumber.toCharArray();
				// 前十七位加权因子
				int[] idCardWi = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 };
				// 这是除以11后，可能产生的11位余数对应的验证码
				String[] idCardY = { "1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2" };
				int sum = 0;
				for (int i = 0; i < idCardWi.length; i++) {
					int current = Integer.parseInt(String.valueOf(charArray[i]));
					int count = current * idCardWi[i];
					sum += count;
					char idCardLast = charArray[17];
					int idCardMod = sum % 11;
					if (idCardY[idCardMod].toUpperCase().equals(String.valueOf(idCardLast).toUpperCase())) {
						return true;
					} else {
						System.out.println("身份证最后一位:" + String.valueOf(idCardLast).toUpperCase() + "错误,正确的应该是:"
								+ idCardY[idCardMod].toUpperCase());
						return false;
					}

				}

			}
		}
		return false;
	}
	
	/**
	 * 校验邮箱是否合法
	 * @param email 邮箱地址
	 * @return String 不合法理由
	 */
	public static String checkEmail(String email) {
		if(null == email || "".equals(email)) {
			return "请输入邮箱地址!";
		}else if(!checkemail(email)) {
			return "请输入正确的邮箱地址!";
		}
		return null;
	}
	
	private static boolean checkemail(String email) {
		Pattern pattern = Pattern.compile("[A-Za-z0-9]{1,40}@[A-Za-z0-9]{1,40}\\.[A-Za-z]{2,3}");
		return pattern.matcher(email).matches();
	}
	
	/**
	 * 验证手机号码是否合法
	 * @param mobileNo 手机号码
	 * @return String 不合法理由
	 */
	public static String checkMobileNo(String mobileNo) {
		if(null == mobileNo || "".equals(mobileNo)) {
			return "请输入手机号码!";
		}else if(!checkmobileNo(mobileNo)) {
			return "您输入的手机号码不是有效的格式!";
		}
		return null;
	}
	
	private static boolean checkmobileNo(String mobileNo) {
		Pattern pattern = Pattern.compile("[1][3,4,5,7,8][0-9]{9}");
		return pattern.matcher(mobileNo).matches();
	}
	public static void main(String[] args) {
		System.out.println(checkmobileNo("15274450509"));
	}
}