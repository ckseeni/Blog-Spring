package com.loginsys;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;
import org.hibernate.Query;
import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.hibernate.Transaction;  
import org.hibernate.cfg.Configuration;
import java.security.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.math.*;
import org.hibernate.cfg.AnnotationConfiguration;




@Controller
public class UserController {
	
	public static String user_name;
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String user() {
		return "user";
	}
	  
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@RequestParam("username") String username, @RequestParam("password") String password, ModelMap model) {
		//Configuration cfg=new Configuration();  
		//cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
		//creating seession factory object  
		SessionFactory factory=new AnnotationConfiguration().configure()
				.buildSessionFactory();;      
		//creating session object  
		Session session=factory.openSession();  
	    
		Query query = session.createQuery("from User where username = :name_user");
		query.setString("name_user",username);
		List arr = query.list();
		if(arr.size()==1){
			model.addAttribute("message","sorry username is occupied!!");
			return "loginfail";
		}
		//creating transaction object  
		Transaction t=session.beginTransaction();
		String md5hashpass = new String("");
		try{
			MessageDigest digest = MessageDigest.getInstance("MD5");
			byte[] hash = digest.digest(password.getBytes("UTF-8"));
			 // make it printable
			md5hashpass = new String(hash);

		}catch(Exception ex){
			ex.printStackTrace();
		}
	    User u=new User();
	    u.setUsername(username);  
	    u.setPassword(md5hashpass);    
	    session.persist(u);//persisting the object  
	    t.commit();//transaction is committed  
	    session.close();  
	    model.addAttribute("username",username);
		return "result";
	}
	
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public String Login(@RequestParam("username") String username, @RequestParam("password") String password, ModelMap model){
		//Configuration cfg=new Configuration();  
		//cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
		//creating seession factory object  
		SessionFactory factory=new AnnotationConfiguration().configure()
				.buildSessionFactory();     
		//creating session object  
		Session session=factory.openSession();  
	        
		//creating transaction object  
		//Transaction t=session.beginTransaction();
		String md5hashpass = new String("");
		try{
			MessageDigest digest = MessageDigest.getInstance("MD5");
			byte[] hash = digest.digest(password.getBytes("UTF-8"));
			 // make it printable
			md5hashpass = new String(hash);

		}catch(Exception ex){
			ex.printStackTrace();
		}
		//Query query = session.createQuery("from User where username="+username);
		//Integer count = (Integer)query.uniqueResult();
		Query query = session.createQuery("from User where username = :name_user");
		query.setString("name_user",username);
		List arr = query.list();
		if(arr.size()==1){
			User user = (User)arr.get(0);
			if(user.getPassword().equals(md5hashpass)){
				model.addAttribute("message","logged in successfully");
				user_name = user.getUsername();
				return "home";
			}
			model.addAttribute("message","logged in failed(Incorrect username or password)");
			return "loginfail";
		}
		model.addAttribute("message","logged in failed(Incorrect username or password)");
		return "loginfail";
		/*String name = new String("");
		for(int i=0;i<arr.size();i++){
			User user = (User)arr.get(i);
			name = name + user.getUsername();
		}
		model.addAttribute("name",name);
		return "home";*/
		/*if(count==1&&query.password.equals(md5hashpass)){
			model.addAttribute("message","logged in successfully");
			return "home";
		}*/
		/*if(arr.size()==1){
			User user = (User)arr.get(0);
			if(user.getPassword().equals(md5hashpass)){
				model.addAttribute("message","logged in successfully");
				return "home";
			}
		}
		model.addAttribute("message","logged in failed(Incorrect username or password)");
		return "home";*/
			
	}
	@RequestMapping(value = "/Content", method = RequestMethod.POST)
	public String Content(@RequestParam("content") String content){
		//Configuration cfg=new Configuration();  
		//cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
		//creating seession factory object  
		SessionFactory factory=new AnnotationConfiguration().configure()
				.buildSessionFactory();;      
		//creating session object  
		Session session=factory.openSession();  
	        
		//creating transaction object  
		Transaction t=session.beginTransaction();
		Date d = new Date();
		String date = d.toString();
		Content co = new Content();
		co.setDate(date);
	    co.setUsername(user_name);
	    co.setContent(content);
	    //System.out.println("up to here");
	    session.persist(co);//persisting the object  
	    t.commit();//transaction is committed  
	    session.close(); 
		return "updatedcontent";
	}
	
	@RequestMapping(value = "/Viewpost", method = RequestMethod.POST)
	public String Viewpost(ModelMap model){
		//Configuration cfg=new Configuration();  
		//cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
		//creating seession factory object  
		SessionFactory factory=new AnnotationConfiguration().configure()
				.buildSessionFactory();;      
		//creating session object  
		Session session=factory.openSession();
		
		Query query = session.createQuery("from Content order by date desc");
		List arr = query.list();
		String posts = new String("");
		//ArrayList<Content> array = new ArrayList<Content>();
		for(int i=0;i<arr.size();i++){
			//array.add((Content)arr.get(i));
			Content co = (Content)arr.get(i);
			posts = posts+"<br> Date and Time: "+co.getDate()+"<br> User: "+co.getUsername()+"<br> Content: "+co.getContent()+"<br><br>";
		}
		model.addAttribute("blog",posts);
		//model.addAttribute("arr",array);
		return "viewpost";
	}

}
