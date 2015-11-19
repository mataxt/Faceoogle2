package beans;

import java.io.Serializable;
import java.sql.Date;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import org.apache.wink.client.Resource;
import org.apache.wink.client.RestClient;

@SessionScoped
@ManagedBean(name = "userBean")
public class UserBean implements Serializable {
	private String path = "http://localhost:8080/Faceoogle2/rest/";
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String name;
	private Date birthdate;
	private String gender;
	private String loginMessage, registerMessage;
	private boolean loggedIn;

	public java.util.Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(java.util.Date birthdate) {
		this.birthdate = new java.sql.Date(birthdate.getTime());
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLoginMessage() {
		return loginMessage;
	}

	public void setLoginMessage(String loginMessage) {
		this.loginMessage = loginMessage;
	}

	public String getRegisterMessage() {
		return registerMessage;
	}

	public void setRegisterMessage(String registerMessage) {
		this.registerMessage = registerMessage;
	}

	public String register() {
		RestClient client = new RestClient();
		System.out.println(username+ " " +password+ " " +name+ " " +birthdate+ " " +gender);
		Resource res = client.resource(path + "user/register?user=" + username + "&pass=" + password + "&name=" + name
				+ "&birth=" + birthdate + "&gender=" + gender);
		String str = res.accept("text/plain").get(String.class);
		if (str.equals("true")) {
			registerMessage = "";
			return "index.xhtml";
		} else {
			registerMessage = "Please fill in all the fields in the correct format";
			return "register.xhtml";
		}
	}

	public String login() {
		RestClient client = new RestClient();
		Resource res = client.resource(path + "user/login?user=" + username + "&pass=" + password);
		String str = res.accept("text/plain").get(String.class);
		if (str.equals("true")) {
			loginMessage = "";
			loggedIn = true;
			return "index.xhtml";
		} else {
			loginMessage = "Wrong username or password";
			loggedIn = false;
			return "login.xhtml";
		}
	}

	public String logout() {
		FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
		loggedIn = false;
		return "login.xhtml";
	}

	public String gotoMyProfile() {
		return "profile.xhtml?faces-redirect=true" + "&user=" + username;
	}

	public boolean getLoggedIn() {
		return loggedIn;
	}

	public void setLoggedIn(boolean loggedIn) {
		this.loggedIn = loggedIn;
	}
}
