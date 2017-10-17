package com.springmvctut.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan("com.springmvctut.controllers") // search for components in this.
												// They are indicated by
												// @Controllers
public class WebConfig extends WebMvcConfigurerAdapter {

	@Autowired
	private Environment environment;
	
	//	resolves logical view names to views that reference tile definitions.
	//	It does this by looking for a tile definition whose name matches the logical view
	//	name.
	@Bean
	public ViewResolver viewResolver() { 
	return new TilesViewResolver();
	}

	// By calling enable() on the given
	// DefaultServletHandlerConfigurer, DispatcherServlet forwards
	// requests for static resources to the servlet container’s default servlet.
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	//	job is to locate and load tile definitions and generally coordinate Tiles.
	@Bean
	public TilesConfigurer tilesConfigurer() {
		TilesConfigurer tiles = new TilesConfigurer();
		tiles.setDefinitions(new String[] { "/WEB-INF/views/tiles.xml" });
		tiles.setCheckRefresh(true);
		return tiles;
	}
	
	
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    	
    	if(this.environment.acceptsProfiles("dev")){
            registry
            .addResourceHandler("/resources/**")
            .addResourceLocations("/resources/src/");
    	}else{
            registry
            .addResourceHandler("/resources/**")
            .addResourceLocations("/resources/dist/");
    	};
    	
          // be default the below is already included. 
//          .setCachePeriod(3600)
//          .resourceChain(true)
//          .addResolver(new PathResourceResolver());
    }
	

	
}

// it’s configured to look for JSP files by wrapping view names with a
// specific
// prefix and suffix (for example, a view name of "home" sent by controller
// will be resolved as
// WEB-INF/views/home.jsp).
//@Bean
//public ViewResolver viewResolver() {
//	InternalResourceViewResolver resolver = new InternalResourceViewResolver();
//	resolver.setPrefix("/WEB-INF/views/");
//	resolver.setSuffix(".jsp");
//	resolver.setExposeContextBeansAsAttributes(true);
//
//	// If JSP files are using JSTL tags for formatting or messages , then
//	// we need to configure the resolver to resolve a JStiView instead
//	// resolver.setViewClass(
//	// org.springframework.web.servlet.view.JstlView.class);
//
//	return resolver;
//}
