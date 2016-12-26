package jp.ac.asojobs.asojobs.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.ac.asojobs.asojobs.bo.CompanyAddBo;
import jp.ac.asojobs.asojobs.chack.InputChack;
import jp.ac.asojobs.asojobs.entity.CompanyEntity;
import jp.ac.asojobs.asojobs.exception.SystemErrorExcepton;


public class CompanyAddAction extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");



		CompanyEntity ce = new CompanyEntity();

		HttpSession company_session = req.getSession(false);
		ce = (CompanyEntity)company_session.getAttribute("company");

		CompanyAddBo add = new CompanyAddBo();
		int result = 0;
		try{
			result = add.companyInsert(ce);

		}catch(SystemErrorExcepton e){

			RequestDispatcher rd = req.getRequestDispatcher("view/error.jsp");
			rd.forward(req, resp);
			return;
		}


		RequestDispatcher rd = req.getRequestDispatcher("view/admin_company_register_complete.jsp");
		rd.forward(req, resp);






	}
}
