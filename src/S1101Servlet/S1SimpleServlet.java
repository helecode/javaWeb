package S1101Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class S1SimpleServlet extends HttpServlet{
	String driver=null;
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("servlet初始化，且可用servletConfig读取配置信息");
		driver=config.getInitParameter("driver");
		String url=config.getInitParameter("url");
		String root=config.getInitParameter("root");
		String password=config.getInitParameter("password");
		System.out.println("driver:"+driver+"\t"+"url:"+url+"\troot:"+root+"\tpassword:"+password);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		System.out.println("访问Servlet");
		System.out.println(req.getContextPath()+"/1101servlet/S2simpleServlet.jsp");
		req.getRequestDispatcher("/1101servlet/S2simpleServlet.jsp").forward(req, resp);
	}

	@Override
	public void destroy() {
		System.out.println("销毁servlet");
	}
	
}
