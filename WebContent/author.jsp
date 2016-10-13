<%@ page language="java" import="java.net.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>查找结果</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<h1>下面是数据库中所有的作者</h1>
	<table width="50%" border="1" align="center">
		<tr bgcolor="#949494">
			<th>姓名</th>

		</tr>

		<%
			ArrayList<Map<String, String>> list = (ArrayList<Map<String, String>>) session.getAttribute("list");
			if (list.size() > 0) {
				for (int i = 0; i < list.size(); ++i) {
					out.println("<tr align=\"center\" ><td>" + list.get(i).get("Name") + "</td>\n");
				}
			} else {
				out.print("<tr><td>" + "false" + "</td></tr>\n");
			}
		%>

	</table>
	<br />

	<div class="an">
		<a href=home><button type="button">返回到主页</button></a>

	</div>
</body>
</html>