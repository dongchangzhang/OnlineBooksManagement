<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加书籍</title>
<link rel="stylesheet" href="addbook.css" />
</head>
<body>

	<h1>添加书籍信息或作家信息</h1>
	</br>
	<h2>请输入所有需要的信息</h2>
	<div id="center">
		<form action="addBook" method="get">
			<span class="kuan"><input name="ID" type="text"
				placeholder=" 这里输入作者ID" size="16" required /></br> </br></span>
			<div class="kuan">
				<input name="name" type="text" placeholder=" 这里输入作者名" size="16"
					required /></br> </br>
			</div>
			<div class="kuan">
				<input name="age" type="text" placeholder=" 这里输入年龄" size="16"
					required /></br> </br>
			</div>
			<div class="kuan">
				<input name="country" type="text" placeholder=" 这里输入国籍" size="16"
					required /></br> </br>
			</div>
			<div class="kuan">
				<input name="ISBN" type="text" placeholder=" 这里输入ISBN" size="16"
					required /></br> </br>
			</div>
			<div class="kuan">
				<input name="book" type="text" placeholder=" 这里输入作品名" size="16"
					required /></br> </br>
			</div>
			<div class="kuan">
				<input name="publisher" type="text" placeholder=" 这里输入出版社" size="16"
					required /></br> </br>
			</div>
			<div class="kuan">
				<input name="time" type="text" placeholder=" 这里输入出版日期如:20160201"
					size="16" required /></br> </br>
			</div>
			<div class="kuan">
				<input name="price" type="text" placeholder=" 这里输入价格如：20.21"
					size="16" required /></br> </br>
				</br>
			</div>

			<div class="an">
				<input type="submit" value="开始录入" />
			</div>
		</form>
	</div>
	</br>
	</br>
	<div class="bu">
		<a href=home><button type="button">返回到主页</button></a>
	</div>
</body>
</html>