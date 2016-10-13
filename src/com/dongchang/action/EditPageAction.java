package com.dongchang.action;

import com.dongchang.database.*;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class EditPageAction {
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

	public String updateInfo() {
		System.out.println(ID);
		String sql_author = "update Author set Name=\"" + name + "\",Age=" + age + ",country=\"" + country
				+ "\" where AuthorID=" + ID;
		String sql_book = "update Book set Title=\"" + book + "\", Publisher=\"" + publisher + "\", PublishDate=" + time
				+ ", Price=" + price + " where ISBN =" + ISBN;
		System.out.println(sql_book);
		System.out.println(sql_author);
		try {
			MySQLConnecter mc1 = new MySQLConnecter();
			mc1.update(sql_author);
			MySQLConnecter mc2 = new MySQLConnecter();
			mc2.update(sql_book);
			return "SUCCESS";
		} catch (Exception e) {
			System.out.println("update Error");
		}
		return "FALSE";
	}
}
