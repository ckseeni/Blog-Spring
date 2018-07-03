package com.loginsys;
import javax.persistence.*;

@Entity
@Table(name="Content")
public class Content {
	private String date;
	private String username;
	private String content;

	@Id
	@Column(name="date")
	public String getDate(){
		return date;
	}
	
	@Column(name="username")
	public String getUsername(){
		return username;
	}
	
	@Column(name="content")
	public String getContent(){
		return content;
	}
	
	public void setDate(String date){
		this.date = date;
	}
	
	public void setUsername(String username){
		this.username = username;
	}
	
	public void setContent(String content){
		this.content = content;
	}
	
}
