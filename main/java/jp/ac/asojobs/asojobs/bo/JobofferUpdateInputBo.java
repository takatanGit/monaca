package jp.ac.asojobs.asojobs.bo;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServlet;

import jp.ac.asojobs.asojobs.entity.CompanyEntity;
import jp.ac.asojobs.asojobs.entity.JobofferUpdateEntity;
import jp.ac.asojobs.asojobs.exception.SystemErrorExcepton;
import jp.ac.asojobs.asojobs.model.Dbcontrol;

public class JobofferUpdateInputBo extends HttpServlet {
	private static final String JOBOFFER_SELECT_SQL =
				"SELECT * FROM joboffer j, working_time w, salary s, joboffer_duration d WHERE j.joboffer_no = ?";

	private static final String JOBOFFER_SELECT_SQL2 =
				"SELECT * FROM job j, joboffer_persons p WHERE p.joboffer_no = ?";

	private static final String JOBOFFER_SELECT_SQL3 =
				"SELECT * FROM working_time WHERE joboffer_no = ?";

	public JobofferUpdateEntity jobofferSelect(String id) throws SQLException, SystemErrorExcepton{
		ResultSet rs = null;

		Dbcontrol db = new Dbcontrol();
		JobofferUpdateEntity jue = new JobofferUpdateEntity();

		int i_id = Integer.parseInt(id);

    	try {

    		db.connect();


			// ステートメント生成


			db.prepareStatement(JOBOFFER_SELECT_SQL);


        	db.setInt(1, i_id);

        	// SQLを実行
        	rs = db.executeQuery();


        	//値を取り出す
        	while(rs.next()){
        		jue.setCompany_no(rs.getInt("company_no"));
        		jue.setJoboffer_year(rs.getInt("j.joboffer_year"));
        		jue.setHoriday_etcetera(rs.getString("w.horiday_etcetera"));
        		jue.setOne_salary(rs.getInt("s.one_salary"));
        		jue.setTwo_salary(rs.getInt("s.two_salary"));
        		jue.setThree_salary(rs.getInt("s.three_salary"));
        		jue.setFour_salary(rs.getInt("s.four_salary"));
        		jue.setBonus_freq(rs.getInt("s.bonus_freq"));
        		jue.setBonus_month(rs.getInt("s.bonus_month"));
        		jue.setPay_raise(rs.getInt("s.pay_raise"));
        		jue.setPay_raise_index(rs.getInt("s.pay_raise_index"));
        		jue.setMinimum(rs.getInt("s.minmum"));
        		jue.setMaximum(rs.getInt("s.maximum"));
        		jue.setJoboffer_prefectures(rs.getString("j.joboffer_prefectures"));
        		jue.setTrans_exp(rs.getString("d.trans_exp"));
        		jue.setJoboffer_domitory(rs.getInt("j.joboffer_domitory"));
        		jue.setJoboffer_home(rs.getInt("j.joboffer_home"));
        		jue.setJoboffer_start(rs.getString("d.joboffer_start"));
        		jue.setJoboffer_end(rs.getString("d.joboffer_end"));
        		jue.setJoboffer_applying(rs.getInt("j.joboffer_applying"));
        		jue.setJoboffer_abroad(rs.getInt("j.joboffer_abroad"));
        		jue.setReceptionist_method(rs.getInt("d.receptionist_method"));
        		jue.setReceptionistm_ethod_navigation(rs.getString("d.receptionistm_ethod_navigation"));
        		jue.setJoboffer_visit(rs.getInt("d.joboffer_visit"));
        		jue.setCom_explan_day(rs.getString("d.com_explan_day"));
        		jue.setCom_explan_place(rs.getString("d.com_explan_place"));
        		jue.setJoboffer_des_day(rs.getString("d.joboffer_des_day"));
        		jue.setJoboffer_des_loc(rs.getString("d.joboffer_des_loc"));
        		jue.setSelect_day(rs.getString("d.select_day"));
        		jue.setSelect_place(rs.getString("d.select_place"));
        		jue.setSubmit_document(rs.getString("d.submit_document"));
        		jue.setSubmit_document_etc(rs.getString("d.submit_document_etc"));
        		jue.setSelection_method(rs.getString("d.selection_method"));
        		jue.setSelection_method_etc(rs.getString("d.selection_method_etc"));
        		jue.setBaggage(rs.getString("d.baggage"));
        		jue.setBaggage_etc(rs.getString("d.baggage_etc"));
        		jue.setJoboffer_decide_day(rs.getString("d.joboffer_decide_day"));
        		jue.setJoboffer_decide_during(rs.getInt("d.joboffer_decide_during"));
        		jue.setStart_work_day(rs.getString("d.start_work_day"));


        	}


    	} catch (SQLException e) {
			//例外発生時はログを出力し、上位へそのままスロー
			throw new SystemErrorExcepton();

		} catch (NamingException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			throw new SystemErrorExcepton();
		} finally {


	        // 接続を閉じる
        if( rs != null ){
			rs.close();
        }
    		db.close();
		}



    	try {

    		db.connect();


			// ステートメント生成


			db.prepareStatement(JOBOFFER_SELECT_SQL2);


			db.setInt(1, i_id);

        	// SQLを実行
        	rs = db.executeQuery();


        	//値を取り出す
        	while(rs.next()){
        		jue.setJob_no(rs.getInt("j.job_no"));
        		jue.setJoboffer_unisex(rs.getInt("joboffer_unisex"));
        		jue.setJoboffer_man(rs.getInt("joboffer_man"));
        		jue.setJoboffer_woman(rs.getInt("joboffer_woman"));

        	}


    	} catch (SQLException e) {
			//例外発生時はログを出力し、上位へそのままスロー
			throw new SystemErrorExcepton();

		} catch (NamingException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			throw new SystemErrorExcepton();
		} finally {


	        // 接続を閉じる
        if( rs != null ){
			rs.close();
        }
    		db.close();
		}



    	try {

    		db.connect();


			// ステートメント生成


			db.prepareStatement(JOBOFFER_SELECT_SQL3);


			db.setInt(1, i_id);

        	// SQLを実行
        	rs = db.executeQuery();


        	//値を取り出す
        	while(rs.next()){
        		jue.setWorking_strt(rs.getString("working_strt"));
        		jue.setWorking_end(rs.getString("working_end"));


        	}


    	} catch (SQLException e) {
			//例外発生時はログを出力し、上位へそのままスロー
			throw new SystemErrorExcepton();

		} catch (NamingException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			throw new SystemErrorExcepton();
		} finally {


	        // 接続を閉じる
        if( rs != null ){
			rs.close();
        }
    		db.close();
		}

	return jue;

	}

	//ロールバックする
	private void SafeRollback(Dbcontrol db){

		try {
			db.rollback();
		} catch (SQLException e) {
			//ログの出力のみ
			System.out.println("ロールバックに失敗しました："+e);
		}

	}




}
