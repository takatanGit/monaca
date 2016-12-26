package jp.ac.asojobs.asojobs.entity;

import java.util.ArrayList;

public class JobofferUpdateEntity {
	int joboffer_year;													//募集年度
	ArrayList<Integer> job_no = new ArrayList<Integer>();				//募集職種
	ArrayList<Integer> joboffer_unisex = new ArrayList<Integer>();		//共有求人人数
	ArrayList<Integer> joboffer_man = new ArrayList<Integer>();			//男性求人人数
	ArrayList<Integer> joboffer_woman = new ArrayList<Integer>();		//女性求人人数
	ArrayList<String> working_strt = new ArrayList<String>();			//就業開始時間
	ArrayList<String> working_end = new ArrayList<String>();			//就業終了時間
	String horiday_etcetera;											//休日
	int one_salary;														//1年コース初任給
	int two_salary;														//2年コース初任給
	int three_salary;													//3年コース初任給
	int four_salary;													//4年コース初任給
	int bonus_freq;														//賞与（回/年）
	int bonus_month;													//賞与（ヶ月分/年）
	int pay_raise;														//昇給（回/年）
	int pay_raise_index;												//昇給（％）
	int minimum;														//昇給最低額
	int maximum;														//昇給最高額
	String joboffer_prefectures;										//勤務地
	String trans_exp;													//交通費支給
	int joboffer_domitory;												//寮
	int joboffer_home;													//自宅外
	String joboffer_start;												//受付開始日
	String joboffer_end;												//受付終了日
	int joboffer_applying;												//併願
	int joboffer_abroad;												//留学生
	int receptionist_method;											//受付方法
	String receptionistm_ethod_navigation;								//就活サイト
	int joboffer_visit;													//会社訪問
	String com_explan_day;												//学外説明会日程
	//有無は↓
	String com_explan_place;											//学外説明会場所
	String joboffer_des_day;											//学内説明会日程
	String joboffer_des_loc;											//学内説明会場所
	String select_day;													//選考日時
	String select_place;												//選考場所
	String submit_document;												//提出書類
	String submit_document_etc;											//その他提出書類
	String selection_method;											//選考方法
	String selection_method_etc;										//その他選考方法
	String baggage;														//当日携行品
	String baggage_etc;													//その他当日携行品
	String joboffer_decide_day;											//採否決定日
	int joboffer_decide_during;											//採否決定期間
	String start_work_day;												//出社予定日

	int com_explan_day_oh;												//学外説明会他日程有無←
	int company_no;														//企業コード

	public int getCompany_no() {
		return company_no;
	}
	public void setCompany_no(int company_no) {
		this.company_no = company_no;
	}
	public int getCom_explan_day_oh() {
		return com_explan_day_oh;
	}
	public void setCom_explan_day_oh(int com_explan_day_oh) {
		this.com_explan_day_oh = com_explan_day_oh;
	}



	public int getJoboffer_year() {
		return joboffer_year;
	}
	public void setJoboffer_year(int joboffer_year) {
		this.joboffer_year = joboffer_year;
	}
	public ArrayList<Integer> getJob_no() {
		return job_no;
	}
	public void setJob_no(int job_no) {
		this.job_no.add(job_no);
	}
	public ArrayList<Integer> getJoboffer_unisex() {
		return joboffer_unisex;
	}
	public void setJoboffer_unisex(int joboffer_unisex) {
		this.joboffer_unisex.add(joboffer_unisex);
	}
	public ArrayList<Integer> getJoboffer_man() {
		return joboffer_man;
	}
	public void setJoboffer_man(int joboffer_man) {
		this.joboffer_man.add(joboffer_man);
	}
	public ArrayList<Integer> getJoboffer_woman() {
		return joboffer_woman;
	}
	public void setJoboffer_woman(int joboffer_woman) {
		this.joboffer_woman.add(joboffer_woman);
	}
	public ArrayList<String> getWorking_strt() {
		return working_strt;
	}
	public void setWorking_strt(String working_strt) {
		this.working_strt.add(working_strt);
	}
	public ArrayList<String> getWorking_end() {
		return working_end;
	}
	public void setWorking_end(String working_end) {
		this.working_end.add(working_end);
	}
	public String getHoriday_etcetera() {
		return horiday_etcetera;
	}
	public void setHoriday_etcetera(String horiday_etcetera) {
		this.horiday_etcetera = horiday_etcetera;
	}
	public int getOne_salary() {
		return one_salary;
	}
	public void setOne_salary(int one_salary) {
		this.one_salary = one_salary;
	}
	public int getTwo_salary() {
		return two_salary;
	}
	public void setTwo_salary(int two_salary) {
		this.two_salary = two_salary;
	}
	public int getThree_salary() {
		return three_salary;
	}
	public void setThree_salary(int three_salary) {
		this.three_salary = three_salary;
	}
	public int getFour_salary() {
		return four_salary;
	}
	public void setFour_salary(int four_salary) {
		this.four_salary = four_salary;
	}
	public int getBonus_freq() {
		return bonus_freq;
	}
	public void setBonus_freq(int bonus_freq) {
		this.bonus_freq = bonus_freq;
	}
	public int getBonus_month() {
		return bonus_month;
	}
	public void setBonus_month(int bonus_month) {
		this.bonus_month = bonus_month;
	}
	public int getPay_raise() {
		return pay_raise;
	}
	public void setPay_raise(int pay_raise) {
		this.pay_raise = pay_raise;
	}
	public int getPay_raise_index() {
		return pay_raise_index;
	}
	public void setPay_raise_index(int pay_raise_index) {
		this.pay_raise_index = pay_raise_index;
	}
	public int getMinimum() {
		return minimum;
	}
	public void setMinimum(int minimum) {
		this.minimum = minimum;
	}
	public int getMaximum() {
		return maximum;
	}
	public void setMaximum(int maximum) {
		this.maximum = maximum;
	}
	public String getJoboffer_prefectures() {
		return joboffer_prefectures;
	}
	public void setJoboffer_prefectures(String joboffer_prefectures) {
		this.joboffer_prefectures = joboffer_prefectures;
	}
	public String getTrans_exp() {
		return trans_exp;
	}
	public void setTrans_exp(String trans_exp) {
		this.trans_exp = trans_exp;
	}
	public int getJoboffer_domitory() {
		return joboffer_domitory;
	}
	public void setJoboffer_domitory(int joboffer_domitory) {
		this.joboffer_domitory = joboffer_domitory;
	}
	public int getJoboffer_home() {
		return joboffer_home;
	}
	public void setJoboffer_home(int joboffer_home) {
		this.joboffer_home = joboffer_home;
	}
	public String getJoboffer_start() {
		return joboffer_start;
	}
	public void setJoboffer_start(String joboffer_start) {
		this.joboffer_start = joboffer_start;
	}
	public String getJoboffer_end() {
		return joboffer_end;
	}
	public void setJoboffer_end(String joboffer_end) {
		this.joboffer_end = joboffer_end;
	}
	public int getJoboffer_applying() {
		return joboffer_applying;
	}
	public void setJoboffer_applying(int joboffer_applying) {
		this.joboffer_applying = joboffer_applying;
	}
	public int getJoboffer_abroad() {
		return joboffer_abroad;
	}
	public void setJoboffer_abroad(int joboffer_abroad) {
		this.joboffer_abroad = joboffer_abroad;
	}
	public int getReceptionist_method() {
		return receptionist_method;
	}
	public void setReceptionist_method(int receptionist_method) {
		this.receptionist_method = receptionist_method;
	}
	public String getReceptionistm_ethod_navigation() {
		return receptionistm_ethod_navigation;
	}
	public void setReceptionistm_ethod_navigation(String receptionistm_ethod_navigation) {
		this.receptionistm_ethod_navigation = receptionistm_ethod_navigation;
	}
	public int getJoboffer_visit() {
		return joboffer_visit;
	}
	public void setJoboffer_visit(int joboffer_visit) {
		this.joboffer_visit = joboffer_visit;
	}
	public String getCom_explan_day() {
		return com_explan_day;
	}
	public void setCom_explan_day(String com_explan_day) {
		this.com_explan_day = com_explan_day;
	}
	public String getCom_explan_place() {
		return com_explan_place;
	}
	public void setCom_explan_place(String com_explan_place) {
		this.com_explan_place = com_explan_place;
	}
	public String getJoboffer_des_day() {
		return joboffer_des_day;
	}
	public void setJoboffer_des_day(String joboffer_des_day) {
		this.joboffer_des_day = joboffer_des_day;
	}
	public String getJoboffer_des_loc() {
		return joboffer_des_loc;
	}
	public void setJoboffer_des_loc(String joboffer_des_loc) {
		this.joboffer_des_loc = joboffer_des_loc;
	}
	public String getSelect_day() {
		return select_day;
	}
	public void setSelect_day(String select_day) {
		this.select_day = select_day;
	}
	public String getSelect_place() {
		return select_place;
	}
	public void setSelect_place(String select_place) {
		this.select_place = select_place;
	}
	public String getSubmit_document() {
		return submit_document;
	}
	public void setSubmit_document(String submit_document) {
		this.submit_document = submit_document;
	}
	public String getSubmit_document_etc() {
		return submit_document_etc;
	}
	public void setSubmit_document_etc(String submit_document_etc) {
		this.submit_document_etc = submit_document_etc;
	}
	public String getSelection_method() {
		return selection_method;
	}
	public void setSelection_method(String selection_method) {
		this.selection_method = selection_method;
	}
	public String getSelection_method_etc() {
		return selection_method_etc;
	}
	public void setSelection_method_etc(String selection_method_etc) {
		this.selection_method_etc = selection_method_etc;
	}
	public String getBaggage() {
		return baggage;
	}
	public void setBaggage(String baggage) {
		this.baggage = baggage;
	}
	public String getBaggage_etc() {
		return baggage_etc;
	}
	public void setBaggage_etc(String baggage_etc) {
		this.baggage_etc = baggage_etc;
	}
	public String getJoboffer_decide_day() {
		return joboffer_decide_day;
	}
	public void setJoboffer_decide_day(String joboffer_decide_day) {
		this.joboffer_decide_day = joboffer_decide_day;
	}
	public int getJoboffer_decide_during() {
		return joboffer_decide_during;
	}
	public void setJoboffer_decide_during(int joboffer_decide_during) {
		this.joboffer_decide_during = joboffer_decide_during;
	}
	public String getStart_work_day() {
		return start_work_day;
	}
	public void setStart_work_day(String start_work_day) {
		this.start_work_day = start_work_day;
	}



}
