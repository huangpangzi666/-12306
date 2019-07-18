package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import dao.MyDao;
import javabean.Account;
import javabean.User;
import util.RegisterUtil;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		
		String username = request.getParameter("userName");
		String password = request.getParameter("passWord");
		String name = request.getParameter("name");
		String idNumber = request.getParameter("id_number");
		String email = request.getParameter("email");
		String mobileNo = request.getParameter("mobileNo");
		
		User user = new User();
		user.setUserName(username);
		user.setUserPass(password);
		user.setFullName(name);
		user.setIdNumber(idNumber);
		user.setUserEmail(email);
		user.setUserPhone(mobileNo);
		
		MyDao mydao = new MyDao();
		if(mydao.executeQuery(user) == false) {
			response.getWriter().println("<script type=\"text/javascript\">" + 
					"			location.go(-1);" + 
					"			alert('注册失败!');" + 
					"		</script>");
		}else {
			request.getSession().setAttribute("username", username);
			request.getSession().setAttribute("name", name);
			response.sendRedirect("index.jsp");
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
