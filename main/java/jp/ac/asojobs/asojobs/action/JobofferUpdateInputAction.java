package jp.ac.asojobs.asojobs.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.ac.asojobs.asojobs.bo.CompanyAddBo;
import jp.ac.asojobs.asojobs.bo.JobofferUpdateInputBo;
import jp.ac.asojobs.asojobs.entity.JobofferUpdateEntity;
import jp.ac.asojobs.asojobs.exception.SystemErrorExcepton;

public class JobofferUpdateInputAction extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO 自動生成されたメソッド・スタブ


		JobofferUpdateEntity jue = new JobofferUpdateEntity();

		JobofferUpdateInputBo updateinput = new JobofferUpdateInputBo();
		String id = null;
		int result = 0;
		try{
			jue = updateinput.jobofferSelect(id);

		}catch(SystemErrorExcepton | SQLException e){
			//システムエラーがおきた時にシステムエラーpegeにジャンプ。
			RequestDispatcher rd = req.getRequestDispatcher("view/error.jsp");
			rd.forward(req, resp);
		}


		HttpSession joboffer_update_session = req.getSession(true);
		joboffer_update_session.setAttribute("joboffer_update_session", jue);
		RequestDispatcher rd = req.getRequestDispatcher("view/admin_job_update.jsp");
		rd.forward(req, resp);




	}



}
