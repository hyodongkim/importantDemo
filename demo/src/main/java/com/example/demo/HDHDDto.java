package com.example.demo;

import lombok.Data;

@Data
public class HDHDDto {
	
//	id number(4) primary key,
//	writer varchar2(100),
//	title varchar2(100),
//	content varchar2(100)
	
	private int id;
	private String writer;
	private String title;
	private String content;
	
	public HDHDDto(int id, String writer, String title, String content) {
		super();
		this.id = id;
		this.writer = writer;
		this.title = title;
		this.content = content;
	}
	
	public HDHDDto( ) {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "HDHDDto [id=" + id + ", writer=" + writer + ", title=" + title + ", content=" + content + "]";
	}
	
	
}
