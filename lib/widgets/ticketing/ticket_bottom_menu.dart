import 'package:flutter/material.dart';

class TicketBottomMenu extends StatelessWidget {
  const TicketBottomMenu({super.key, required this.curPage, required this.selectPage});

  final int curPage;
  final void Function(int) selectPage;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 32,
      selectedItemColor: Theme.of(context).primaryColor,
      currentIndex: curPage,
      onTap: selectPage,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplane_ticket_outlined),
          activeIcon: Icon(Icons.airplane_ticket),
          label: 'tickets',
        )
      ]
    );
  }
}