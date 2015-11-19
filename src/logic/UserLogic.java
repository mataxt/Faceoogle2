package logic;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.*;

import com.google.gson.Gson;

import database.UserDB;
import model.User;
import vm.UserViewModel;

@Path("/user")
public class UserLogic {
	@GET
	@Path("/login")
	@Produces("text/plain")
	public String login(@QueryParam("user") String username, @QueryParam("pass") String password) {
		User usr = new User(username, password);
		return String.valueOf(UserDB.checkUser(usr));
	}

	@GET
	@Path("/register")
	@Produces("text/plain")
	public String addUser(@QueryParam("user") String username, @QueryParam("pass") String password,
			@QueryParam("name") String name, @QueryParam("birth") Date birthdate, @QueryParam("gender") String gender) {
		User usr = new User(username, password, name, birthdate, gender);
		return String.valueOf(UserDB.addUser(usr));
	}
	
	@GET
	@Path("/usernames")
	@Produces("application/json")
	public String getUserNames(@QueryParam("search") String search) {
		ArrayList<String> names = new ArrayList<String>();
		List<User> users = UserDB.searchUserName(search);

		for (User user : users) {
			names.add(user.getUsername());
		}
		String json = null;
		if(names.size() > 0){
		 Gson gson = new Gson();
		 json = gson.toJson(names, ArrayList.class);
		}
		return json;
	}

	@GET
	@Path("/userinfo")
	@Produces("application/json")
	public String getUserInfo(@QueryParam("user")String user) {
		List<User> usrInfo = UserDB.searchUserName(user);
		String json = null;
		if (!usrInfo.isEmpty()) {
			UserViewModel vm = new UserViewModel(UserDB.getUserInfo(user));
			Gson gson = new Gson();
			json = gson.toJson(vm, UserViewModel.class);
		}
		return json;
	}
}
