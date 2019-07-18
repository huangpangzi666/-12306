package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.MyDao;
import util.Spider;

/**
 * Servlet implementation class TicketQuery
 */
@WebServlet("/queryZ")
public class QueryTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryTicket() {
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
		
		String dateTime = request.getParameter("leftTicketDTO.train_date");

		MyDao mydao = new MyDao();
		String fromStation = mydao.searchStationCode(request.getParameter("leftTicketDTO.from_station"));
		String toStation = mydao.searchStationCode(request.getParameter("leftTicketDTO.to_station"));
		Gson gs = new Gson();
		String[] result = Spider.getTicket(dateTime, fromStation, toStation);
		if(result[0].equals("")) {
			response.getWriter().println("当前暂无列车");
			return;
		}
		response.getWriter().println(gs.toJson(result));
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
