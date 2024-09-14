import 'package:flutter/material.dart';
import 'package:flutter_latihan3/pages/news_detail.dart';
import 'package:flutter_latihan3/pages/news_page.dart';

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
      home: const NewsDetail()
    );
  }
}
