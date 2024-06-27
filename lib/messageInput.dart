import 'package:flutter/material.dart';

class MessageInput extends StatefulWidget {
  final Function(String) onSubmitted;

  MessageInput({required this.onSubmitted});

  @override
  _MessageInputState createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  final TextEditingController _controller = TextEditingController();

  void _handleSubmitted(String text) {
    _controller.clear();
    widget.onSubmitted(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _controller,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration.collapsed(
                hintText: "Send a message",
                hintStyle: TextStyle(color: Colors.grey[600]),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            color: Colors.blueGrey,
            onPressed: () => _handleSubmitted(_controller.text),
          ),
        ],
      ),
    );
  }
}
