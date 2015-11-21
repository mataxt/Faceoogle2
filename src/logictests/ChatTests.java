package logictests;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.wink.client.Resource;
import org.apache.wink.client.RestClient;

import com.google.gson.Gson;

import junit.framework.TestCase;
import vm.ChatViewModel;

public class ChatTests extends TestCase {
	@Override
	public void setUp() {
		try {
			super.setUp();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void tearDown() {
		try {
			super.tearDown();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	@SuppressWarnings("unchecked")
	public void testChatMethods() {
		String path = "http://localhost:8080/Faceoogle2/rest/";
		String chater = "Tester";
		String chatee = "Testee";
		String message = "Test";
		Map<String, String> msg = new HashMap<String, String>();
		msg.put("chater", chater);
		msg.put("chatee", chatee);
		msg.put("message", message);

		// Send chat message
		Gson gson = new Gson();
		String json = gson.toJson(msg);
		RestClient client = new RestClient();
		Resource resource = client.resource(path + "chat/sendmessage");
		Integer id = Integer
				.parseInt(resource.contentType("application/json").accept("text/plain").post(String.class, json));
		assertFalse("Send chat message failed", id.equals(null));

		// Get chat history
		resource = client.resource(path + "chat/history?chater=" + chater + "&chatee=" + chatee);
		String jsonChat = resource.accept("application/json").get(String.class);
		List<ChatViewModel> chatList = gson.fromJson(jsonChat, ArrayList.class);
		assertFalse("Chat not listed", chatList.isEmpty());
		assertEquals("Get chater failed", chater, chatList.get(0).getChater());
		assertEquals("Get chatee failed", chatee, chatList.get(0).getChatee());
		assertEquals("Get message failed", message, chatList.get(0).getMessage());
	}
}
