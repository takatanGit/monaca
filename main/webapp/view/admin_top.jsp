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
		<figure class="logo"><a href="<%=request.getContextPath() %>/admintop"><img src="views/img/logo_admin.png"></a></figure>
		<p class="title">麻生内求人検索システム</p>
		<p><a href="admin_login.html"><button type="submit">ログアウト</button></a></p>
	</h1>
</header>

<div class="main">

<table>
	<tr>
		<td class="admin"><img src="<%=request.getContextPath() %>/views/img/company_search.png"></td>
		<td class="admin"><img src="<%=request.getContextPath() %>/views/img/company_register.png"></td>
		<td class="admin"><img src="<%=request.getContextPath() %>/views/img/job_register.png"></td>
	</tr>
	<tr>
		<td class="admin">企業検索</td>
		<td class="admin">企業登録</td>
		<td class="admin">求人票登録</td>
	</tr>
	<tr>
		<td class="admin">
			<form method="POST" action="<%=request.getContextPath() %>/jobofferseachcompanyresult">
			<input type="text" name="admin_search" placeholder="企業コードまたは企業名"><br>
			<button type="submit">検索</button>
			</form>
		</td>
		<td class="admin"><a href="<%=request.getContextPath() %>/view/admin_company_register.jsp"><button type="submit">企業を登録する</button></a></td>
		<td class="admin"><a href="<%=request.getContextPath() %>/jobofferseachcompanyview"><button type="submit">求人票を登録する</button></a></td>
	</tr>
</table>

</div>

<footer>&copy; 2016 WhiteCo.</footer>

</body>
</html>
