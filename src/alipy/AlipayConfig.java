package alipy;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092400587141";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCBXMl28jC0CW4MLSlySqXaagqKor612c+abfkqXNHBDRsfTw1fyad1MXDK1+84Ml+Xxw8vu0sKvhYt1irGjFQldwx7KGluSoJHGwh+LrHVXsxQCxOfWLjr79g6WMTDzcCYIX2a6Rlq3tp3TD8AmO/oEqIUYvk2oMzS0nDOJ9TDAoV6rRqpwmBF797Gisv9vxnvoyd//0X+AIXC5qmcs0ydXtpNz++0698ErbAF2ZSAk3BYwl9eTiIF0gpNV3k2gQN37A5PQGdJQkeE3elIApXOjNittxa9K85HRQbgnP66o3w6XcL81QxxHb12B4RqqYZ0O8pljM6r77UGh+HK4xVzAgMBAAECggEAfgZM5qoPNHWzVf1xUTzT0rJXzrO5oyOskj/s6449chs4fwned6DWmN8viQ1Qqai5Y/2zF8cY1kBVDxaD2aXAHDecWycFf0LrJCZ74aHP8ZRG6vu/hA9FJ+Ui+8Sa/D4oEI0f9ph8AJdWsb3/6q8TmTz91WqOat/AaupEpzI6njceiOqGuwRyYztHcrWpvimjhxdEnymELmQhc5oaQBEf2M3wjk30EyUg7jy/2gQMpGShYQSYgC5BIH/QTotO8DSEf05rrSmSRa/tXYWT0L9Uf/t1KUnGag0FKGA7zAPyOuaRIjBst2KpnyGLTJxhtVpCdp71CqUilyChrCPgvB0cQQKBgQDfe/Gx7U+L3iNGJjQl18n4Hha+g2W7a1YTV+QsK2y3YdVvhfgP6Pzo1LWWOB11nFKfUyZF7wStVM6w92nlUvamR3pYiIzaEci2seMacUWOOy+3g8s2aaMwgQJz6rpv3fBZFTv5Et0LxHHpUWR3EmM78ebtxMp/lU21qHS1xhD4YwKBgQCULx3CWoUsFvlbcGsxUNrxPBbz3wYoQ8VN4Al/3Rby267YgfgWERpix3qfXKnFFvpocZTocRSKDUV08dUtUvBPfjQgPfWXwcyFaCiuVdbzczDHO3zoDLGGohhwowvz4sRlCVzpT2xh9RjI/uQxDDxZDXXpI8Dmjkq2WUPen+gTsQKBgQCxfG3nMOEL489/1rdzln0AYGUPyKryvbwOgK7lpVciDMDFYVAw0oiJIOVV+BrtXMkBX7f1sm20erXsNZIUXl8kj3/K8CdsyNLuxTfnuC3VV4v94t1wyVShINQh2zlVvp0zInoOxbxnrAwLkGiJaEEHSoZsLu3jhV/B9Zc7BaJUoQKBgFWnbnI7VKMJnJVoQ+27qPKsIzBQCAUaN2AuUg9gwrUamtR3O+m1dSUH3S9kppVQFOpuTP6W7qJlzXItn2WVfWbVsle4uM9BrHCopmsvHxKV0Oo4zphrTepeo/XnqS8OMyub3+LUj/eHbw4vl8NqKS/ogfGDQyuBsFn6+yoiEEnhAoGAEoO5KZ/7dmozyU2pX0t8wYmzKGNEYu3Bz42wh5+Y3tPc4E9ewi2WFLa/MS8/jxCZQQ7p2BAYrPYWAvF2LzBWR1066ijpN3UNEJ2mSp+zDfiJ5ttCvcHL5bPTez+RMp+MzuVxYG0zqV0/R+0M+lRJa1dCJnJ8cB2mmL55SzkrxSA=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuOUyMUJ98BYGQ8P/tEQEbExZNTGIE5GdrvLiDk/LkHWmdyILh7hP0GtiIhPan18xhS5SmiqMGqfkshQ6VdP9s8eJ8Ho7bNYq+neKRh0RSRqRLJ0MWOZRGVfJdI/g15ZAcZx0UJ8fHik/t1dna73EIpp5eAMVuzpZRfO0DHc0ps8OBOZXY4MQbPfE3AjD3M++iWyfa719Aene14tu5tBFrqLAJcec9oAGE6uL2lVU0/WcUpc74bTz6PRWUDNWI3FeBfItQMPwnj6M4N1SKC+AvJG6+V/m047MYAAa5jfujVTgUBl7w5b+3CooCsZB2L2VJYZABToHJTeevm+nN0K/VQIDAQAB";
 
	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://127.0.0.1:8080/12306/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://127.0.0.1:8080/12306/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl =  "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

