package com.springmvctut.models;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.List;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.json.JsonValue;
import javax.json.stream.JsonParser;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;
import org.springframework.util.ResourceUtils;

/**
 * @author yanyee A POJO
 */

@Component
public class Projects {

	private final JsonObject json_allprojs;
	public List<Project> projs_webdev = new ArrayList<Project>();
	public List<Project> projs_data = new ArrayList<Project>();
	public List<Project> projs_iot = new ArrayList<Project>();

	// Parses myprojects.json file.
	// and fills in projs_webdev , projs_data
	public Projects() throws IOException {
		json_allprojs = this.getProjectJsonObject();

		// populate projs_webdevX
		JsonArray json_projs_webdev = json_allprojs.getJsonArray("web-development");
		this.createProjects(json_projs_webdev, projs_webdev);

		JsonArray json_projs_data = json_allprojs.getJsonArray("data-analytics");
		this.createProjects(json_projs_data, projs_data);
		
		JsonArray json_projs_iot = json_allprojs.getJsonArray("iot");
		this.createProjects(json_projs_iot, projs_iot);
		
	}

	private void createProjects(JsonArray jsonArray, List<Project> outputToList) {

		for (JsonValue jsonValue : jsonArray) {
			JsonObject jsonObject = (JsonObject) jsonValue;
			Project project = new Project();
			project.setTitle(jsonObject.getString("title"));
			project.setDescription(jsonObject.getString("description"));
//			project.setDescription(jsonObject.getJsonArray("description").join(""));
			project.setProjId(jsonObject.getString("proj-id"));
			project.setGithubLink(jsonObject.getString("github-link"));
			project.setPosterLink(jsonObject.getString("poster-link"));
			project.setReportLink(jsonObject.getString("report-link"));
			outputToList.add(project);
		}
	}

	private JsonObject getProjectJsonObject() {
		JsonObject json_myprojects = Json.createObjectBuilder().build();

		ClassLoader cl = ClassLoader.getSystemClassLoader();

		URL[] urls = ((URLClassLoader) cl).getURLs();

		for (URL url : urls) {
			System.out.print("PRINTING CLASSPATH: ");
			System.out.println(url.getFile());
		}

		try {

			Resource resource = new ClassPathResource("/projectdata/myprojects.json");

			FileReader fileReader = new FileReader(resource.getFile());
			JsonReader jsonReader = Json.createReader(fileReader);

			json_myprojects = jsonReader.readObject();
			jsonReader.close();
			System.out.println("file 1 accessed");

		} catch (IOException e) {
			System.out.println("file not found exception 1");

			File file;
			try {
				file = ResourceUtils.getFile("classpath:/projectdata/myprojects.json");
				FileReader fileReader = new FileReader(file);
				JsonReader jsonReader = Json.createReader(fileReader);

				json_myprojects = jsonReader.readObject();
				jsonReader.close();
				System.out.println("file 2 accessed");
			} catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}

		return json_myprojects;
	}

}

	