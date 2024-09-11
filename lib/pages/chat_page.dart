import 'package:flutter/material.dart';
import 'package:flutter_latihan3/model/message_data.dart';
import 'package:flutter_latihan3/widgets/chat/chat_input.dart';
import 'package:flutter_latihan3/widgets/chat/chat_messages.dart';

/// ** Todo **
/// - Reverse Row direction (v)
/// - Nested List
/// - Profile Page
/// - Chat add array function

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Jena', style: TextStyle(color: Colors.white),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://i.pravatar.cc/100?u=john'),
            ),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ChatMessages(chatMessages: messageData,)
        ),
        const ChatInput()
      ],),
    );
  }
}