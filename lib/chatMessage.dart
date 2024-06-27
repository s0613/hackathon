import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final String sender;

  ChatMessage({required this.text, required this.sender});

  @override
  Widget build(BuildContext context) {
    bool isUser = sender == "user";
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: isUser ? Colors.lightBlueAccent : Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                text,
                style: TextStyle(color: isUser ? Colors.white : Colors.black),
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
