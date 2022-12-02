package com.kim.dani.ulsan;

import java.math.BigDecimal;

public class TalkDTO {

	private int t_n;
	private String t_id;
	private String t_title;
	private String t_content;
	private String t_name;
	private String t_date;
	private int t_count;

	public TalkDTO() {
		// TODO Auto-generated constructor stub
	}

	public TalkDTO(int t_n, String t_id, String t_title, String t_content, String t_name, String t_date, int t_count) {
		super();
		this.t_n = t_n;
		this.t_id = t_id;
		this.t_title = t_title;
		this.t_content = t_content;
		this.t_name = t_name;
		this.t_date = t_date;
		this.t_count = t_count;
	}

	public int getT_n() {
		return t_n;
	}

	public void setT_n(int t_n) {
		this.t_n = t_n;
	}

	public String getT_id() {
		return t_id;
	}

	public void setT_id(String t_id) {
		this.t_id = t_id;
	}

	public String getT_title() {
		return t_title;
	}

	public void setT_title(String t_title) {
		this.t_title = t_title;
	}

	public String getT_content() {
		return t_content;
	}

	public void setT_content(String t_content) {
		this.t_content = t_content;
	}

	public String getT_name() {
		return t_name;
	}

	public void setT_name(String t_name) {
		this.t_name = t_name;
	}

	public String getT_date() {
		return t_date;
	}

	public void setT_date(String t_date) {
		this.t_date = t_date;
	}

	public int getT_count() {
		return t_count;
	}

	public void setT_count(int t_count) {
		this.t_count = t_count;
	}
	
	
	
}