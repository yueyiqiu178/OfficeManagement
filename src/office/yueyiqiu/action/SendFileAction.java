package office.yueyiqiu.action;

import java.util.List;
import java.util.Map;

import office.yueyiqiu.model.Dept;
import office.yueyiqiu.util.SearchDB;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SendFileAction extends ActionSupport{
	
	private SearchDB searchDB;
	private String fromUser;
	private List deptList;
	
	
	
	/**
	 * @return the searchDB
	 */
	public SearchDB getSearchDB() {
		return searchDB;
	}



	/**
	 * @param searchDB the searchDB to set
	 */
	public void setSearchDB(SearchDB searchDB) {
		this.searchDB = searchDB;
	}



	/**
	 * @return the fromUser
	 */
	public String getFromUser() {
		int usernumber=(int) this.getSession().get("user");
		this.fromUser=this.searchDB.getRealNameByUsernumber(usernumber);
		return fromUser;
	}



	/**
	 * @param fromUser the fromUser to set
	 */
	public void setFromUser(String fromUser) {
		this.fromUser = fromUser;
	}



	/**
	 * @return the deptList
	 */
	public List getDeptList() {
		
		String hql="from Dept";
		List list=this.searchDB.getInstanceList(hql);
		list.add(0, new Dept(-100,"�п�ܳ���"));
		return list;
	}



	/**
	 * @param deptList the deptList to set
	 */
	public void setDeptList(List deptList) {
		this.deptList = deptList;
	}



	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		
		return this.SUCCESS;
	}
	
	public Map getSession(){
		return ActionContext.getContext().getSession();
	}
	
}
