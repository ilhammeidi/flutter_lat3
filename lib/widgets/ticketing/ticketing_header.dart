import 'package:flutter/material.dart';

class TicketingHeader extends StatefulWidget {
  const TicketingHeader({super.key});

  @override
  State<TicketingHeader> createState() => _TicketingHeaderState();
}

class _TicketingHeaderState extends State<TicketingHeader> {
  final focusNode = FocusNode();
  bool boxFocus = false;

  @override
  void initState(){
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          boxFocus = true;
        });
      } else {
        setState(() {
          boxFocus = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Good Morning', textAlign: TextAlign.start, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),),
            Text('Book Tickets', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),)
          ]),
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(child: Image.asset('assets/ticketing/logo.png', width: 75)),
          )
      ]),
      const SizedBox(height: 16),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: boxFocus ? Colors.cyan : Colors.grey
          )
        ),
        child: TextField(
          focusNode: focusNode,
          decoration: const InputDecoration(
            border: InputBorder.none,
            labelText: 'Search',
            labelStyle: TextStyle(fontSize: 24),
            prefixIcon: Icon(Icons.search, size: 24)
          ),
        ),
      )
    ]);
  }
}