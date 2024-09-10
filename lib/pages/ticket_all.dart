import 'package:flutter/material.dart';

class TicketAll extends StatelessWidget {
  const TicketAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Ticket All", style: Theme.of(context).textTheme.displayMedium),
    );
  }
}