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
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="jp.ac.asojobs.asojobs.entity.CompanyEntity" %>
<%

CompanyEntity ce = new CompanyEntity();
HttpSession company_session = request.getSession(false);
ce = (CompanyEntity)company_session.getAttribute("company");

String indstry [] = new String[100];
indstry[0] = "検索対象外";
indstry[1] = "農・林・漁業";
indstry[2] = "鉱業・建設・土木建築サービス";
indstry[3] = "製造業";
indstry[4] = "エネルギー供給・運輸通信業";
indstry[5] = "旅行業";
indstry[6] = "卸売・小売業・飲食店";
indstry[7] = "金融・保険・不動産業";
indstry[8] = "情報サービス業";
indstry[9] = "医療・福祉";
indstry[10] = "教育";
indstry[11] = "ホテル業";
indstry[12] = "その他サービス業";
indstry[99] = "その他";
int indstry_int = Integer.parseInt(ce.getIndestry_no());

%>
<div class="main">
<form action="<%=request.getContextPath() %>/companyadd" method="post">
	<table>
		<tr>
			<th colspan="2">企業情報登録確認</th>
		</tr>
		<tr>
			<td class="company_h">企業名</td>
			<td><%=ce.getCompany_name() %></td>
		</tr>
		<tr>
			<td class="company_h">企業名カナ</td>
			<td><%=ce.getCompany_kana() %></td>
		</tr>
		<tr>
			<td class="company_h">支店名</td>
			<td><%=ce.getCompany_branch() %></td>
		</tr>
		<tr>
			<td class="company_h">支店名カナ</td>
			<td><%=ce.getCompany_branch_kana() %></td>
		</tr>
		<tr>
			<td class="company_h">産業名</td>
			<td><%=indstry[indstry_int] %></td>
		</tr>
		<tr>
			<td class="company_h">事業内容</td>
			<td><%=ce.getCompany_business() %></td>
		</tr>
	</table>
<br>
	<table>
		<tr>
			<td class="company_h">郵便番号</td>
			<td><%=ce.getCompany_zipcode() %></td>
		</tr>
		<tr>
			<td class="company_h">所在地</td>
			<td><%=ce.getCompany_address() %></td>
		</tr>

		<tr>
			<td class="company_h">電話番号</td>
			<td><%=ce.getCompany_tel() %></td>
		</tr>
		<tr>
			<td class="company_h">FAX</td>
			<td><%=ce.getCompany_fax() %></td>
		</tr>
		<tr>
			<td class="company_h">メールアドレス</td>
			<td><%=ce.getCompany_mail() %></td>
		</tr>
		<tr>
			<td class="company_h">設立</td>
			<td><%=ce.getCompany_day() %></td>
		</tr>
		<tr>
			<td class="company_h">資本金</td>
			<td>1<%=ce.getCompany_capital() %>万円</td>
		</tr>
		<tr>
			<td class="company_h">売上高</td>
			<td><%=ce.getCompany_sales() %>万円</td>
		</tr>
		<tr>
			<td class="company_h">従業員数</td>
			<td>（全体）計：<%=ce.getCompany_sum() %>名</td>
		</tr>
		<tr>
			<td class="company_h">株式上場</td>
			<td><%=ce.getCompany_stock() %></td>
		</tr>
		<tr>
			<td class="company_h">URL</td>
			<td><%=ce.getCompany_url() %></td>
		</tr>
		<tr>
			<td class="button" colspan="2">
				<button type="submit" onClick="history.back()">修正する</button>
				<button type="submit">登録する</button></a>
			</td>
		</tr>
	</table>
	</form>

</div>

<footer>&copy; 2016 WhiteCo.</footer>

</body>
</html>