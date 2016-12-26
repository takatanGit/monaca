<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<title>Job Offer</title>
<link href="<%=request.getContextPath() %>/views/css/admin.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath() %>/views/js/jquery-1.11.3.min.js"></script>
<script src="<%=request.getContextPath() %>/views/js/script.js"></script>
</head>
<body>

<header>
	<h1>
		<figure class="logo"><a href="<%=request.getContextPath() %>/admintop"><img src="img/logo_admin.png"></a></figure>
		<p class="title">麻生内求人検索システム</p>
		<p><a href="admin_top.html"><button type="submit">管理メニュー</button></a>
		<a href="<%=request.getContextPath() %>adminlogout"><button type="submit">ログアウト</button></a></p>
	</h1>
</header>

<div class="main">

	<table>
		<tr>
			<th>企業情報登録完了</th>
		</tr>
		<tr>
			<td class="message">企業情報を登録しました。</td>
		</tr>
	</table>
<br>
	<table>
		<tr>
			<td class="button">
				<a href="admin_company_detail.html"><button type="submit">企業詳細へ</button></a>
				<a href="<%=request.getContextPath() %>/view/admin_job_register.jsp"><button type="submit">続けて求人票を登録する</button></a>
			</td>
		</tr>
	</table>

</div>

<footer>&copy; 2016 WhiteCo.</footer>

</body>
</html>