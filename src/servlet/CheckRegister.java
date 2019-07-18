package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import javabean.Account;
import util.RegisterUtil;

/**
 * Servlet implementation class CheckRegister
 */
@WebServlet("/CheckRegister")
public class CheckRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckRegister() {
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
		String rePass = request.getParameter("confirmPassWord");
		String name = request.getParameter("name");
		String idNumber = request.getParameter("id_number");
		String email = request.getParameter("email");
		String mobileNo = request.getParameter("mobileNo");
		
		System.out.println(idNumber);
		
		Account account = new Account();
		account.setUserName(RegisterUtil.checkUsername(username));
		account.setPassWord(RegisterUtil.checkPassword(password));
		account.setConfirmPassWord(RegisterUtil.checkConfirmPassword(rePass,password));
		account.setName(RegisterUtil.checkName(name));
		account.setId_number(RegisterUtil.checkIdNumber(idNumber));
		account.setEmail(RegisterUtil.checkEmail(email));
		account.setMobileNo(RegisterUtil.checkMobileNo(mobileNo));
		
		
		//Gson gs = new GsonBuilder().enableComplexMapKeySerialization().create();
		Gson gs = new Gson();
		String result = gs.toJson(account);
		
		System.out.println(result);
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
