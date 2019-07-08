package com.library.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class Test {

	@GetMapping(path="hello/{n}", produces="text/html")
	public String test(@PathVariable("n") Integer n) {
		return "<p>hello "+n+"</p>";
	}
	
	@GetMapping(path="hello", produces="text/html")
	public String test() {
		return "<p>hello</p>";
	}
	
	
}
