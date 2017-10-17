package com.springmvctut.controllers;

import com.springmvctut.models.Projects;
import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.io.FileNotFoundException;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller // specifies that this is also a component
@RequestMapping({ "/", "/home" }) // specifies the request path that this method
									// will handle,
class HomeController {

	private Projects allProjs;

	// Automaticall search for the Projects class, and convert into bean
	// for dependency injection to the constructor.
	@Autowired
	public HomeController(Projects projects) {
		this.allProjs = projects;
	}

	// method - details the HTTP method that it can handle.
	@RequestMapping(method = GET)
	public String home() {

		return "aboutme";
		// returned String object will try to reslve to a
		// view named home.jsp
		// lovgical view name/WEB-INF/views/home.jsp
	}

	@RequestMapping(value = "/myprojects", method = GET)
	public String myprojects(Model myprojsmodel) throws IOException {

		myprojsmodel.addAttribute("webdevProjs", allProjs.projs_webdev);
		myprojsmodel.addAttribute("dataProjs", allProjs.projs_data);
		myprojsmodel.addAttribute("iotProjs", allProjs.projs_iot);

		return "myprojects";
	}

	@RequestMapping(value = "/myprojects/proj", method = GET)
	public String proj(@RequestParam("id") String projId) {
		
		
		return projId;
	}
}
