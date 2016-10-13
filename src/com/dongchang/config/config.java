package com.dongchang.config;
// this class used for configure your project

// the values in this class should be static and will be visited by other class
// you should eidt these values when your environment changed

public class config {
	// user name
	public final static String USERNAME = "root";
	// password
	public final static String PASSWORD = "password";
	// your database name
	public final static String DBNAME = "BookDB";
	// mysql driver
	public final static String DRIVER = "com.mysql.jdbc.Driver";
	// mysql url
	public final static String URL = "jdbc:mysql://localhost:3306/" + DBNAME
			+ "?useUnicode=true&characterEncoding=UTF-8";
	// must bigger than the number of the keyword in your database table
	public final static int TABLELEN = 10;

}