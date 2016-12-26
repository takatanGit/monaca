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
		<a href="<%=request.getContextPath() %>/adminlogout"><button type="submit">ログアウト</button></a></p>
	</h1>
</header>

<div class="main">
<form action="<%=request.getContextPath() %>/companyaddchack" method="post">
	<table>
		<tr>
			<th colspan="2">企業情報登録</th>
		</tr>
		<tr>
			<td class="company_h"><span class="requisite">*</span>企業名</td>
			<td><input type="text" size="30" name="company_name"></td>
		</tr>
		<tr>
			<td class="company_h"><span class="requisite">*</span>企業名カナ</td>
			<td><input type="text" size="30" name="company_kana"></td>
		</tr>
		<tr>
			<td class="company_h">支店名</td>
			<td><input type="text" name="company_branch"></td>
		</tr>
		<tr>
			<td class="company_h">支店名カナ</td>
			<td><input type="text" name="company_branch_kana"></td>
		</tr>
		<tr>
			<td class="company_h"><span class="requisite">*</span>産業名</td>
			<td>
				<select name="industry_no">
					<option value=""></option>
					<option value="0">検索対象外</option>
					<option value="1">農・林・漁業</option>
					<option value="2">鉱業・建設・土木建築サービス</option>
					<option value="3">製造業</option>
					<option value="4">エネルギー供給・運輸通信業</option>
					<option value="5">旅行業</option>
					<option value="6">卸売・小売業・飲食店</option>
					<option value="7">金融・保険・不動産業</option>
					<option value="8">情報サービス業</option>
					<option value="9">医療・福祉</option>
					<option value="10">教育</option>
					<option value="11">ホテル業</option>
					<option value="12">その他サービス業</option>
					<option value="99">その他</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="company_h">事業内容</td>
			<td><textarea name="company_business" rows="4" cols="40"></textarea></td>
		</tr>
	</table>
<br>
	<table>
		<tr>
			<td class="company_h"><span class="requisite">*</span>郵便番号</td>
			<td><input type="text" size="3" name="company_zipcode1"> - <input type="text" size="4" name="company_zipcode2"></td>
		</tr>
		<tr>
			<td class="company_h"><span class="requisite">*</span>所在地</td>
			<td>
				<select name="company_prefectures">
				<option value="北海道">北海道</option>
				<option value="青森県">青森県</option>
				<option value="岩手県">岩手県</option>
				<option value="宮城県">宮城県</option>
				<option value="秋田県">秋田県</option>
				<option value="山形県">山形県</option>
				<option value="福島県">福島県</option>
				<option value="茨城県">茨城県</option>
				<option value="栃木県">栃木県</option>
				<option value="群馬県">群馬県</option>
				<option value="埼玉県">埼玉県</option>
				<option value="千葉県">千葉県</option>
				<option value="東京都">東京都</option>
				<option value="神奈川県">神奈川県</option>
				<option value="新潟県">新潟県</option>
				<option value="富山県">富山県</option>
				<option value="石川県">石川県</option>
				<option value="福井県">福井県</option>
				<option value="山梨県">山梨県</option>
				<option value="長野県">長野県</option>
				<option value="岐阜県">岐阜県</option>
				<option value="静岡県">静岡県</option>
				<option value="愛知県">愛知県</option>
				<option value="三重県">三重県</option>
				<option value="滋賀県">滋賀県</option>
				<option value="京都府">京都府</option>
				<option value="大阪府">大阪府</option>
				<option value="兵庫県">兵庫県</option>
				<option value="奈良県">奈良県</option>
				<option value="和歌山県">和歌山県</option>
				<option value="鳥取県">鳥取県</option>
				<option value="島根県">島根県</option>
				<option value="岡山県">岡山県</option>
				<option value="広島県">広島県</option>
				<option value="山口県">山口県</option>
				<option value="徳島県">徳島県</option>
				<option value="香川県">香川県</option>
				<option value="愛媛県">愛媛県</option>
				<option value="高知県">高知県</option>
				<option value="福岡県">福岡県</option>
				<option value="佐賀県">佐賀県</option>
				<option value="長崎県">長崎県</option>
				<option value="熊本県">熊本県</option>
				<option value="大分県">大分県</option>
				<option value="宮崎県">宮崎県</option>
				<option value="鹿児島県">鹿児島県</option>
				<option value="沖縄県">沖縄県</option>
				</select>
				<input type="text" size="25" name="company_address">
			</td>
		</tr>
		<tr>
			<td class="company_h"><span class="requisite">*</span>電話番号</td>
			<td><input type="text" size="4" name="company_tel"> - <input type="text" size="4" name=""> - <input type="text" size="4" name=""></td>
		</tr>
		<tr>
			<td class="company_h">FAX</td>
			<td><input type="text" size="4" name="company_fax"> - <input type="text" size="4" name=""> - <input type="text" size="4" name=""></td>
		</tr>
		<tr>
			<td class="company_h">メールアドレス</td>
			<td><input type="text" size="25" name="company_mail"></td>
		</tr>
		<tr>
			<td class="company_h">設立</td>
			<td>
				<select name="company_day">
					<option value="昭和">昭和</option>
					<option value="平成">平成</option>
				</select>
				<input type="text" size="3" name="company_year">年
			</td>
		</tr>
		<tr>
			<td class="company_h">資本金</td>
			<td><input type="text" size="4" name="company_capital"> 万円</td>
		</tr>
		<tr>
			<td class="company_h">売上高</td>
			<td><input type="text" size="4" name="company_sales"> 万円</td>
		</tr>
		<tr>
			<td class="company_h">従業員数</td>
			<td>
				男：<input type="text" size="3" name="company_man">人　女：<input type="text" size="3" name="company_woman">　計：<input type="text" size="3" name="company_sum">人
			</td>
		</tr>
		<tr>
			<td class="company_h">株式上場</td>
			<td>
				<select name="company_stock">
					<option value="選択無"></option>
					<option value="0">未・不明</option>
					<option value="1">東証一部</option>
					<option value="2">東証二部</option>
					<option value="3">大阪</option>
					<option value="4">名古屋</option>
					<option value="5">福岡</option>
					<option value="6">その他</option>
					<option value="7">店頭銘柄</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="company_h">URL</td>
			<td><input type="text" size="25" name="company_url"></td>
		</tr>
		<tr>
			<td class="button" colspan="2">
				<button type="submit">登録確認へ進む</button></a>
			</td>
		</tr>
	</table>
	</form>

</div>

<footer>&copy; 2016 WhiteCo.</footer>

</body>
</html>