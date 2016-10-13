<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="utf-8" />
<title>BookManage</title>
<link rel="stylesheet" href="input.css" />
</head>
<body>
	<div id="header">
		<div class="txt-center">
			<div class="a">
				<a href=startAddBook> 添加书籍 </a> <a href=getHelp> 获得帮助 </a> <a
					href=getAuthor> 已有作者 </a>
			</div>
		</div>
	</div>
	<h1>输入作家姓名查询书籍信息</h1>
	<div id="center">
		<form action="search" method="get">
			<h2></h2>
			<div class="kuan">
				<input name="name" type="text" placeholder="这里输入姓名以查询书籍信息" size="22"
					required />
			</div>
			<div class="an">
				<input type="submit" value="开始查询" />
			</div>
		</form>
	</div>
	</br>
	<div id="footer">
		<footer> made by dongchangzhang </footer>
	</div>
</body>

</html>