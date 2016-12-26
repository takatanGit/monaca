<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<title>Job Offer</title>
<link href="css/admin.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/script.js"></script>
</head>
<body>

<header>
	<h1>
		<figure class="logo"><a href="admin_top.html"><img src="img/logo_admin.png"></a></figure>
		<p class="title">麻生内求人検索システム</p>
		<p><a href="admin_top.html"><button type="submit">管理メニュー</button></a>
		<a href="admin_login.html"><button type="submit">ログアウト</button></a></p>
	</h1>
</header>

<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="jp.ac.asojobs.asojobs.entity.JobofferUpdateEntity" %>
<%@ page import="java.util.ArrayList" %>
<%

JobofferUpdateEntity jue = new JobofferUpdateEntity();
HttpSession company_session = request.getSession(false);
jue = (JobofferUpdateEntity)company_session.getAttribute("joboffer_update_session");


%>





<div class="main">

	<table>
		<tr>
			<th>求人票情報編集</th>
		</tr>
		<tr>
			<td class="company_d">
				企業コード：<%=jue.getCompany_no() %><br>
				<span class="company_name">株式会社サンプルソフトウェア</span><br>
			</td>
		</tr>
	</table>
<br>
	<table>
		<tr>
			<th colspan="2">募集要項・就業条件</th>
		</tr>
		<tr>
			<td class="company_h">年度</td>
			<td><input type="text" size="5" name="joboffer_year" value="<%=jue.getJoboffer_year() %>"></td>
		</tr>
		<tr>
			<td class="company_h">募集人数</td>
			<td>
				<table>
				<tr>
				<td class="job_r_m">
				</td>
				<td class="job_r_m">
				共用
				</td>
				<td class="job_r_m">
				男性
				</td>
				<td class="job_r_m">
				女性
				</td>
				</tr>
				<tr>
				<td class="job_r_m">
				<%
				int i = 0;
				int count = 1;
				%>
				<select name="job_no1">
				<option value=""></option>

				<option value="1"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・システムエンジニア</option>
				<option value="2"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・プログラマ</option>
				<option value="3"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・オペレータ</option>
				<option value="4"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・CGデザイナー</option>
				<option value="5"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ネットワーク関係</option>
				<option value="6"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマエンジニア</option>
				<option value="7"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプログラマ</option>
				<option value="8"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプランナ</option>
				<option value="9"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・サーバーエンジニア</option>
				<option value="10"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマサポート</option>
				<option value="11"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・デバッガー</option>
				<option value="12"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・制御関係</option>
				<option value="13"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CG関係</option>
				<option value="14"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CAD</option>
				<option value="15"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・設計職</option>
				<option value="16"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・施工管理</option>
				<option value="17"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・現業職</option>
				<option value="18"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・積算職</option>
				<option value="19"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・一般事務</option>
				<option value="20"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・経理事務</option>
				<option value="21"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・営業事務</option>
				<option value="22"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医療事務</option>
				<option value="23"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・オペレータ（入力業務）</option>
				<option value="24"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・貿易事務</option>
				<option value="25"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・診療情報管理職</option>
				<option value="26"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・調剤事務</option>
				<option value="27"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・歯科受付</option>
				<option value="28"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・総務事務</option>
				<option value="29"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医師事務作業補助者</option>
				<option value="30"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・コールセンター職</option>
				<option value="31"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・事務系総合職</option>
				<option value="32"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・秘書</option>
				<option value="33"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・病棟クラーク</option>
				<option value="34"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・営業職</option>
				<option value="35"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・販売職</option>
				<option value="36"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・インストラクタ</option>
				<option value="37"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・サービス</option>
				<option value="38"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・総合職</option>
				<option value="39"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・警備</option>
				<option value="40"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・デザイナー</option>
				<option value="41"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・DTPオペレータ</option>
				<option value="42"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・インテリア関係</option>
				<option value="43"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・Webデザイナー</option>
				<option value="44"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・映像クリエーター</option>
				<option value="45"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・アニメーター</option>
				<option value="46"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・漫画家</option>
				<option value="47"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・ディレクター</option>
				<option value="48"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・企画</option>
				<option value="49"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・編集</option>
				<option value="50"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・介護職</option>
				<option value="51"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・指導員</option>
				<option value="52"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・保育士</option>
				<option value="53"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・教諭</option>
				<option value="54"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・看護助手</option>
				<option value="55"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・PSW</option>
				<option value="56"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・相談員</option>
				<option value="57"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・MSW</option>
				<option value="58"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・一般サービス</option>
				<option value="59"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・メディカルアテンダント</option>
				<option value="60"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ブライダル関係</option>
				<option value="61"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・航空関係</option>
				<option value="62"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ホテル関係</option>
				<option value="63"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・旅行関係</option>
				<option value="64"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・鉄道関係</option>
				<option value="65"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・パティシエ</option>
				<option value="66"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>レセプショニスト</option>
				<option value="67"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・調理</option>
				<option value="68"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>アイリスト</option>
				<option value="69"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>セラピスト</option>
				<option value="70"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容師</option>
				<option value="71"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>エステティシャン</option>
				<option value="72"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容部員</option>
				<option value="73"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ネイリスト</option>
				<option value="74"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>メイクアップアーティスト</option>
				<option value="75"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ヘアメイク</option>
				<option value="76"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>カラーリスト</option>
				<option value="77"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ブライダル</option>
				<option value="78"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スパニスト</option>
				<option value="79"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ケアリスト</option>
				<option value="80"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ビューティ・コーディネーター</option>
				<option value="81"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整備士</option>
				<option value="82"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>検査員</option>
				<option value="83"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術アジャスター</option>
				<option value="84"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>機械設計職</option>
				<option value="85"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術職</option>
				<option value="86"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技能職</option>
				<option value="87"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>フェイシャリスト</option>
				<option value="88"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スキンケアアドバイザー</option>
				<option value="89"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整体</option>
				<option value="90"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>その他</option>
				</select>

				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_unisex1" value="<%=jue.getJoboffer_unisex().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_man1" value="<%=jue.getJoboffer_man().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_woman1" value="<%=jue.getJoboffer_woman().get(i) %>">
				</td>

				<%
				i++;
				count = 0;
				%>

				</tr>


				<tr>
				<td class="job_r_m">
				<select name="job_no2">
				<option value=""></option>

				<option value="1"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・システムエンジニア</option>
				<option value="2"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・プログラマ</option>
				<option value="3"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・オペレータ</option>
				<option value="4"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・CGデザイナー</option>
				<option value="5"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ネットワーク関係</option>
				<option value="6"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマエンジニア</option>
				<option value="7"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプログラマ</option>
				<option value="8"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプランナ</option>
				<option value="9"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・サーバーエンジニア</option>
				<option value="10"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマサポート</option>
				<option value="11"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・デバッガー</option>
				<option value="12"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・制御関係</option>
				<option value="13"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CG関係</option>
				<option value="14"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CAD</option>
				<option value="15"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・設計職</option>
				<option value="16"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・施工管理</option>
				<option value="17"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・現業職</option>
				<option value="18"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・積算職</option>
				<option value="19"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・一般事務</option>
				<option value="20"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・経理事務</option>
				<option value="21"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・営業事務</option>
				<option value="22"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医療事務</option>
				<option value="23"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・オペレータ（入力業務）</option>
				<option value="24"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・貿易事務</option>
				<option value="25"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・診療情報管理職</option>
				<option value="26"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・調剤事務</option>
				<option value="27"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・歯科受付</option>
				<option value="28"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・総務事務</option>
				<option value="29"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医師事務作業補助者</option>
				<option value="30"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・コールセンター職</option>
				<option value="31"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・事務系総合職</option>
				<option value="32"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・秘書</option>
				<option value="33"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・病棟クラーク</option>
				<option value="34"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・営業職</option>
				<option value="35"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・販売職</option>
				<option value="36"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・インストラクタ</option>
				<option value="37"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・サービス</option>
				<option value="38"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・総合職</option>
				<option value="39"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・警備</option>
				<option value="40"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・デザイナー</option>
				<option value="41"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・DTPオペレータ</option>
				<option value="42"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・インテリア関係</option>
				<option value="43"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・Webデザイナー</option>
				<option value="44"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・映像クリエーター</option>
				<option value="45"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・アニメーター</option>
				<option value="46"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・漫画家</option>
				<option value="47"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・ディレクター</option>
				<option value="48"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・企画</option>
				<option value="49"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・編集</option>
				<option value="50"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・介護職</option>
				<option value="51"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・指導員</option>
				<option value="52"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・保育士</option>
				<option value="53"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・教諭</option>
				<option value="54"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・看護助手</option>
				<option value="55"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・PSW</option>
				<option value="56"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・相談員</option>
				<option value="57"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・MSW</option>
				<option value="58"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・一般サービス</option>
				<option value="59"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・メディカルアテンダント</option>
				<option value="60"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ブライダル関係</option>
				<option value="61"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・航空関係</option>
				<option value="62"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ホテル関係</option>
				<option value="63"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・旅行関係</option>
				<option value="64"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・鉄道関係</option>
				<option value="65"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・パティシエ</option>
				<option value="66"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>レセプショニスト</option>
				<option value="67"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・調理</option>
				<option value="68"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>アイリスト</option>
				<option value="69"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>セラピスト</option>
				<option value="70"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容師</option>
				<option value="71"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>エステティシャン</option>
				<option value="72"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容部員</option>
				<option value="73"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ネイリスト</option>
				<option value="74"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>メイクアップアーティスト</option>
				<option value="75"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ヘアメイク</option>
				<option value="76"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>カラーリスト</option>
				<option value="77"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ブライダル</option>
				<option value="78"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スパニスト</option>
				<option value="79"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ケアリスト</option>
				<option value="80"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ビューティ・コーディネーター</option>
				<option value="81"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整備士</option>
				<option value="82"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>検査員</option>
				<option value="83"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術アジャスター</option>
				<option value="84"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>機械設計職</option>
				<option value="85"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術職</option>
				<option value="86"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技能職</option>
				<option value="87"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>フェイシャリスト</option>
				<option value="88"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スキンケアアドバイザー</option>
				<option value="89"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整体</option>
				<option value="90"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>その他</option>
				</select>

				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_unisex2" value="<%=jue.getJoboffer_unisex().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_man2" value="<%=jue.getJoboffer_man().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_woman2" value="<%=jue.getJoboffer_woman().get(i) %>">
				</td>

				<%
				i++;
				count = 0;
				%>
				</tr>

				<tr>
				<td class="job_r_m">
				<select name="job_no3">
				<option value=""></option>

				<option value="1"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・システムエンジニア</option>
				<option value="2"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・プログラマ</option>
				<option value="3"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・オペレータ</option>
				<option value="4"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・CGデザイナー</option>
				<option value="5"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ネットワーク関係</option>
				<option value="6"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマエンジニア</option>
				<option value="7"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプログラマ</option>
				<option value="8"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプランナ</option>
				<option value="9"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・サーバーエンジニア</option>
				<option value="10"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマサポート</option>
				<option value="11"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・デバッガー</option>
				<option value="12"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・制御関係</option>
				<option value="13"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CG関係</option>
				<option value="14"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CAD</option>
				<option value="15"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・設計職</option>
				<option value="16"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・施工管理</option>
				<option value="17"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・現業職</option>
				<option value="18"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・積算職</option>
				<option value="19"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・一般事務</option>
				<option value="20"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・経理事務</option>
				<option value="21"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・営業事務</option>
				<option value="22"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医療事務</option>
				<option value="23"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・オペレータ（入力業務）</option>
				<option value="24"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・貿易事務</option>
				<option value="25"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・診療情報管理職</option>
				<option value="26"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・調剤事務</option>
				<option value="27"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・歯科受付</option>
				<option value="28"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・総務事務</option>
				<option value="29"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医師事務作業補助者</option>
				<option value="30"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・コールセンター職</option>
				<option value="31"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・事務系総合職</option>
				<option value="32"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・秘書</option>
				<option value="33"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・病棟クラーク</option>
				<option value="34"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・営業職</option>
				<option value="35"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・販売職</option>
				<option value="36"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・インストラクタ</option>
				<option value="37"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・サービス</option>
				<option value="38"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・総合職</option>
				<option value="39"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・警備</option>
				<option value="40"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・デザイナー</option>
				<option value="41"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・DTPオペレータ</option>
				<option value="42"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・インテリア関係</option>
				<option value="43"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・Webデザイナー</option>
				<option value="44"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・映像クリエーター</option>
				<option value="45"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・アニメーター</option>
				<option value="46"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・漫画家</option>
				<option value="47"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・ディレクター</option>
				<option value="48"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・企画</option>
				<option value="49"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・編集</option>
				<option value="50"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・介護職</option>
				<option value="51"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・指導員</option>
				<option value="52"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・保育士</option>
				<option value="53"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・教諭</option>
				<option value="54"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・看護助手</option>
				<option value="55"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・PSW</option>
				<option value="56"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・相談員</option>
				<option value="57"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・MSW</option>
				<option value="58"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・一般サービス</option>
				<option value="59"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・メディカルアテンダント</option>
				<option value="60"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ブライダル関係</option>
				<option value="61"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・航空関係</option>
				<option value="62"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ホテル関係</option>
				<option value="63"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・旅行関係</option>
				<option value="64"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・鉄道関係</option>
				<option value="65"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・パティシエ</option>
				<option value="66"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>レセプショニスト</option>
				<option value="67"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・調理</option>
				<option value="68"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>アイリスト</option>
				<option value="69"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>セラピスト</option>
				<option value="70"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容師</option>
				<option value="71"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>エステティシャン</option>
				<option value="72"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容部員</option>
				<option value="73"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ネイリスト</option>
				<option value="74"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>メイクアップアーティスト</option>
				<option value="75"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ヘアメイク</option>
				<option value="76"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>カラーリスト</option>
				<option value="77"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ブライダル</option>
				<option value="78"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スパニスト</option>
				<option value="79"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ケアリスト</option>
				<option value="80"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ビューティ・コーディネーター</option>
				<option value="81"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整備士</option>
				<option value="82"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>検査員</option>
				<option value="83"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術アジャスター</option>
				<option value="84"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>機械設計職</option>
				<option value="85"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術職</option>
				<option value="86"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技能職</option>
				<option value="87"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>フェイシャリスト</option>
				<option value="88"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スキンケアアドバイザー</option>
				<option value="89"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整体</option>
				<option value="90"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>その他</option>
				</select>

				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_unisex3" value="<%=jue.getJoboffer_unisex().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_man3" value="<%=jue.getJoboffer_man().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_woman3" value="<%=jue.getJoboffer_woman().get(i) %>">
				</td>

				<%
				i++;
				count = 0;
				%>

				</tr>
				<tr>
				<td class="job_r_m">
				<select name="job_no4">
				<option value=""></option>

				<option value="1"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・システムエンジニア</option>
				<option value="2"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・プログラマ</option>
				<option value="3"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・オペレータ</option>
				<option value="4"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・CGデザイナー</option>
				<option value="5"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ネットワーク関係</option>
				<option value="6"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマエンジニア</option>
				<option value="7"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプログラマ</option>
				<option value="8"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプランナ</option>
				<option value="9"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・サーバーエンジニア</option>
				<option value="10"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマサポート</option>
				<option value="11"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・デバッガー</option>
				<option value="12"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・制御関係</option>
				<option value="13"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CG関係</option>
				<option value="14"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CAD</option>
				<option value="15"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・設計職</option>
				<option value="16"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・施工管理</option>
				<option value="17"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・現業職</option>
				<option value="18"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・積算職</option>
				<option value="19"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・一般事務</option>
				<option value="20"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・経理事務</option>
				<option value="21"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・営業事務</option>
				<option value="22"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医療事務</option>
				<option value="23"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・オペレータ（入力業務）</option>
				<option value="24"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・貿易事務</option>
				<option value="25"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・診療情報管理職</option>
				<option value="26"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・調剤事務</option>
				<option value="27"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・歯科受付</option>
				<option value="28"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・総務事務</option>
				<option value="29"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医師事務作業補助者</option>
				<option value="30"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・コールセンター職</option>
				<option value="31"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・事務系総合職</option>
				<option value="32"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・秘書</option>
				<option value="33"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・病棟クラーク</option>
				<option value="34"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・営業職</option>
				<option value="35"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・販売職</option>
				<option value="36"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・インストラクタ</option>
				<option value="37"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・サービス</option>
				<option value="38"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・総合職</option>
				<option value="39"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・警備</option>
				<option value="40"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・デザイナー</option>
				<option value="41"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・DTPオペレータ</option>
				<option value="42"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・インテリア関係</option>
				<option value="43"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・Webデザイナー</option>
				<option value="44"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・映像クリエーター</option>
				<option value="45"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・アニメーター</option>
				<option value="46"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・漫画家</option>
				<option value="47"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・ディレクター</option>
				<option value="48"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・企画</option>
				<option value="49"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・編集</option>
				<option value="50"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・介護職</option>
				<option value="51"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・指導員</option>
				<option value="52"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・保育士</option>
				<option value="53"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・教諭</option>
				<option value="54"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・看護助手</option>
				<option value="55"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・PSW</option>
				<option value="56"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・相談員</option>
				<option value="57"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・MSW</option>
				<option value="58"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・一般サービス</option>
				<option value="59"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・メディカルアテンダント</option>
				<option value="60"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ブライダル関係</option>
				<option value="61"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・航空関係</option>
				<option value="62"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ホテル関係</option>
				<option value="63"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・旅行関係</option>
				<option value="64"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・鉄道関係</option>
				<option value="65"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・パティシエ</option>
				<option value="66"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>レセプショニスト</option>
				<option value="67"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・調理</option>
				<option value="68"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>アイリスト</option>
				<option value="69"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>セラピスト</option>
				<option value="70"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容師</option>
				<option value="71"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>エステティシャン</option>
				<option value="72"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容部員</option>
				<option value="73"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ネイリスト</option>
				<option value="74"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>メイクアップアーティスト</option>
				<option value="75"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ヘアメイク</option>
				<option value="76"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>カラーリスト</option>
				<option value="77"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ブライダル</option>
				<option value="78"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スパニスト</option>
				<option value="79"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ケアリスト</option>
				<option value="80"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ビューティ・コーディネーター</option>
				<option value="81"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整備士</option>
				<option value="82"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>検査員</option>
				<option value="83"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術アジャスター</option>
				<option value="84"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>機械設計職</option>
				<option value="85"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術職</option>
				<option value="86"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技能職</option>
				<option value="87"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>フェイシャリスト</option>
				<option value="88"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スキンケアアドバイザー</option>
				<option value="89"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整体</option>
				<option value="90"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>その他</option>
				</select>

				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_unisex4" value="<%=jue.getJoboffer_unisex().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_man4" value="<%=jue.getJoboffer_man().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_woman4" value="<%=jue.getJoboffer_woman().get(i) %>">
				</td>

				<%
				i++;
				count = 0;
				%>

				</tr>

				<tr>
				<td class="job_r_m">
				<select name="job_no5">
				<option value=""></option>

				<option value="1"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・システムエンジニア</option>
				<option value="2"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・プログラマ</option>
				<option value="3"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・オペレータ</option>
				<option value="4"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・CGデザイナー</option>
				<option value="5"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ネットワーク関係</option>
				<option value="6"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマエンジニア</option>
				<option value="7"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプログラマ</option>
				<option value="8"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・ゲームプランナ</option>
				<option value="9"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・サーバーエンジニア</option>
				<option value="10"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・カスタマサポート</option>
				<option value="11"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>コンピュータ系・デバッガー</option>
				<option value="12"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・制御関係</option>
				<option value="13"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CG関係</option>
				<option value="14"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・CAD</option>
				<option value="15"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・設計職</option>
				<option value="16"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・施工管理</option>
				<option value="17"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・現業職</option>
				<option value="18"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>工業系・積算職</option>
				<option value="19"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・一般事務</option>
				<option value="20"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・経理事務</option>
				<option value="21"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・営業事務</option>
				<option value="22"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医療事務</option>
				<option value="23"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・オペレータ（入力業務）</option>
				<option value="24"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・貿易事務</option>
				<option value="25"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・診療情報管理職</option>
				<option value="26"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・調剤事務</option>
				<option value="27"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・歯科受付</option>
				<option value="28"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・総務事務</option>
				<option value="29"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・医師事務作業補助者</option>
				<option value="30"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・コールセンター職</option>
				<option value="31"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・事務系総合職</option>
				<option value="32"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・秘書</option>
				<option value="33"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>事務系・病棟クラーク</option>
				<option value="34"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・営業職</option>
				<option value="35"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・販売職</option>
				<option value="36"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・インストラクタ</option>
				<option value="37"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・サービス</option>
				<option value="38"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・総合職</option>
				<option value="39"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>営業系・警備</option>
				<option value="40"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・デザイナー</option>
				<option value="41"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・DTPオペレータ</option>
				<option value="42"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・インテリア関係</option>
				<option value="43"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・Webデザイナー</option>
				<option value="44"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・映像クリエーター</option>
				<option value="45"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・アニメーター</option>
				<option value="46"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・漫画家</option>
				<option value="47"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・ディレクター</option>
				<option value="48"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・企画</option>
				<option value="49"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>デザイン系・編集</option>
				<option value="50"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・介護職</option>
				<option value="51"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・指導員</option>
				<option value="52"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・保育士</option>
				<option value="53"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・教諭</option>
				<option value="54"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・看護助手</option>
				<option value="55"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・PSW</option>
				<option value="56"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・相談員</option>
				<option value="57"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>福祉系・MSW</option>
				<option value="58"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・一般サービス</option>
				<option value="59"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・メディカルアテンダント</option>
				<option value="60"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ブライダル関係</option>
				<option value="61"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・航空関係</option>
				<option value="62"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・ホテル関係</option>
				<option value="63"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・旅行関係</option>
				<option value="64"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・鉄道関係</option>
				<option value="65"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・パティシエ</option>
				<option value="66"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>レセプショニスト</option>
				<option value="67"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>サービス系・調理</option>
				<option value="68"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>アイリスト</option>
				<option value="69"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>セラピスト</option>
				<option value="70"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容師</option>
				<option value="71"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>エステティシャン</option>
				<option value="72"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>美容部員</option>
				<option value="73"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ネイリスト</option>
				<option value="74"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>メイクアップアーティスト</option>
				<option value="75"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ヘアメイク</option>
				<option value="76"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>カラーリスト</option>
				<option value="77"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ブライダル</option>
				<option value="78"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スパニスト</option>
				<option value="79"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ケアリスト</option>
				<option value="80"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>ビューティ・コーディネーター</option>
				<option value="81"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整備士</option>
				<option value="82"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>検査員</option>
				<option value="83"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術アジャスター</option>
				<option value="84"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>機械設計職</option>
				<option value="85"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技術職</option>
				<option value="86"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>技能職</option>
				<option value="87"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>フェイシャリスト</option>
				<option value="88"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>スキンケアアドバイザー</option>
				<option value="89"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>整体</option>
				<option value="90"<%if(jue.getJob_no().size() > i){ if(jue.getJob_no().get(i) == count){ %>selected<%}} count++;%>>その他</option>
				</select>

				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_unisex5" value="<%=jue.getJoboffer_unisex().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_man5" value="<%=jue.getJoboffer_man().get(i) %>">
				</td>
				<td class="job_r_m">
				<input type="text" size="3" name="joboffer_woman5" value="<%=jue.getJoboffer_woman().get(i) %>">
				</td>

				</tr>
				</table>
			</td>
		</tr>
		<%
		String times [][] = new String[3][4];
		String time_set;
		for(int f = 0;f < 3;f++){
			for(int g = 0;g < 4;g++){
				times[f][g] = "";
			}
		}

		for(int a = 0;a < jue.getWorking_strt().size();a++){
			time_set = jue.getWorking_strt().get(a);
			times[a][0] = String.valueOf(time_set.charAt(0)) + String.valueOf(time_set.charAt(1));
			times[a][1] = String.valueOf(time_set.charAt(2)) + String.valueOf(time_set.charAt(3));
			time_set = jue.getWorking_end().get(a);
			times[a][2] = String.valueOf(time_set.charAt(0)) + String.valueOf(time_set.charAt(1));
			times[a][3] = String.valueOf(time_set.charAt(2)) + String.valueOf(time_set.charAt(3));

		}
		%>
		<tr>
			<td class="company_h">就業時間</td>
			<td>
				<input type="text" size="4" name="working_strt01" value="<%=times[0][0] %>">：<input type="text" size="4" name="working_strt02" value="<%=times[0][1]%>"> ～ <input type="text" size="4" name="working_end01" value="<%=times[0][2]%>">：<input type="text" size="4" name="working_end02" value="<%=times[0][3]%>"><br>
				<input type="text" size="4" name="working_strt11" value="<%=times[1][0] %>">：<input type="text" size="4" name="working_strt12" value="<%=times[1][1]%>"> ～ <input type="text" size="4" name="working_end11" value="<%=times[1][2]%>">：<input type="text" size="4" name="working_end12" value="<%=times[1][3]%>"><br>
				<input type="text" size="4" name="working_strt21" value="<%=times[2][0] %>">：<input type="text" size="4" name="working_strt22" value="<%=times[2][1]%>"> ～ <input type="text" size="4" name="working_end21" value="<%=times[2][2]%>">：<input type="text" size="4" name="working_end22" value="<%=times[2][3]%>"><br>
			</td>
		</tr>
		<%
		ArrayList<String> horiday = new ArrayList<String>();
		String horiday_set = jue.getHoriday_etcetera();
		String set = "";
		String memo = "";
		for(int x = 0;x < horiday_set.length();x++){
			set = String.valueOf(horiday_set.charAt(x));
			if(!set.equals("\"")){
				if(!set.equals(",")){
					horiday.add(set);
				}
			}
			else{
				x++;
				while(!set.equals("\"")){
					memo = memo + String.valueOf(horiday_set.charAt(x));
					x++;
				}
			}
		}
		count = 0;
		%>
		<tr>
			<td class="company_h">休日</td>
			<td>
				<input type="checkbox" name="holiday" value="月" <%if(horiday.get(count).equals("月")){ %> checked <%count++;} %>>月　<input type="checkbox" name="holiday" value="火" <%if(horiday.get(count).equals("火")){ %> checked <%count++;} %>>火　<input type="checkbox" name="holiday" value="水" <%if(horiday.get(count).equals("水")){ %> checked <%count++;} %>>水　<input type="checkbox" name="holiday" value="木" <%if(horiday.get(count).equals("木")){ %> checked <%count++;} %>>木　
				<input type="checkbox" name="holiday" value="金" <%if(horiday.get(count).equals("金")){ %> checked <%count++;} %>>金　<input type="checkbox" name="holiday" value="土" <%if(horiday.get(count).equals("土")){ %> checked <%count++;} %>>土　<input type="checkbox" name="holiday" value="日" <%if(horiday.get(count).equals("日")){ %> checked <%count++;} %>>日　<input type="checkbox" name="holiday" value="祝" <%if(horiday.get(count).equals("祝")){ %> checked <%count++;} %>>祝<br>
				その他 <input type="text" size="30" name="holiday_memo" value="<%=memo %>">
			</td>
		</tr>
		<tr>
			<td class="company_h">初任給</td>
			<td>
				1年コース　<input type="text" name="one_salary" value="<%=jue.getOne_salary() %>">円<br>
				2年コース　<input type="text" name="two_salary" value="<%=jue.getTwo_salary() %>">円<br>
				3年コース　<input type="text" name="three_salary" value="<%=jue.getThree_salary() %>">円<br>
				4年コース　<input type="text" name="four_salary" value="<%=jue.getFour_salary() %>">円<br>
			</td>
		</tr>
		<tr>
			<td class="company_h">賞与</td>
			<td>
				<input type="text" size="4" name="bonus_freq" value="<%=jue.getBonus_freq() %>">回/年　約<input type="text" size="4" name="bonus_month" value="<%=jue.getBonus_month() %>">ヶ月分/年
			</td>
		</tr>
		<tr>
			<td class="company_h">昇給</td>
			<td>
				<input type="text" size="4" name="pay_raise" value="<%=jue.getPay_raise() %>">回/年　約<input type="text" size="4" name="pay_raise_index" value="<%=jue.getPay_raise_index() %>">％<br>
				約<input type="text" size="6" name="minimum" value="<%=jue.getMinimum() %>">円 ～ <input type="text" size="6" name="maximum" value="<%=jue.getMaximum() %>">円<br>
			</td>
		</tr>
		<%String ken = jue.getJoboffer_prefectures(); %>
		<tr>
			<td class="company_h">勤務地</td>
			<td>
				<select name="joboffer_prefectures">
				<option value="北海道"<%if(ken.equals("北海道")){ %> selected <%} %>>北海道</option>
				<option value="青森県"<%if(ken.equals("青森県")){ %> selected <%} %>>青森県</option>
				<option value="岩手県"<%if(ken.equals("岩手県")){ %> selected <%} %>>岩手県</option>
				<option value="宮城県"<%if(ken.equals("宮城県")){ %> selected <%} %>>宮城県</option>
				<option value="秋田県"<%if(ken.equals("秋田県")){ %> selected <%} %>>秋田県</option>
				<option value="山形県"<%if(ken.equals("山形県")){ %> selected <%} %>>山形県</option>
				<option value="福島県"<%if(ken.equals("福島県")){ %> selected <%} %>>福島県</option>
				<option value="茨城県"<%if(ken.equals("茨城県")){ %> selected <%} %>>茨城県</option>
				<option value="栃木県"<%if(ken.equals("栃木県")){ %> selected <%} %>>栃木県</option>
				<option value="群馬県"<%if(ken.equals("群馬県")){ %> selected <%} %>>群馬県</option>
				<option value="埼玉県"<%if(ken.equals("埼玉県")){ %> selected <%} %>>埼玉県</option>
				<option value="千葉県"<%if(ken.equals("千葉県")){ %> selected <%} %>>千葉県</option>
				<option value="東京都"<%if(ken.equals("東京都")){ %> selected <%} %>>東京都</option>
				<option value="神奈川県"<%if(ken.equals("神奈川県")){ %> selected <%} %>>神奈川県</option>
				<option value="新潟県"<%if(ken.equals("新潟県")){ %> selected <%} %>>新潟県</option>
				<option value="富山県"<%if(ken.equals("富山県")){ %> selected <%} %>>富山県</option>
				<option value="石川県"<%if(ken.equals("石川県")){ %> selected <%} %>>石川県</option>
				<option value="福井県"<%if(ken.equals("福井県")){ %> selected <%} %>>福井県</option>
				<option value="山梨県"<%if(ken.equals("山梨県")){ %> selected <%} %>>山梨県</option>
				<option value="長野県"<%if(ken.equals("長野県")){ %> selected <%} %>>長野県</option>
				<option value="岐阜県"<%if(ken.equals("岐阜県")){ %> selected <%} %>>岐阜県</option>
				<option value="静岡県"<%if(ken.equals("静岡県")){ %> selected <%} %>>静岡県</option>
				<option value="愛知県"<%if(ken.equals("愛知県")){ %> selected <%} %>>愛知県</option>
				<option value="三重県"<%if(ken.equals("三重県")){ %> selected <%} %>>三重県</option>
				<option value="滋賀県"<%if(ken.equals("滋賀県")){ %> selected <%} %>>滋賀県</option>
				<option value="京都府"<%if(ken.equals("京都府")){ %> selected <%} %>>京都府</option>
				<option value="大阪府"<%if(ken.equals("大阪府")){ %> selected <%} %>>大阪府</option>
				<option value="兵庫県"<%if(ken.equals("兵庫県")){ %> selected <%} %>>兵庫県</option>
				<option value="奈良県"<%if(ken.equals("奈良県")){ %> selected <%} %>>奈良県</option>
				<option value="和歌山県"<%if(ken.equals("和歌山県")){ %> selected <%} %>>和歌山県</option>
				<option value="鳥取県"<%if(ken.equals("鳥取県")){ %> selected <%} %>>鳥取県</option>
				<option value="島根県"<%if(ken.equals("島根県")){ %> selected <%} %>>島根県</option>
				<option value="岡山県"<%if(ken.equals("岡山県")){ %> selected <%} %>>岡山県</option>
				<option value="広島県"<%if(ken.equals("広島県")){ %> selected <%} %>>広島県</option>
				<option value="山口県"<%if(ken.equals("山口県")){ %> selected <%} %>>山口県</option>
				<option value="徳島県"<%if(ken.equals("徳島県")){ %> selected <%} %>>徳島県</option>
				<option value="香川県"<%if(ken.equals("香川県")){ %> selected <%} %>>香川県</option>
				<option value="愛媛県"<%if(ken.equals("愛媛県")){ %> selected <%} %>>愛媛県</option>
				<option value="高知県"<%if(ken.equals("高知県")){ %> selected <%} %>>高知県</option>
				<option value="福岡県"<%if(ken.equals("福岡県")){ %> selected <%} %>>福岡県</option>
				<option value="佐賀県"<%if(ken.equals("佐賀県")){ %> selected <%} %>>佐賀県</option>
				<option value="長崎県"<%if(ken.equals("長崎県")){ %> selected <%} %>>長崎県</option>
				<option value="熊本県"<%if(ken.equals("熊本県")){ %> selected <%} %>>熊本県</option>
				<option value="大分県"<%if(ken.equals("大分県")){ %> selected <%} %>>大分県</option>
				<option value="宮崎県"<%if(ken.equals("宮崎県")){ %> selected <%} %>>宮崎県</option>
				<option value="鹿児島県"<%if(ken.equals("鹿児島県")){ %> selected <%} %>>鹿児島県</option>
				<option value="沖縄県"<%if(ken.equals("沖縄県")){ %> selected <%} %>>沖縄県</option>
				</select>
			</td>
		</tr>
		<%
		int flg = 0;
		char tu = jue.getTrans_exp().charAt(0);
        if(tu < '0' || tu > '9'){
        	 flg = 1;
        }


		%>
		<tr>
			<td class="company_h">通勤費</td>
			<td><input type="checkbox" name="" <%if(flg == 0){ %>checked<%} %>>1ヶ月 <input type="text" size="6" name="trans_exp" <%if(flg == 0){ %> value="<%=jue.getTrans_exp() %>" <%} %>>円迄支給　<input type="checkbox" name="trans_exp" <%if(flg == 1){ %>checked<%} %>>全額支給</td>
		</tr>
		<%
		int domitory = jue.getJoboffer_domitory();
		%>
		<tr>
			<td class="company_h">寮</td>
			<td><input type="radio" name="joboffer_domitory" value="0" <%if(domitory == 0){ %> checked="checked" <%} %>>無　<input type="radio" name="joboffer_domitory" value="1" <%if(domitory == 1){ %> checked="checked" <%} %>>男　<input type="radio" name="joboffer_domitory" value="2" <%if(domitory == 2){ %> checked="checked" <%} %>>女　<input type="radio" name=joboffer_domitory" value="3" <%if(domitory == 3){ %> checked="checked" <%} %>>両方</td>
		</tr>
		<%
		int home = jue.getJoboffer_home();
		%>
		<tr>
			<td class="company_h">自宅外</td>
			<td><input type="radio" name="joboffer_home" value="1" <%if(home == 1){ %> checked="checked" <%} %>>可　<input type="radio" name="joboffer_home" value="0" <%if(home == 0){ %> checked="checked" <%} %>>不可</td>
		</tr>
	</table>
<br>
	<table>
		<tr>
			<th colspan="2">応募・選考</th>
		</tr>

		<%
		String job_start = jue.getJoboffer_start();

		String job_start_month = String.valueOf(job_start.charAt(5)) + String.valueOf(job_start.charAt(6));
		//intで判別するか文字で判別するかは不明
		String job_start_day = String.valueOf(job_start.charAt(8)) + String.valueOf(job_start.charAt(9));


		String job_end = jue.getJoboffer_end();

		String job_end_month = String.valueOf(job_end.charAt(5)) + String.valueOf(job_end.charAt(6));
		//intで判別するか文字で判別するかは不明
		String job_end_day = String.valueOf(job_end.charAt(8)) + String.valueOf(job_end.charAt(9));
		%>

		<tr>
			<td class="company_h">受付期間</td>
			<td>
				<select name="joboffer_start_month">
				<option value="1" >1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4" selected>4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				</select>月　

				<select name="joboffer_start_day">
				<option value="1" selected>1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
				</select>日 ～

				<select name="joboffer_end_month">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3" selected>3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				</select>月　

				<select name="joboffer_end_day">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31" selected>31</option>
				</select>日


			</td>
		</tr>

		<%
		int joboffer_applying = jue.getJoboffer_applying();

		%>

		<tr>
			<td class="company_h">併願</td>
			<td><input type="radio" name="joboffer_applying" value="1" <%if(joboffer_applying == 1){ %>checked<%} %>>可　<input type="radio" name="joboffer_applying" value="0" <%if(joboffer_applying == 0){ %>checked<%} %>>不可</td>
		</tr>

		<%
		int joboffer_abroad = jue.getJoboffer_abroad();
		%>

		<tr>
			<td class="company_h">留学生</td>
			<td><input type="radio" name="joboffer_abroad" value="1" <%if(joboffer_abroad == 1){ %>checked<%} %>>可　<input type="radio" name="joboffer_abroad" value="0" <%if(joboffer_abroad == 0){ %>checked<%} %>>不可</td>
		</tr>

		<%

		%>

		<tr>
			<td class="company_h">受付方法</td>
			<td><input type="checkbox" name="receptionist_method" value="1">学校経由　<input type="checkbox" name="receptionist_method" value="2">就職ナビ <input type="text" size="10" name="receptionistm_ethod_navigation">　<input type="checkbox" name="receptionist_method" value="3">その他 <input type="text" size="10" name="receptionistm_ethod_navigation"></td>
		</tr>
		<tr>
			<td class="company_h">会社訪問</td>
			<td><input type="radio" name="joboffer_visit" value="1">可　<input type="radio" name="joboffer_visit" value="0">不可</td>
		</tr>
		<tr>
			<td class="company_h">会社説明会</td>
			<td>
				<select name="com_explan_month">
					<option value=""></option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>月　

				<select name="com_explan_day">
				<option value=""></option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
				</select>日　

				<input type="checkbox" name="com_explan_day_oh" value="0">他日程有<br>
				場所　<input type="text" size="40" name="com_explan_place">

			</td>
		</tr>
		<tr>
			<td class="company_h">学内説明会</td>
			<td>

				<select name="joboffer_des_month">
				<option value=""></option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				</select>月　

				<select name="joboffer_des_day">
				<option value=""></option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
				</select>日<br>
				場所　<input type="text" size="40" name="joboffer_des_loc">
			</td>
		</tr>
		<tr>
			<td class="company_h">選考日時</td>
			<td>

				<select name="select_month">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				</select>月　

				<select name="select_day">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
				</select>日　


				場所　<input type="text" size="40" name="select_place">
			</td>
		</tr>
		<tr>
			<td class="company_h">提出書類</td>
			<td>
				<input type="checkbox" name="document_submit" value="履歴書">履歴書　<input type="checkbox" name="document_submit" value="成績証明書">成績証明書　<input type="checkbox" name="document_submit" value="健康診断書">健康診断書<br>
				<input type="checkbox" name="document_submit" value="卒業見込み証明書">卒業見込み証明書　<input type="checkbox" name="document_submit" value="指定エントリーシート">指定エントリーシート<br>
				<input type="checkbox" name="document_submit" value="その他">その他 <input type="text" size="30" name="document_submit_memo">
			</td>
		</tr>
		<tr>
			<td class="company_h">選考方法</td>
			<td>
				<input type="checkbox" name="selection_process" value="書類選考">書類選考　<input type="checkbox" name="selection_process" value="筆記（一般教養）">筆記（一般教養）　<input type="checkbox" name="selection_process" value="筆記（語学）">筆記（語学）<br>
				<input type="checkbox" name="selection_process" value="筆記（作文)">筆記（作文）　<input type="checkbox" name="selection_process" value="集団面接">集団面接　<input type="checkbox" name="selection_process" value="個人面接">個人面接<br>
				<input type="checkbox" name="selection_process" value="その他">その他 <input type="text" size="30" name="selection_process_memo">
			</td>
		</tr>
		<tr>
			<td class="company_h">当日携行品</td>
			<td>
				<input type="checkbox" name="baggage" value="筆記用具">筆記用具　<input type="checkbox" name="baggage" value="印鑑">印鑑　<input type="checkbox" name="baggage" value="その他">その他 <input type="text" name="baggage_etc">
			</td>
		</tr>
		<tr>
			<td class="company_h">採否決定</td>
			<td>

				<select name="joboffer_decide_month">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				</select>月　

				<select name="joboffer_decide_day">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
				</select>日　

				（選考後<input type="text" size="3" name="joboffer_decide_during">日以内）<br>
			</td>
		</tr>
		<tr>
			<td class="company_h">出社予定日</td>
			<td>
				<select name="start_work_year">
				<option value="2016">2016</option>
				<option value="2017">2017</option>
				<option value="2018">2018</option>
				<option value="2019">2019</option>
				<option value="2020">2020</option>
				<option value="2021">2021</option>
				<option value="2022">2022</option>
				</select>年　

				<select name="start_work_month">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				</select>月　

				<select name="start_work_day">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
				</select>日　（予定）
			</td>
		</tr>
		<tr>
			<td class="button" colspan="2">
				<a href="admin_company_detail.html"><button type="submit">企業詳細へ戻る</button></a>
				<a href="admin_job_update_confirm.html"><button type="submit">更新確認へ進む</button></a>
			</td>
		</tr>
	</table>

</div>

<footer>&copy; 2016 WhiteCo.</footer>

</body>
</html>