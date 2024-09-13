import 'package:flutter/material.dart';

class FancyBottomNav extends StatefulWidget {
  const FancyBottomNav({super.key, required this.onSwitchPage, this.pageIndex = 0});

  final void Function(int) onSwitchPage;
  final int pageIndex;

  @override
  State<FancyBottomNav> createState() => _FancyBottomNavState();
}

class _FancyBottomNavState extends State<FancyBottomNav> {
  static int _localPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _localPageIndex = widget.pageIndex;
  }

  void setLocalPageIndex(int idx) {
    setState(() {
      _localPageIndex = idx;
    });
  }

  Widget _menuIcon(int idx, IconData iconType, String txtLabel, context) {
    bool cur = idx == _localPageIndex;

    return GestureDetector(
      onTap: () => {
        widget.onSwitchPage(idx),
        setLocalPageIndex(idx)
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastLinearToSlowEaseIn,
        height: 40,
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: cur ? 16 : 4),
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: cur ? Colors.amber[200] : null
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Icon(iconType),
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: cur ? 8 : 0,
            height: 1,
          ),
          if (cur)
            Text(txtLabel),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 80,
      color: Colors.transparent,
      child: Material(
        elevation: 5,
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              _menuIcon(0, Icons.home, 'Home', context),
              _menuIcon(1, Icons.newspaper, 'News', context),
              _menuIcon(2, Icons.favorite, 'Favorite', context),
              _menuIcon(3, Icons.person, 'Profile', context),
            ]),
          ),
        ),
      ),
    );
  }
}