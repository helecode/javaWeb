package S1102FileterListener;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class S1Filter implements Filter{

	@Override
	public void init(FilterConfig config) throws ServletException {
		System.out.println("过滤器初始化");
		String charEncoding=config.getInitParameter("charset");
		System.out.println("字符编码："+charEncoding);
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse response,
			FilterChain fileterChain) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)req;
		request.setCharacterEncoding("UTF-8");
		System.out.println(request.getMethod());
		System.out.println(request.getServletContext());
		System.out.println(request.getServletPath());
		System.out.println(request.getRequestURL());
		System.out.println(request.getRealPath("/"));
		String uname=request.getParameter("uname");
		System.out.println("uname:"+uname);
		fileterChain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("过滤器销毁");
	}

}
