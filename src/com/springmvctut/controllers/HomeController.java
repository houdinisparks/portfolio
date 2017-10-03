package com.springmvctut.controllers;

import static org.springframework.web.bind.annotation.RequestMethod.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // specifies that this is also a component
@RequestMapping({ "/", "/home" }) // specifies the request path that this method
									// will handle,
class HomeController {

	// method - details the HTTP method that it can handle.
	@RequestMapping(method = GET)
	public String home() {

		return "aboutme";
		// returned String object will try to reslve to a
		// view named home.jsp
		// lovgical view name/WEB-INF/views/home.jsp
	}

	@RequestMapping(value= "/myprojects", method = GET)
	public String myprojects() {
		return "myprojects";
	}
}
