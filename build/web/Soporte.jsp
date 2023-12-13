<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soporte Técnico</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
        }

        #chat-box {
            height: calc(100vh - 200px);
            overflow-y: scroll;
            padding: 10px;
            display: flex;
            flex-direction: column;
        }

        .message-container {
            padding: 5px;
            margin-bottom: 5px;
            border-radius: 5px;
            word-wrap: break-word;
            font-size: 18px;
            max-width: 70%;
        }

        .server-message {
            color: black;
            align-self: flex-start;
        }

        .server-join-message {
            color: #999999;
            text-align: center; /* Añadir esta línea */
            align-self: center; /* Añadir esta línea */
        }

        .client-message {
            background-color: #9266cc;
            color: white;
            align-self: flex-end;
        }

        .other-client-message {
            background-color: #b8ff68;
            color: black;
            align-self: flex-start;
        }

        .sender-name {
            color: #555;
            font-size: 14px;
            margin-top: 5px;
            text-align: right;
        }

        #input-container {
            display: flex;
            padding: 20px;
            background-color: #f5f5f5;
        }

        #message {
            flex: 1;
            padding: 15px;
            margin-right: 15px;
            border: 2px solid #ccc;
            border-radius: 8px;
            font-size: 18px;
        }

        #send-button {
            padding: 15px;
            border: none;
            background-color: #4caf50;
            color: white;
            cursor: pointer;
            border-radius: 8px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>Foro</h1>
    <div id="chat-box"></div>
    <div id="input-container">
        <input type="text" id="message" placeholder="Escribe un mensaje..." />
        <button id="send-button" onclick="sendMessage()">Enviar</button>
    </div>

    <script>
        var userName = '<%=request.getParameter("nombre")%>';
        var socket = new WebSocket("ws://limack.gerdoc.com:9080/GrapeWave/forum");

        socket.onopen = function(event) {
            var joinMessage = "Te has unido al foro.";
            var messageData = {
                type: "user-join",
                message: joinMessage,
                sender: "server"  // Definir un remitente para los mensajes del servidor
            };
            displayMessage(messageData);
        };

        socket.onmessage = function (event) {
            var messageData = JSON.parse(event.data);
            displayMessage(messageData);
        };

        function displayMessage(messageData) {
            var chatBox = document.getElementById("chat-box");
            var container = document.createElement("div");
            container.classList.add("message-container");

            if (messageData.type === "user-join") {
                container.classList.add("server-join-message");
            } else {
                if (messageData.sender === userName) {
                    container.classList.add("client-message");
                } else {
                    container.classList.add("other-client-message");
                }
                
                var senderName = document.createElement("p");
                senderName.classList.add("sender-name");
                senderName.textContent = messageData.sender;
                container.appendChild(senderName);
            }

            var messageContent = document.createElement("p");
            messageContent.textContent = messageData.message;
            container.appendChild(messageContent);

            chatBox.appendChild(container);
            chatBox.scrollTop = chatBox.scrollHeight;
        }

        function sendMessage() {
            var message = document.getElementById("message").value;
            var messageData = {
                type: "user-message",
                message: message,
                sender: userName
            };

            socket.send(JSON.stringify(messageData));

            document.getElementById("message").value = "";
        }
    </script>
</body>
</html>
