package com.jvs.rest.app;

import org.springframework.web.client.RestTemplate;

import com.jvs.rest.entity.Greeting;
import com.jvs.rest.entity.Page;

public class Application {

	public static void main(String args[]) {
		RestTemplate restTemplate = new RestTemplate();
		Greeting greeting = restTemplate.getForObject("http://localhost:8080/rest/greeting", Greeting.class);
		System.out.println("Id:    " + greeting.getId());
		System.out.println("Context:   " + greeting.getContent());

		restTemplate = new RestTemplate();
		Page page = restTemplate.getForObject("http://graph.facebook.com/gopivotal", Page.class);
		System.out.println("Name:    " + page.getName());
		System.out.println("About:   " + page.getAbout());
		System.out.println("Phone:   " + page.getPhone());
		System.out.println("Website: " + page.getWebsite());
	}

}
