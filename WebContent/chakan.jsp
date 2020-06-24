<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page contentType="text/html;charset=utf-8"%>  
<html>  
<head>  
<style type="text/css">  
table {  
    border: 2px #CCCCCC solid;  
    width: 360px;  
}  
   
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;  
}  
</style>  
</head>  
<body>  
	<%
		String user=(String)session.getAttribute("user");
		if(user==null){
			response.sendRedirect("index.jsp");
		}
	%>
    <%  
	    Class.forName("com.mysql.jdbc.Driver");//加载驱动器
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTimezone=UTC","root","123");
		String sql = "select * from addbook";
		Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);  
    %>  
   	<%
   		if(rs.next()){
   	%>    
       
	    <table align="center">  
	        <tr>  
	            <th>  
	                <%  
	                    out.print("姓名");  
	                %>  
	            </th>  
	            <th>  
	                <%  
	                    out.print("电话");  
	                %>  
	            </th>  
	            <th>  
	                <%  
	                    out.print("地址");  
	                %>  
	            </th>  
	            <th>  
	                <%  
	                    out.print("操作");  
	                %>  
	            </th>  
	        </tr>  
	   
	        <%  
	            do{  
	        %>  
	        
	        <tr>  
	            <td>  
	                <%  
	                    out.print(rs.getString(1));  
	                %>  
	            </td>  
	            <td>  
	                <%  
	                    out.print(rs.getString(2));  
	                %>  
	            </td>  
	            <td>  
	                <%  
	                    out.print(rs.getString(3));  
	                %>  
	            </td>  
	           <td>  
	         	  <a href="updata.jsp?name=<%=rs.getString(1)%>&phone=<%=rs.getString(2)%>&address=<%=rs.getString(3)%>&key=<%=rs.getString(1)%>">修改</a>
	         	  <a href="Deletejdbc?key=<%=rs.getString(1)%>">删除</a>               
	            </td>  
	          
	        </tr>  
	        <%  
	            }while (rs.next());
	        %>  
	    </table>  
	    <div align="center">  
	             
	        <%  
	            out.print("数据查询成功，恭喜你");  
	        %>  
	    </div>  
	    <%  
	        rs.close();  
	    	con.close();
	    	st.close();
	    %>  
    <%
   		} else {
   			out.print("通讯录没有联络人！请添加好友.");
   		}
    %>
    
</body>  
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">  
</span></span>