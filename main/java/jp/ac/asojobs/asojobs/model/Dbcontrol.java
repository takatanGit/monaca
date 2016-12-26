package jp.ac.asojobs.asojobs.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class Dbcontrol {



	private Connection con;

	private PreparedStatement ps;

	/*�f�[�^�x�[�X�ɐڑ�����N���X
	 * �R�l�N�g���郁�\�b�h
	 *
	 */

	public void connect() throws NamingException,SQLException{
    	InitialContext ctx;
		try {
			ctx = new InitialContext();
        	DataSource ds =
        		(DataSource)ctx.lookup("java:comp/env/jdbc/myds");

			// MySQL�ɐڑ�
	        con = ds.getConnection();
		} catch (NamingException e) {
			System.out.println(e);
			throw e;
		} catch (SQLException e) {

			System.out.println(e);
			throw e;
		}
	}

    //�f�[�^�x�[�X�����
	public void close() throws SQLException{
		if(ps != null){
			ps.close();
		}
		if( con != null ){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO �����������ꂽ catch �u���b�N
				e.printStackTrace();
				System.out.println("cloze No can do.");
			}
		}
	}
	//�g�����U�N�V���������s����
	public void beginTranzaction() throws SQLException{
			if( con != null ){
				con.setAutoCommit(false);
			}
	}
	//�g�����U�N�V�������m��
	public void commit() throws SQLException{
		if( con != null ){
			try {
				con.commit();
			} finally{
				con.setAutoCommit(true);
			}
		}

	}
	//���[���o�b�N���܂�
	public void rollback() throws SQLException{
		if( con != null ){
			try {
				con.rollback();
			} finally{
				con.setAutoCommit(true);
			}
		}

	}
	public void  prepareStatement(String name) throws SQLException{
		if( con == null ){
			//throw new DbconectErrorException();
			return;
		}
		ps = con.prepareStatement(name);
	}

	public  void setString(int index,String name) throws SQLException {

		ps.setString(index,name);
	}
	public void setInt(int index,Integer name) throws SQLException{
		ps.setInt(index,name);
	}
	public void setDate(int index,Date name) throws SQLException{
		ps.setDate(index, name);
	}
	public ResultSet executeQuery() throws SQLException {
		return ps.executeQuery();
	}

	public int executeUpdate() throws SQLException {

		return ps.executeUpdate();

	}
}
