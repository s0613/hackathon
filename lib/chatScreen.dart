import 'package:flutter/material.dart';
import 'messageInput.dart';
import 'chatMessage.dart';
import 'chatService.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [];
  final ChatService _chatService = ChatService();

  void _handleSubmitted(String text) async {
    ChatMessage message = ChatMessage(
      text: text,
      sender: "user",
    );
    setState(() {
      _messages.insert(0, message);
    });
    String response = await _chatService.sendMessage(text);
    ChatMessage botMessage = ChatMessage(
      text: response,
      sender: "bot",
    );
    setState(() {
      _messages.insert(0, botMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AI상담"),
        backgroundColor: Colors.blueGrey[700],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.all(8.0),
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Divider(height: 1.0),
          MessageInput(onSubmitted: _handleSubmitted),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
