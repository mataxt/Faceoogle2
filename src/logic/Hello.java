package logic;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

@Path("hello")
public class Hello {
	@GET
	@Path("message")
	@Produces("text/plain")
	public String getMessage(@QueryParam("str") String str) {
	return "Yo!"+str;
	}

}