package com.gontuseries.controllers;
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;  
import org.springframework.web.bind.annotation.ResponseBody;  
  
@Controller  
public class GetLists { 

	@RequestMapping(value = "/getLists", method = RequestMethod.POST)
	@ResponseBody
	public String getLists(@RequestParam(value="name") String name){
	    return "method9 with id= "+name;
	}
}
	/*
  
 @RequestMapping(value = "/getLists", method = RequestMethod.POST)  
 public @ResponseBody  
 
 String hello(@ModelAttribute(value= "name") String name) {  
  System.out.println(name);  
  
  
  String str = "{\"user\": { \"name\": \" " + name + " \" }}";  
  return str;  
  
 }  
}  
/*
import com.gontuseries.classes.ToDoList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
 
/*
@RestController
public class GetLists {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/getLists")
    public ToDoList list(@RequestParam(value="name", defaultValue="World") String name) {
        return new ToDoList(counter.incrementAndGet(),
                            String.format(template, name));
    }
}
*/
