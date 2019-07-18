package servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MyDao;
import javabean.OrderPassenger;
import util.OrderUtil;

/**
 * Servlet implementation class OrderConfirm
 */
@WebServlet("/OrderConfirm")
public class OrderConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderConfirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String username = (String)request.getSession().getAttribute("username");
		if(username == null) {
			response.getWriter().println("<script type='javascript'>history.back(-1);alert('请先登录!');</script>");
			return;
		}
		MyDao mydao = new MyDao();
		String userId = mydao.getUserId(username);
		String data = request.getParameter("data");
		if(data == null || "".equals(data)) {
			response.getWriter().println("<script type='javascript'>history.back(-1);alert('请选择乘客');</script>");
			return;
		}
		String[] allPassenger = data.split(";");
		int count = allPassenger.length;
		
		Vector<OrderPassenger> passengers = new Vector<>();
		
		for(int i = 0; i < count; i++) {
			String[] temp = allPassenger[i].split("_");
			OrderPassenger passenger = new OrderPassenger();
			String tempall = temp[0].replace("（", "");
			tempall = tempall.replace("）", "");
			System.out.println(tempall.substring(tempall.indexOf("¥") + 1));
			passenger.setPaSeat(tempall.substring(0, tempall.indexOf("¥")));
			float price = Float.parseFloat(tempall.substring(tempall.indexOf("¥") + 1));
			passenger.setItemPrice(price);
			passenger.setPaId(temp[1]);
			String itemId= OrderUtil.getItemId();
			System.out.println(itemId);
			passenger.setItemId(itemId);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				
				passenger.setPaTime(new java.sql.Date(sdf.parse(temp[6]).getTime()));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			passenger.setTrainNo(temp[7]);
			passenger.setUserId(userId);
			passengers.add(passenger);
		}
		
		boolean result = mydao.insertOrder(passengers);
		mydao.close();
		if(result == false) {
			
			response.getWriter().println("<script type='text/javascript'>alert('预订失败!');history.back(-1);</script>");
			return;
		}else {
			response.getWriter().println("<script type='text/javascript'>alert('预订成功!');location.href='OrderConfirm.jsp';</script>");
			return;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
