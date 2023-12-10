import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.CloseReason;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/server")
public class ServerWebSocket {

    private static Set<Session> sessions = Collections.synchronizedSet(new HashSet<>());

    @OnOpen
    public void onOpen(Session session) throws IOException {
        sessions.add(session);
        // Puedes realizar alguna acción aquí cuando se abre la conexión con el cliente
    }

    @OnMessage
    public void onMessage(String message, Session clientSession) throws IOException {
        String response = generateResponse(message);
        sendServerMessage(response);
    }

    @OnClose
    public void onClose(Session session, CloseReason closeReason) {
        sessions.remove(session);
        // Puedes realizar alguna acción aquí cuando se cierra la conexión con el cliente
    }

    // Método para que el servidor envíe mensajes activamente a todos los clientes
    private void sendServerMessage(String message) throws IOException {
        broadcast(message);
    }

    private void broadcast(String message) throws IOException {
        for (Session session : sessions) {
            if (session.isOpen()) {
                session.getBasicRemote().sendText(message);
            }
        }
    }

    private String generateResponse(String clientMessage) {
        // Puedes realizar alguna lógica para generar la respuesta del servidor aquí
        // En este caso, simplemente devolvemos el mensaje del cliente sin modificar
        return clientMessage;
    }
}
