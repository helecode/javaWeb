package S1103Ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class S1JspAjaxServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("进入jspajaxservlet");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String a=request.getParameter("a");
		String username=new String(name.getBytes());
		System.out.println("username:"+username);
		if("li".equals(username)){
			PrintWriter out=response.getWriter();//输出流
			out.write("该用户存在");
			out.close();
		}else{
			PrintWriter out=response.getWriter();//输出流
			out.write("该用户不存在"+username+"可注册");
			out.close();
			out.close();
		}
	}

}
