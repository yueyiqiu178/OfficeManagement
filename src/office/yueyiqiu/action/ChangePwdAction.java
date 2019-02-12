package office.yueyiqiu.action;

import office.yueyiqiu.util.InsertDB;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ChangePwdAction extends ActionSupport{
	
	private InsertDB insertDB;
	private String oldpwd;
	private String newpwd;
	private String newpwdre;
	private String result="";
	/**
	 * @return the insertDB
	 */
	public InsertDB getInsertDB() {
		return insertDB;
	}
	/**
	 * @param insertDB the insertDB to set
	 */
	public void setInsertDB(InsertDB insertDB) {
		this.insertDB = insertDB;
	}
	/**
	 * @return the oldpwd
	 */
	public String getOldpwd() {
		return oldpwd;
	}
	/**
	 * @param oldpwd the oldpwd to set
	 */
	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}
	/**
	 * @return the newpwd
	 */
	public String getNewpwd() {
		return newpwd;
	}
	/**
	 * @param newpwd the newpwd to set
	 */
	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}
	/**
	 * @return the newpwdre
	 */
	public String getNewpwdre() {
		return newpwdre;
	}
	/**
	 * @param newpwdre the newpwdre to set
	 */
	public void setNewpwdre(String newpwdre) {
		this.newpwdre = newpwdre;
	}
	/**
	 * @return the result
	 */
	public String getResult() {
		return result;
	}
	/**
	 * @param result the result to set
	 */
	public void setResult(String result) {
		this.result = result;
	}
	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		
		if(!this.newpwd.equals(this.newpwdre)){
			this.result="�⦸�K�X��J���@�P";
			return this.SUCCESS;
		}
		
		int usernumber=(int) ActionContext.getContext().getSession().get("user");
		
		String sql="update oa_user set user_pwd='"+this.newpwd+"' where user_number='"+usernumber+"' and user_pwd='"+this.oldpwd+"'";
		int ptr=this.insertDB.update(sql);
		
		if(ptr<1){
			this.result="���ˬd�±K�X�O�_���T";
			return this.SUCCESS;
		}
		
		this.result="�K�X�ק令�\";
		
		return this.SUCCESS;
	}
	
	
	
	
}
