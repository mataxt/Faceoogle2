package beans;

import java.io.Serializable;
import java.util.ArrayList;

import javax.faces.bean.ManagedBean;

import javax.faces.bean.ViewScoped;

import org.apache.wink.client.Resource;
import org.apache.wink.client.RestClient;

import com.google.gson.Gson;


@ViewScoped
@ManagedBean(name = "searchBean")
public class SearchBean implements Serializable {
	private String path = "http://localhost:8080/Faceoogle2/rest/";
	private static final long serialVersionUID = 1L;
	private String searchName;

	@SuppressWarnings("unchecked")
	public ArrayList<String> getNames() {
		RestClient client = new RestClient();
		Resource res = client.resource(path + "user/usernames?search=" + searchName);
		String jsonNames= res.accept("application/json").get(String.class);
		Gson gson = new Gson(); 
		ArrayList<String> names = gson.fromJson(jsonNames, ArrayList.class);
		return names;
	}

	public String getSearchName() {
		return searchName;
	}

	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}
}