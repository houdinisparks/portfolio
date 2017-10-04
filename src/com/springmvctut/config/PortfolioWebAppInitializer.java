package com.springmvctut.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * @author yanyee Either specify the configurations in a web.xml or using this
 *         JavaConfig method.
 *         AbstractAnnotationAbstractAnnotationConfigDispatcherServletInitializer
 *         automatically be used to configure DispatcherServlet and the Spring
 *         application context in the application’s servlet context. It creates
 *         two context: - DispatcherServlet - ContextLoaderListener
 * 
 */
public class PortfolioWebAppInitializer 
	extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		super.onStartup(servletContext);
		servletContext.setInitParameter("spring.profiles.active", "dev");

		//Set multiple active profile
		//servletContext.setInitParameter("spring.profiles.active", "dev, testdb");
	}
	
	// identifies one or more paths that
	// DispatcherServlet will be mapped to. In this case, it’s mapped to /,
	// indicating that it
	// will be the application’s default servlet. It will handle all requests
	// coming into the
	// application.
	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	// ContextLoaderListener load into its application context with beans
	// defined in Root.Config.
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class<?>[] { RootConfig.class };
	}

	// DispatcherServlet load into its application context with beans defined in
	// WebConfig.class
	//
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] { WebConfig.class };
	}
}
