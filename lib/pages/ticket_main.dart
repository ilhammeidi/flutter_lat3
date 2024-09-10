import 'package:flutter/material.dart';
import 'package:flutter_latihan3/pages/ticket_all.dart';
import 'package:flutter_latihan3/pages/ticket_home.dart';
import 'package:flutter_latihan3/widgets/ticketing/ticket_bottom_menu.dart';

class TicketMain extends StatefulWidget {
  const TicketMain({super.key});

  @override
  State<TicketMain> createState() => _TicketMainState();
}

class _TicketMainState extends State<TicketMain> {
  int _curPage = 0;
  void _handleSelectPage(int index) {
    setState(() {
      _curPage = index;
    });
  }

  final List<Widget> _pages = const <Widget>[
    TicketHome(),
    TicketAll()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: _pages[_curPage],
      bottomNavigationBar: TicketBottomMenu(
        curPage: _curPage,
        selectPage: _handleSelectPage,
      ),
    );
  }
}