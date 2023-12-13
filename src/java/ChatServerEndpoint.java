import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/forum")
public class ChatServerEndpoint {

    @OnOpen
    public void onOpen(Session session) {
        ChatServerManager.addSession(session);
    }

    @OnMessage
    public void onMessage(String message, Session session) {
        broadcastMessage(message);
    }

    @OnClose
    public void onClose(Session session) {
        ChatServerManager.removeSession(session);
    }

    private void broadcastMessage(String message) {
        for (Session session : ChatServerManager.getSessions()) {
            try {
                session.getBasicRemote().sendText(message);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
