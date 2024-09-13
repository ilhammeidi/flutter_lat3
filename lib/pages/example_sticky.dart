import 'package:flutter/material.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';

class ExampleSticky extends StatefulWidget {
  const ExampleSticky({super.key});

  @override
  State<ExampleSticky> createState() => _ExampleStickyState();
}

class _ExampleStickyState extends State<ExampleSticky> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lumayan Sticky Scroll'),
      ),
      body: StickyContainer(
        displayOverFlowContent: true,
        stickyChildren: [
          StickyWidget(
            initialPosition: StickyPosition(
              top: 200,
              right: 0
            ),
            finalPosition: StickyPosition(
              top: 0,
              right: 0
            ),
            controller: _controller,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: const Center(child: Icon(Icons.pause)),
            ),
          ),
        ],
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
              controller: _controller,
              itemCount: 50,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text("Tile $index"),
                );
              })),
        ),
      ),
    );
  }
}