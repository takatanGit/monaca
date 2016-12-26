package jp.ac.asojobs.asojobs.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.ac.asojobs.asojobs.entity.JobofferUpdateEntity;

public class JobofferUpdateChackAction extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		JobofferUpdateEntity jue2 = new JobofferUpdateEntity();
		jue2.setJoboffer_year(Integer.parseInt(req.getParameter("joboffer_year")));

		String joboffer_year = req.getParameter("joboffer_year");

		jue2.setJob_no(Integer.parseInt(req.getParameter("job_no1")));
		jue2.setJob_no(Integer.parseInt(req.getParameter("job_no2")));
		jue2.setJob_no(Integer.parseInt(req.getParameter("job_no3")));
		jue2.setJob_no(Integer.parseInt(req.getParameter("job_no4")));
		jue2.setJob_no(Integer.parseInt(req.getParameter("job_no5")));
		jue2.setJoboffer_unisex(Integer.parseInt(req.getParameter("joboffer_unisex1")));
		jue2.setJoboffer_unisex(Integer.parseInt(req.getParameter("joboffer_unisex2")));
		jue2.setJoboffer_unisex(Integer.parseInt(req.getParameter("joboffer_unisex3")));
		jue2.setJoboffer_unisex(Integer.parseInt(req.getParameter("joboffer_unisex4")));
		jue2.setJoboffer_unisex(Integer.parseInt(req.getParameter("joboffer_unisex5")));
		jue2.setJoboffer_man(Integer.parseInt(req.getParameter("joboffer_man1")));
		jue2.setJoboffer_man(Integer.parseInt(req.getParameter("joboffer_man2")));
		jue2.setJoboffer_man(Integer.parseInt(req.getParameter("joboffer_man3")));
		jue2.setJoboffer_man(Integer.parseInt(req.getParameter("joboffer_man4")));
		jue2.setJoboffer_man(Integer.parseInt(req.getParameter("joboffer_man5")));
		jue2.setJoboffer_woman(Integer.parseInt(req.getParameter("joboffer_woman1")));
		jue2.setJoboffer_woman(Integer.parseInt(req.getParameter("joboffer_woman2")));
		jue2.setJoboffer_woman(Integer.parseInt(req.getParameter("joboffer_woman3")));
		jue2.setJoboffer_woman(Integer.parseInt(req.getParameter("joboffer_woman4")));
		jue2.setJoboffer_woman(Integer.parseInt(req.getParameter("joboffer_woman5")));
		String time;
		String time1;
		String time2;
		time1 = req.getParameter("working_strt01");
		time2 = req.getParameter("working_strt02");
		if(time1 != ""){
			time = time1 + ":" + time2;
			jue2.setWorking_strt(time);
		}
		time1 = req.getParameter("working_strt11");
		time2 = req.getParameter("working_strt12");
		if(time1 != ""){
			time = time1 + ":" + time2;
			jue2.setWorking_strt(time);
		}
		time1 = req.getParameter("working_strt21");
		time2 = req.getParameter("working_strt22");
		if(time1 != ""){
			time = time1 + ":" + time2;
			jue2.setWorking_strt(time);
		}
		time1 = req.getParameter("working_end01");
		time2 = req.getParameter("working_end02");
		if(time1 != ""){
			time = time1 + ":" + time2;
			jue2.setWorking_end(time);
		}
		time1 = req.getParameter("working_end11");
		time2 = req.getParameter("working_end12");
		if(time1 != ""){
			time = time1 + ":" + time2;
			jue2.setWorking_end(time);
		}
		time1 = req.getParameter("working_end21");
		time2 = req.getParameter("working_end22");
		if(time1 != ""){
			time = time1 + ":" + time2;
			jue2.setWorking_end(time);
		}
		String history = "";
		String holiday [] = req.getParameterValues("holiday");
		if(holiday != null){
			for(int i=0; i< holiday.length; i++){
				history = history + holiday[i] + ",";
			}
		}
		String memo = req.getParameter("memo");
		if(memo != ""){
			history = history + "\"" + memo + "\"";
		}
		jue2.setHoriday_etcetera(history);
		jue2.setOne_salary(Integer.parseInt(req.getParameter("one_salary")));
		jue2.setTwo_salary(Integer.parseInt(req.getParameter("two_salary")));
		jue2.setThree_salary(Integer.parseInt(req.getParameter("three_salary")));
		jue2.setFour_salary(Integer.parseInt(req.getParameter("four_salary")));
		jue2.setBonus_freq(Integer.parseInt(req.getParameter("bonus_freq")));
		jue2.setBonus_month(Integer.parseInt(req.getParameter("bonus_month")));
		jue2.setPay_raise(Integer.parseInt(req.getParameter("pay_raise")));
		jue2.setPay_raise_index(Integer.parseInt(req.getParameter("pay_raise_index")));
		jue2.setMinimum(Integer.parseInt(req.getParameter("minimum")));
		jue2.setMaximum(Integer.parseInt(req.getParameter("maximum")));
		jue2.setJoboffer_prefectures("joboffer_prefectures");
		jue2.setTrans_exp("trans_exp");
		jue2.setJoboffer_domitory(Integer.parseInt(req.getParameter("joboffer_domitory")));
		jue2.setJoboffer_home(Integer.parseInt(req.getParameter("joboffer_home")));
		String joboffer_start_month = req.getParameter("joboffer_start_month");
		String joboffer_start_day = req.getParameter("joboffer_start_day");

		String joboffer_start = joboffer_year + joboffer_start_month + joboffer_start_day;
		jue2.setJoboffer_start(joboffer_start);
		String joboffer_end_month = req.getParameter("joboffer_end_month");
		String joboffer_end_day = req.getParameter("joboffer_end_day");

		String joboffer_end = joboffer_year + joboffer_end_month + joboffer_end_day;

		jue2.setJoboffer_end(joboffer_end);

		jue2.setJoboffer_applying(Integer.parseInt(req.getParameter("joboffer_applying")));
		jue2.setJoboffer_abroad(Integer.parseInt(req.getParameter("joboffer_abroad")));
		jue2.setReceptionist_method(Integer.parseInt(req.getParameter("receptionist_method")));
		jue2.setJoboffer_visit(Integer.parseInt(req.getParameter("joboffer_visit")));

		String com_explan_month = req.getParameter("com_explan_month");
		String com_explan_day = req.getParameter("com_explan_day");
		String com_explan = joboffer_year + com_explan_month + com_explan_day;
		jue2.setCom_explan_day(com_explan);

		jue2.setCom_explan_day_oh(Integer.parseInt(req.getParameter("com_explan_day_oh")));
		jue2.setCom_explan_place("com_explan_place");

		String joboffer_des_month = req.getParameter("joboffer_des_month");
		String joboffer_des_day = req.getParameter("joboffer_des_day");
		String joboffer_des = joboffer_year + joboffer_des_month + joboffer_des_day;
		jue2.setJoboffer_des_day(joboffer_des);

		jue2.setJoboffer_des_loc("joboffer_des_loc");

		String select_month = req.getParameter("select_month");
		String select_day = req.getParameter("select_day");
		String select = joboffer_year + select_month + select_day;
		jue2.setSelect_day(select);

		jue2.setSelect_place("select_place");

		String document = "";
		String document_submit [] = req.getParameterValues("document_submit");
		if(document_submit != null){
			for(int i=0; i< document_submit.length; i++){
				document = document + document_submit[i] + ",";
			}
		}
		jue2.setSubmit_document(document);

		jue2.setSubmit_document_etc("document_submit_memo");

		String selection = "";
		String selection_process [] = req.getParameterValues("selection_process");
		if(selection_process != null){
			for (int i = 0; i < selection_process.length; i++) {
				selection = selection + selection_process[i] + ",";
			}
		}
		jue2.setSelection_method(selection);

		jue2.setSelection_method_etc("selection_process_memo");

		String baggage = "";
		String baggages [] = req.getParameterValues("baggage");
		if(baggages != null){
			for(int i = 0; i < baggages.length; i++){
				baggage = baggage + baggages[i] + ",";
			}
		}
		jue2.setBaggage(baggage);

		jue2.setBaggage_etc("baggage_etc");

		String joboffer_decide_month = req.getParameter("joboffer_decide_month");
		String joboffer_decide_day = req.getParameter("joboffer_decide_day");
		String joboffer_decide = joboffer_year + joboffer_decide_month + joboffer_decide_day;
		jue2.setJoboffer_decide_day(joboffer_decide);

		jue2.setJoboffer_decide_during(Integer.parseInt(req.getParameter("joboffer_decide_during")));
		String start_work_year = req.getParameter("start_work_year");
		String start_work_month = req.getParameter("start_work_month");
		String start_work_day = req.getParameter("start_work_day");
		String start_work = start_work_year + start_work_month + start_work_day;
		jue2.setStart_work_day(start_work);






	}
}
