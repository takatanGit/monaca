package jp.ac.asojobs.asojobs.bo;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServlet;

import jp.ac.asojobs.asojobs.entity.JobofferUpdateEntity;
import jp.ac.asojobs.asojobs.exception.SystemErrorExcepton;
import jp.ac.asojobs.asojobs.model.Dbcontrol;

public class JobofferUpdateBo extends HttpServlet {
	private static final String Update_Joboffer_Sql=
			"UPDATE ";
	private static final String select_working_time = "SELECT count(*) from working_time where joboffer_no = ?";

	private static final String Update_joboffer =
			"UPDATE joboffer "
			+"SET company_no = ?,joboffer_year = ?, joboffer_prefectures = ?"
			+"joboffer_applying = ?, joboffer_visit = ?, joboffer_domitory = ?, "
			+"joboffer_car = ?, joboffer_home = ?, joboffer_abroad = ?, joboffer_ent = ? "
			+"WHERE joboffer_no = ?";

	public void update_joboffer(JobofferUpdateEntity jue3) throws SQLException, SystemErrorExcepton{


		ResultSet rs = null;
		Dbcontrol db = new Dbcontrol();
		try{
			db.connect();

			db.prepareStatement(Update_joboffer);

			db.setInt(1, jue3.getCompany_no());
			db.setInt(2, jue3.getJoboffer_year());
			db.setString(3, jue3.getJoboffer_prefectures());
			db.setInt(4, jue3.getJoboffer_applying());
			db.setInt(5, jue3.getJoboffer_visit());
			//db.setInt(6, );

		}catch (SQLException e) {

			System.out.println(e.getMessage());
			//例外発生時はログを出力し、上位へそのままスロー
			throw new SystemErrorExcepton();

		} catch (NamingException e) {

			// TODO 自動生成された catch ブロック
			e.printStackTrace();

			throw new SystemErrorExcepton();

		} finally {

	        // 接続を閉じる
        	if( rs != null )	rs.close();

    		db.close();

		}

	}

}
