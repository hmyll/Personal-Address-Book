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

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Insertjdbc
 */
@WebServlet("/Insertjdbc")
public class Insertjdbc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insertjdbc() {
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
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		try{
			Class.forName("com.mysql.jdbc.Driver");//����������
			PrintWriter pw = response.getWriter();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTimezone=UTC","root","123");
						
			String sql = "select * from addbook where name = ?";
	        PreparedStatement stat = con.prepareStatement(sql);
	        stat.setString(1, name);
	        ResultSet rs = stat.executeQuery();
	        pw.write(name.length());
	        if(name.length()==0){
	        	pw.write("���ֲ���Ϊ�գ�����!<a href=add.jsp>������ӷ���</a>");
	        }
	        else if(rs.next()){//ԭ���ݿ��Ƿ��Ѵ�������
	        	pw.write("��ϵ���Ѵ��ڣ�����!<a href=add.jsp>������ӷ���</a>");
	        }
	        else {
	        	PreparedStatement pst = con.prepareStatement("insert into addbook(name,phone,address) values(?,?,?)");		
	        	pst.setString(1, name);
				pst.setString(2, phone);
				pst.setString(3, address);
				int j = pst.executeUpdate();			
				pw.write("��Ϣ����ɹ���������Ӳ鿴<a href=chakan.jsp>�鿴������Ϣ</a>");
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
