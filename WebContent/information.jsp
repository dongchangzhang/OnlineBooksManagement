<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.an button {
	width: 150px;
	height: 60px;
	font-size: 24px;
	background: #FF0000;
	border: 1px solid #FF0000;
	float: right
}
</style>
</head>
<body>
<body>
	<h1>下面是作者的信息</h1>
	<table width="80%" border="1" align="center">
		<tr bgcolor="#949494">
			<th>AuthorID</th>
			<th>姓名</th>
			<th>年龄</th>
			<th>国籍</th>
		</tr>
		<%
			ArrayList<Map<String, String>> list2 = (ArrayList<Map<String, String>>) session.getAttribute("authorlist");
			if (list2.size() > 0) {
				out.print("<tr align=\"center\"><td>" + list2.get(0).get("AuthorID") + "</td>\n");
				out.print("<td>" + list2.get(0).get("Name") + "</td>\n");

				out.print("<td>" + list2.get(0).get("Age") + "</td>\n");
				out.print("<td>" + list2.get(0).get("Country") + "</td></tr>\n");

			} else {
				out.print("<tr><td>" + "false" + "</td></tr>\n");
			}
		%>

	</table>
	</table>
	<h1>下面是作品的详细信息</h1>
	<table width="80%" border="1" align="center">
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

				out.print("<tr align=\"center\"><td>" + list.get(0).get("ISBN") + "</td>\n");
				out.print("<td>" + list.get(0).get("Title") + "</td>\n");
				out.print("<td>" + list.get(0).get("AuthorID") + "</td>\n");
				out.print("<td>" + list.get(0).get("Publisher") + "</td>\n");
				out.print("<td>" + list.get(0).get("PublishDate") + "</td>\n");
				out.print("<td>" + list.get(0).get("Price") + "</td></tr>\n");

			} else {
				out.print("<tr><td>" + "false" + "</td></tr>\n");
			}
		%>

	</table>
	</br>
	<div class="an">
		<a href=home><button type="button">返回到主页</button></a>

	</div>
</body>
</body>
</html>