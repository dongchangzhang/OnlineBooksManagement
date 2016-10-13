package com.dongchang.action;

import com.dongchang.database.*;

import java.sql.*;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.apache.struts2.ServletActionContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

public class AddBookPageAction {
	private String name;
	private String book;
	private String ID;
	private String age;
	private String country;
	private String ISBN;
	private String publisher;
	private String time;
	private String price;

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	// book
	public String getBook() {
		return this.book;
	}

	public void setBook(String book) {
		try {
			String output = URLDecoder.decode(book, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		System.out.println(book);
		this.book = book;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String ISBN) {
		this.ISBN = ISBN;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String addBook() {

		String sql_author = "insert into Author values(" + getID() + "," + "\"" + getName() + "\"" + "," + getAge()
				+ "," + "\"" + getCountry() + "\"" + ")";
		String sql_book = "insert into Book values(" + getISBN() + "," + "\"" + getBook() + "\"" + "," + getID() + ","
				+ "\"" + getPublisher() + "\"" + "," + getTime() + "," + getPrice() + ")";
		MySQLConnecter mc = new MySQLConnecter();
		int status1 = mc.update(sql_author);
		int status2 = mc.update(sql_book);
		if (status2 == 0 || status1 == 0)
			return "FALSE";

		return "SUCCESS";
	}

}
