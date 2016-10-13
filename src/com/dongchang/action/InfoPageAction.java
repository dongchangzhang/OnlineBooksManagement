package com.dongchang.action;

import com.dongchang.database.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.apache.struts2.ServletActionContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

public class InfoPageAction {
	private String ISBN;
	private ArrayList<String> list = null;

	// list
	public ArrayList<String> getList() {
		return this.list;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String ISBN) {
		this.ISBN = ISBN;
	}

	public String seeInfo() {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		// find book
		String sql1 = "select * from Book where ISBN=" + ISBN;
		MySQLConnecter mc = new MySQLConnecter();
		ArrayList<Map<String, String>> result1 = mc.select(sql1, "Book");

		// put it into session
		session.setAttribute("booklist", result1);
		// find author
		String sql2 = "select * from Author where AuthorID=" + result1.get(0).get("AuthorID");
		ArrayList<Map<String, String>> result2 = mc.select(sql2, "Author");
		// put it into session
		session.setAttribute("authorlist", result2);

		return "SUCCESS";
	}

	public String deleteBook() {
		String sql = "delete from Book where ISBN=" + ISBN;
		MySQLConnecter mc = new MySQLConnecter();
		int status = mc.delete(sql);
		if (status == 0) {
			return "FALSE";
		} else {
			return "SUCCESS";
		}
	}

	public String toEdit() {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		// find book
		String sql1 = "select * from Book where ISBN=" + ISBN;
		MySQLConnecter mc = new MySQLConnecter();
		ArrayList<Map<String, String>> result1 = mc.select(sql1, "Book");
		// put it into session
		session.setAttribute("booklist", result1);
		// find author
		String sql2 = "select * from Author where AuthorID=" + result1.get(0).get("AuthorID");
		ArrayList<Map<String, String>> result2 = mc.select(sql2, "Author");

		// put it into session
		session.setAttribute("authorlist", result2);
		System.out.println("exec the SearchBook one time");
		return "SUCCESS";

	}
}
