package util;

import java.util.Date;
import java.util.Random;

public class OrderUtil {

	public static String getOrderId() {
		return "O" + getId();
	}
	
	private static String getId() {
		long time = new Date().getTime();
		String ascii="0123456789";
		Random random = new Random();
		String rand = "";
		
		for(int i = 0; i < 4; i++) {
			rand = rand + ascii.charAt(random.nextInt(ascii.length()));
		}
		return rand + String.valueOf(time);
	}
	
	public static String getItemId() {
		return "I" + getId();
	}
}
