package S1102FileterListener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class S3ServletContextAttributeListener implements ServletContextAttributeListener{

	@Override
	public void attributeAdded(ServletContextAttributeEvent servletContextAttributeEvent) {
		System.out.println("添加的属性名:"+servletContextAttributeEvent.getName()+"\t属性值:"+servletContextAttributeEvent.getValue());
		
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent servletContextAttributeEvent) {
		System.out.println("删除的属性名:"+servletContextAttributeEvent.getName()+"\t属性值:"+servletContextAttributeEvent.getValue());
		
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent servletContextAttributeEvent) {
		System.out.println("修改的属性名:"+servletContextAttributeEvent.getName()+"\t属性值:"+servletContextAttributeEvent.getValue());	
		
	}



}
