<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
<body>
	<h1>修改信息</h1>
	<form action="update">
		<h3>请修改这个的作者的信息</h3>
		<table width="100%" border="1" align="center">
			<tr bgcolor="#949494">
				<th>AuthorID</th>
				<th>姓名</th>
				<th>年龄</th>
				<th>国籍</th>
			</tr>
			<%
				ArrayList<Map<String, String>> list2 = (ArrayList<Map<String, String>>) session.getAttribute("authorlist");
				if (list2.size() > 0) {
					out.print("<tr align=\"center\"><td><input name=\"ID\" type=\"text\" value=\""
							+ list2.get(0).get("AuthorID") + "\" readonly></td>\n");
					out.print("<td><input name=\"name\" type=\"text\" value=\"" + list2.get(0).get("Name") + "\"></td>\n");

					out.print("<td><input name=\"age\" type=\"text\" value=\"" + list2.get(0).get("Age") + "\"></td>\n");
					out.print("<td><input name=\"country\" type=\"text\" value=\"" + list2.get(0).get("Country")
							+ "\"></td></tr>\n");

				} else {
					out.print("<tr><td><input name=\"name\" type=\"text\" value=\"" + "false" + "\"></td></tr>\n");
				}
			%>

		</table>
		</table>

		<h3>请修改作品的信息</h3>
		<table width="100%" border="1" align="center">
			<tr bgcolor="#949494">
				<th>ISBN</th>
				<th>书名</th>
				<th>AuthorID</th>
				<th>出版社</th>
				<th>出版日期</th>
				<th>价格</th>
			</tr>
			<%
				ArrayList<Map<String, String>> list = (ArrayList<Map<String, String>>) session.getAttribute("booklist");
				if (list.size() > 0) {

					out.print("<tr align=\"center\"><td><input name=\"ISBN\" type=\"text\" value=\""
							+ list.get(0).get("ISBN") + "\" readonly></td>\n");
					out.print("<td><input name=\"book\" type=\"text\" value=\"" + list.get(0).get("Title") + "\"></td>\n");
					out.print("<td><input type=\"text\" value=\"" + list.get(0).get("AuthorID") + "\" readonly></td>\n");
					out.print("<td><input name=\"publisher\" type=\"text\" value=\"" + list.get(0).get("Publisher")
							+ "\"></td>\n");
					out.print("<td><input name=\"time\" type=\"text\" value=\""
							+ ((String) list.get(0).get("PublishDate")).replaceAll("-", "") + "\"></td>\n");
					out.print("<td><input name=\"price\" type=\"text\" value=\"" + list.get(0).get("Price")
							+ "\"></td></tr>\n");

				} else {
					out.print("<tr><td>" + "false" + "</td></tr>\n");
				}
			%>

		</table>
		<br>
		<div class="ff">
			<input type="submit" value="提交修改" />
		</div>

	</form>
	</br>
	</br>
	</br>
	</br>
	</br>
	<div class="an">
		<a href=home><button type="button">返回到主页</button></a>
	</div>
</body>
</body>
</html>