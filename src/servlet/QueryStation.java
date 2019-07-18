package servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.MyDao;
import javabean.Station;

/**
 * Servlet implementation class StationQuery
 */
@WebServlet("/queryCC")
public class QueryStation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryStation() {
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
		
		String stationName = request.getParameter("station");
		Station station = new Station();
		Boolean flag = stationName.matches("[a-zA-Z]*");
		StringBuilder stationMsg = new StringBuilder();
		for(int i = 0; i < stationName.length(); i++) {
			stationMsg.append(stationName.charAt(i));
			stationMsg.append("%");
		}
		
		MyDao mydao = new MyDao();
		Vector<Station> results = null;
		if(flag = true) {
			results = mydao.searchByPinyin(stationMsg.toString());
		}else {
			results = mydao.searchByStation(stationMsg.toString());
		}
		Gson gs = new Gson();
		String result = gs.toJson(results);

		response.getWriter().println(result);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
