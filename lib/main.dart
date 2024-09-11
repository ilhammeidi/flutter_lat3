import 'package:flutter/material.dart';
import 'package:flutter_latihan3/pages/chat_page.dart';
import 'package:flutter_latihan3/pages/medical.dart';
import 'package:flutter_latihan3/pages/user_profile.dart';
import 'package:flutter_latihan3/widgets/chat/chat_messages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito'
      ),
      home: const ChatPage()
    );
  }
}
