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

        .message-container p {
            margin: 0;
        }

        .message-container {
            padding: 5px;
            margin-bottom: 5px;
            border-radius: 5px;
            max-width: 70%;
            word-wrap: break-word;
            font-size: 30px;
        }

        .server-message {
            background-color: #b8ff68;
            color: black;
            align-self: flex-start;
        }

        .client-message {
            background-color: #9266cc;
            color: white;
            align-self: flex-end;
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
    <h1>Soporte Técnico</h1>
    <div id="chat-box"></div>
    <div id="input-container">
        <input type="text" id="message" placeholder="Escribe un mensaje..." />
        <button id="send-button" onclick="sendMessage()">Enviar</button>
    </div>

    <script>
        var socket = new WebSocket("ws://limack.gerdoc.com/GrapeWave/server");

        socket.onmessage = function (event) {
            var chatBox = document.getElementById("chat-box");
            var message = event.data;

            var container = document.createElement("div");
            container.classList.add("message-container");

            var messageInfo = getMessageInfo(message);

            container.classList.add(messageInfo.origin === "Servidor" ? "server-message" : "client-message");
            container.innerHTML = "<p>" + messageInfo.content + "</p>";

            if (!isMessageDuplicate(container)) {
                chatBox.appendChild(container);
            }

            chatBox.scrollTop = chatBox.scrollHeight;
        };

        function sendMessage() {
            var message = document.getElementById("message").value;
            socket.send("Cliente:" + message);

            document.getElementById("message").value = "";
        }

        function getMessageInfo(message) {
            var parts = message.split(":");
            return {
                origin: parts[0].trim(),
                content: parts.slice(1).join(":").trim()
            };
        }

        function isMessageDuplicate(newMessageContainer) {
            var chatMessages = document.querySelectorAll(".message-container");
            for (var i = 0; i < chatMessages.length; i++) {
                if (chatMessages[i].innerHTML === newMessageContainer.innerHTML) {
                    return true;
                }
            }
            return false;
        }
    </script>
</body>
</html>
