package S1102FileterListener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class S2ServletContextListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent servletContextEvent) {
		System.out.println("ServletContextListener监听器销毁");
		System.out.println("上下文路径:"+servletContextEvent.getServletContext().getRealPath("/"));	
	}

	@Override
	public void contextInitialized(ServletContextEvent servletContextEvent) {
		System.out.println("ServletContextListener监听器初始化");
		System.out.println("上下文路径:"+servletContextEvent.getServletContext().getContextPath());
		
	}

}
