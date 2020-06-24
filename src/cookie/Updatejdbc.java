package cookie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Insertjdbc
 */
@WebServlet("/Updatejdbc")
public class Updatejdbc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatejdbc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String key = (String)request.getSession().getAttribute("key");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		try{
			Class.forName("com.mysql.jdbc.Driver");//加载驱动器
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTimezone=UTC","root","123");
			PrintWriter pw = response.getWriter();
			String sql = "select * from addbook where name = ?";
	        PreparedStatement stat = con.prepareStatement(sql);
	        stat.setString(1, name);
	        ResultSet rs = stat.executeQuery();
	        if(name.length()==0){
	        	pw.write("名字不能为空，请检查!<a href=chakan.jsp>点击链接返回</a>");
	        }
	        else {
	        	PreparedStatement pstd = con.prepareStatement("delete from addbook where name=?");	
				pstd.setString(1, key);
				int i = pstd.executeUpdate();	
				con.close();
		    	pstd.close();
		    	Class.forName("com.mysql.jdbc.Driver");//加载驱动器
				Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTimezone=UTC","root","123");
				PreparedStatement pst = con1.prepareStatement("insert into addbook(name,phone,address) values(?,?,?)");		
				pst.setString(1, name);
				pst.setString(2, phone);
				pst.setString(3, address);
				int j = pst.executeUpdate();		
				pw.write("信息修改成功，点击链接查看<a href=chakan.jsp>查看所有信息</a>");
		    	pst.close();
	        }	
			rs.close();
			con.close();
	    	pw.close();
		}catch(Exception ex){
			ex.printStackTrace();
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
