package jp.ac.asojobs.asojobs.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.ac.asojobs.asojobs.chack.InputChack;
import jp.ac.asojobs.asojobs.entity.CompanyEntity;

public class CompanyAddChackAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		//String company_no;				//企業コード
		String company_name;			//企業名
		String company_kana;			//企業名（カナ）
		String industry_no;				//業種コード
		String company_branch;			//支店名
		String company_branch_kana;		//支店名（カナ）
		String company_capital;			//資本金
		String company_sales;			//売上高
		String company_day;				//設立
		String company_year;
		String company_sum;				//総従業員数
		String company_man;				//男性従業員数
		String company_woman;			//女性従業員数
		String company_zipcode;			//郵便番号
		String company_prefectures;		//都道府県
		String company_address;			//所在地
		String company_business;		//事業内容
		String company_mail;			//メールアドレス
		String company_tel;				//電話番号
		String company_fax;				//FAX
		String company_url;				//URL
		String company_stock;			//株式
		//String branch_office;			//支店数
		//String business_office;			//営業所数
		//String representative_name;		//代表者名
		//String representative_position;	//代表者役職
		//String adoprion_post;			//採用担当部署
		//String adoprion_name;			//採用担当者氏名
		//String adoption_postion;		//採用担当者役職
		//String adoption_tel;			//採用関連連絡先(TEL)
		//String adoption_fax;			//採用関連連絡先(FAX)
		//String adoption_mail;			//採用関連連絡先(メアド)
		//String transport_line;			//交通機関（路線）
		//String transport_station;		//交通機関（駅下車）
		//String transport_min;			//交通機関（分）
		//String transport_bus;			//交通機関（バス）
		//String transport_stop;			//交通機関（停留所）
		//String transport_bus_min;		//交通機関（分）

		//company_no = req.getParameter("");
		company_name = req.getParameter("company_name");
		company_kana = req.getParameter("company_kana");
		industry_no = req.getParameter("industry_no");
		company_branch = req.getParameter("company_branch");
		company_branch_kana = req.getParameter("company_branch_kana");
		company_capital = req.getParameter("company_capital");
		company_sales = req.getParameter("company_sales");
		company_day = req.getParameter("company_day");
		company_year = req.getParameter("company_year");
		company_day = company_day + company_year;
		company_sum = req.getParameter("company_sum");
		company_man = req.getParameter("company_man");
		company_woman = req.getParameter("company_woman");
		company_zipcode = req.getParameter("company_zipcode1");
		company_zipcode = company_zipcode + req.getParameter("company_zipcode2");
		company_prefectures = req.getParameter("company_prefectures");
		company_address = req.getParameter("company_address");
		company_business = req.getParameter("company_business");
		company_mail = req.getParameter("company_mail");
		company_tel = req.getParameter("company_tel");
		company_fax = req.getParameter("company_fax");
		company_url = req.getParameter("company_url");
		company_stock = req.getParameter("company_stock");
		//branch_office = req.getParameter("");
		//business_office = req.getParameter("");
		//representative_name = req.getParameter("");
		//representative_position = req.getParameter("");
		//adoprion_post = req.getParameter("");
		//adoprion_name = req.getParameter("");
		//adoption_postion = req.getParameter("");
		//adoption_tel = req.getParameter("");
		//adoption_fax = req.getParameter("");
		//adoption_mail = req.getParameter("");
		//transport_line = req.getParameter("");
		//transport_station = req.getParameter("");
		//transport_min = req.getParameter("");
		//transport_bus = req.getParameter("");
		//transport_stop = req.getParameter("");
		//transport_bus_min = req.getParameter("");

		InputChack chack = new InputChack();
		int err = 0;
		err = chack.nullchack(company_name);
		err = chack.nullchack(company_kana);
		err = chack.nullchack(industry_no);
		err = chack.nullchack(company_zipcode);
		err = chack.nullchack(company_address);
		err = chack.nullchack(company_tel);
		err = chack.machchack(company_zipcode, 7);

		if(err != 0){
			RequestDispatcher rd = req.getRequestDispatcher("view/");
			rd.forward(req, resp);
			return;
		}



		CompanyEntity ce = new CompanyEntity();
		ce.setCompany_name(company_name);
		ce.setCompany_kana(company_kana);
		ce.setCompany_branch(company_branch);
		ce.setCompany_branch_kana(company_branch_kana);
		ce.setCompany_capital(company_capital);
		ce.setCompany_sales(company_sales);
		ce.setCompany_day(company_day);
		ce.setCompany_sum(company_sum);
		ce.setCompany_man(company_man);
		ce.setCompany_woman(company_woman);
		ce.setCompany_zipcode(company_zipcode);
		ce.setCompany_prefectures(company_prefectures);
		ce.setCompany_address(company_address);
		ce.setCompany_business(company_business);
		ce.setCompany_mail(company_mail);
		ce.setCompany_tel(company_tel);
		ce.setCompany_fax(company_fax);
		ce.setCompany_url(company_url);
		ce.setCompany_stock(company_stock);
		ce.setIndestry_no(industry_no);

		HttpSession company_session = req.getSession(true);
		company_session.setAttribute("company", ce);
		RequestDispatcher rd = req.getRequestDispatcher("view/admin_company_register_confirm.jsp");
		rd.forward(req, resp);
	}
}
