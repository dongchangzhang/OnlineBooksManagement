package com.dongchang.action;

import com.dongchang.database.*;
import java.sql.*;
import java.util.Map;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.apache.struts2.ServletActionContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

public class MainPageAction {
	private String name;
	private ArrayList<String> list = null;

	// list
	public ArrayList<String> getList() {
		return this.list;
	}

	// name
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String returnHome() {
		return "SUCCESS";
	}

	public String toSearch() {
		String sql1 = "select * from Author where Name=\"" + this.name + "\"";
		MySQLConnecter mc = new MySQLConnecter();
		ArrayList<Map<String, String>> result1 = mc.select(sql1, "Author");
		if (result1.size() == 0) {
			return "FALSE";
		}
		String id = result1.get(0).get("AuthorID");
		String sql2 = "select * from Book where AuthorID=" + id;
		ArrayList<Map<String, String>> result2 = mc.select(sql2, "Book");
		if (result2.size() == 0) {
			return "FALSE";
		}
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		session.setAttribute("result", result2);

		return "SUCCESS";

	}

	public String getAuthor() {
		String sql = "select * from Author";
		MySQLConnecter mc = new MySQLConnecter();
		ArrayList<Map<String, String>> result = mc.select(sql, "Author");
		if (result.size() == 0) {
			return "FALSE";
		}

		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		session.setAttribute("list", result);

		return "SUCCESS";

	}
}
