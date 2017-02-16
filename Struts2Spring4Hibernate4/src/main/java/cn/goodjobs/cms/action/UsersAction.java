package cn.goodjobs.cms.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.goodjobs.cms.domain.Users;
import cn.goodjobs.cms.service.UsersService;
import cn.goodjobs.cms.utils.Pager;

public class UsersAction extends ActionSupport{

	private static final long serialVersionUID = -7433669033389953697L;
	
	Pager pager = new Pager();

	private Users users = new Users();	

	@Autowired
	private UsersService usersServices;
	
	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
		// add git demo code
	public String query()throws Exception{	
		HttpServletRequest request = ServletActionContext.getRequest();
		String requestPage = request.getParameter("requestPage");

		int recordCount = usersServices.getUsersCount(users);
		pager.init(recordCount, pager.getPageSize(), requestPage);
		
		List<Users> usersList = usersServices.getUsersPaginatedList(users, pager.getFirstRow(), pager.getRowCount());
		ActionContext.getContext().put("usersList", usersList);	
		request.setAttribute("pager", pager);
		request.setAttribute("users", users);
		
		return "list";
	}

	
	@SuppressWarnings("unused")
	public String save()throws Exception{
		Long id = users.getId() == null ? usersServices.createUsers(users) : usersServices.modifyUsers(users);		
		return "save";

	}
	
	public String add()throws Exception{
		return "input";
	}
	
	public String edit()throws Exception{		
		this.users = users.getId() != null ? usersServices.getUsers(users.getId()) : null;	
		return "input";
	}
	
	@SuppressWarnings("unused")
	public String delete()throws Exception{
		Long id = users.getId() != null ? usersServices.removeUsers(users.getId()) : 0;
		return "save";
	}

}
