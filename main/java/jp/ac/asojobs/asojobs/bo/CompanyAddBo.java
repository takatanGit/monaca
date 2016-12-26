package jp.ac.asojobs.asojobs.bo;

import java.sql.SQLException;

import javax.naming.NamingException;

import jp.ac.asojobs.asojobs.entity.CompanyEntity;
import jp.ac.asojobs.asojobs.exception.SystemErrorExcepton;
import jp.ac.asojobs.asojobs.model.Dbcontrol;

public class CompanyAddBo {
	private static final String COMPANY_INSERT_BY_UP_SQL=
			"INSERT INTO company(company_name, company_kana, indstry_no, company_branch, company_branch_kana, company_capital, company_sales, company_day, company_sum, company_man, company_woman, company_zipcode, company_prefectures, company_address, company_business, company_mail, company_tel, company_fax, company_url, company_stock) VALUE(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

	public int companyInsert(CompanyEntity ce) throws SystemErrorExcepton{
		int result = 0;
		Dbcontrol db = new Dbcontrol();
		try{
			db.connect();
			db.beginTranzaction();
			db.prepareStatement(COMPANY_INSERT_BY_UP_SQL);
			db.setString(1, ce.getCompany_name());
			db.setString(2, ce.getCompany_kana());
			db.setInt(3, Integer.parseInt(ce.getIndestry_no()) + 1);
			db.setString(4, ce.getCompany_branch());
			db.setString(5, ce.getCompany_branch_kana());
			db.setInt(6, Integer.parseInt(ce.getCompany_capital()));
			db.setInt(7, Integer.parseInt(ce.getCompany_sales()));
			db.setString(8, ce.getCompany_day());
			db.setInt(9, Integer.parseInt(ce.getCompany_sum()));
			db.setInt(10, Integer.parseInt(ce.getCompany_man()));
			db.setInt(11, Integer.parseInt(ce.getCompany_woman()));
			db.setString(12, ce.getCompany_zipcode());
			db.setString(13, ce.getCompany_prefectures());
			db.setString(14, ce.getCompany_address());
			db.setString(15, ce.getCompany_business());
			db.setString(16, ce.getCompany_mail());
			db.setString(17, ce.getCompany_tel());
			db.setString(18, ce.getCompany_fax());
			db.setString(19, ce.getCompany_url());
			db.setString(20, ce.getCompany_stock());
			result = db.executeUpdate();
			db.commit();

		} catch (NamingException e) {
			// TODO �����������ꂽ catch �u���b�N
			e.printStackTrace();
			throw new SystemErrorExcepton();
		} catch(SQLException e){
			SafeRollback(db);
			throw new SystemErrorExcepton();
		}

		return result;
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
