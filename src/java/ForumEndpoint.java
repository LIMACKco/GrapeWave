import java.io.IOException;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/forum")
public class ForumEndpoint {

    @OnOpen
    public void onOpen(Session session) {
        // El código que se ejecuta cuando se abre una conexión WebSocket
        System.out.println("WebSocket connection opened");
    }

    @OnMessage
    public void onMessage(String message, Session session) {
        // El código que se ejecuta cuando se recibe un mensaje desde el cliente
        System.out.println("Received message: " + message);

        // Aquí puedes procesar el mensaje y enviar una respuesta si es necesario

        // En este ejemplo, reenviamos el mensaje a todos los clientes conectados
        try {
            for (Session s : session.getOpenSessions()) {
                s.getBasicRemote().sendText(message);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
