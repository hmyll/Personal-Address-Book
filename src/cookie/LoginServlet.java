package cookie;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		response.setCharacterEncoding("gbk");
		
		String username=request.getParameter("username");
		String passward=request.getParameter("password");
		
		String path="";
		String msg="";
		if("zhang".equals(username)&&"12345".equals(passward)){
			path="success.jsp";
			Cookie cookie = new Cookie("username",username);
			cookie.setMaxAge(60*60*24);
			response.addCookie(cookie);
			
			HttpSession session=request.getSession();		
			session.setAttribute("user", username); 
		} else {
			path="index.jsp";
			msg="Username or Password is Error";
		}
		
		request.setAttribute("username", username);
		request.setAttribute("msg", msg);
		RequestDispatcher dispatchar=request.getRequestDispatcher(path);
		dispatchar.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
