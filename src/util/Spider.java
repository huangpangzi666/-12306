package util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.CookiePolicy;
import java.net.CookieStore;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.httpclient.Cookie;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;

import net.sf.json.JSONObject;

public class Spider {

	private static String cookies = null;
	private static CookieStore cookieStore = null;

	/**
	 * 通过get方法获取XHR信息
	 * @param pageUrl 网页地址
	 * @return String JSON格式的数据
	 */
	public static String getStringforXHR(String pageUrl) {
		URL url;
		int responseCode;
		HttpURLConnection urlConnection = null;
		BufferedReader reader = null;
		Spider.trustAllHttpsCertificates();
		StringBuilder message = new StringBuilder();
		try {
			url = new URL(pageUrl);
			urlConnection = (HttpURLConnection) url.openConnection();
			urlConnection.setRequestMethod("GET");
			//System.out.println("Set-Cookie: " + urlConnection.getHeaderField("Set-Cookie"));
			//伪造浏览器
			urlConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36");
			//伪造主页
			urlConnection.setRequestProperty("Host", "kyfw.12306.cn");
			//禁用网络缓存
			urlConnection.setUseCaches(false);
			//设置可以读入
			urlConnection.setDoInput(true);
			//设置自动执行http重定向
			//urlConnection.setInstanceFollowRedirects(true);
			responseCode = urlConnection.getResponseCode();
			if(responseCode == 200) {
				
				reader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream(), "utf-8"));
				String line = null;
				while((line = reader.readLine()) != null) {
					message.append(line);
				}
			}else {
				message.append("request fails");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(urlConnection != null) {
				urlConnection.disconnect();
			}
			if(reader != null) {
				try {
					reader.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		String remessage = message.toString();
		return remessage;
	}
	
	
	static class miTM implements javax.net.ssl.TrustManager,javax.net.ssl.X509TrustManager{

		@Override
		public void checkClientTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
			// TODO Auto-generated method stub
			return;
		}

		@Override
		public void checkServerTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
			// TODO Auto-generated method stub
			return;
		}

		@Override
		public X509Certificate[] getAcceptedIssuers() {
			// TODO Auto-generated method stub
			return null;
		}
		
		public boolean isServerTrusted(java.security.cert.X509Certificate[] certs) {
			return true;
		}
		
		public boolean isClientTrusted(java.security.cert.X509Certificate[] certs) {
			return true;
		}
		
	}
	
	/**
	 * 忽略ssl证书问题
	 */
	private static void trustAllHttpsCertificates() {
		javax.net.ssl.TrustManager[] trustAllCerts = new javax.net.ssl.TrustManager[1];
		javax.net.ssl.TrustManager tm = new miTM();
		trustAllCerts[0] = tm;
		try {
			javax.net.ssl.SSLContext sc = javax.net.ssl.SSLContext.getInstance("SSL");
			sc.init(null, trustAllCerts, null);
			javax.net.ssl.HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (KeyManagementException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 将获取到的XHR解析成有用的数据
	 * @param str json格式的字符串
	 * @param result json最后一个字段
	 * @param objects   json需要解析的字段
	 * @return	string  解析后的字符串
	 */
	public static String jsonToString(String str,String result,String ...objects) {
		JSONObject jsObj = JSONObject.fromObject(str);
		for(int i = 0;i < objects.length; i++) {
			jsObj = jsObj.getJSONObject(objects[i]);
		}
		return jsObj.getString(result);
	}
	/**
	 * 获取余票信息
	 * @param dateTime 时间
	 * @param fromStation 出发站
	 * @param toStation 终点站
	 * @return String[] 未解析的余票信息 
	 */
	public static String[] getTicket(String dateTime,String fromStation,String toStation) {
		String url = "https://kyfw.12306.cn/otn/leftTicket/queryZ?leftTicketDTO.train_date=" 
	+ dateTime + "&leftTicketDTO.from_station=" + fromStation 
	+ "&leftTicketDTO.to_station=" + toStation + "&purpose_codes=ADULT";
		//System.out.println(Spider.getStringforXHR(url));
		String result = Spider.jsonToString(Spider.getStringforXHR(url),"result","data");
		result = result.replace("\"","");
		result = result.replace("[", "");
		result = result.replace("]", "");
		String[] data = result.split(",");
		
		return data;
	}
	
	public static String getPrice(String train_no,String from_station_no,
			String to_station_no,String seat_types,String train_date) {
		String url = "https://kyfw.12306.cn/otn/leftTicket/queryTicketPrice?train_no="+train_no
				+"&from_station_no="+from_station_no+"&to_station_no="+to_station_no
				+ "&seat_types="+seat_types+"&train_date="+train_date;
		String result = Spider.jsonToString(Spider.getStringforXHR(url), "data");
		return result;
	}
	
	//public static Login()
	
	public static void main(String[] args) {
		String dateTime ="2019-01-10";
		String fromStation = "CSQ";
		String toStation = "DIQ";
		String[] result = getTicket(dateTime,fromStation,toStation);
		for(String e:result) {
			System.out.println(e);
		}
	}
}
