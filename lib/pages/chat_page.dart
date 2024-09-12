import 'package:flutter/material.dart';
import 'package:flutter_latihan3/model/message_data.dart';
import 'package:flutter_latihan3/pages/user_profile.dart';
import 'package:flutter_latihan3/widgets/chat/chat_input.dart';
import 'package:flutter_latihan3/widgets/chat/chat_messages.dart';

/// ** Todo **
/// - Reverse Row direction (v)
/// - Nested List (v)
/// - Profile Page (v)
/// - Chat add array function (v)

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<MessageObj> initMsg = messageData;
  final _scrollController = ScrollController();

  void _sendMessage(MessageObj message){
    setState(() {
      initMsg.add(message);
    });

    /// Scroll to bottom
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent + kToolbarHeight + kBottomNavigationBarHeight + 32,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Jena', style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const UserProfile()
                ));
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage('https://i.pravatar.cc/100?u=john'),
              ),
            ),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ChatMessages(chatMessages: initMsg, scrollCtrl: _scrollController)
        ),
        ChatInput(sendMsg: _sendMessage)
      ],),
    );
  }
}