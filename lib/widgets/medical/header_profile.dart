import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Hello', style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 2,),
        Text('John Doe', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
      ]),
      actions: const [
        Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage('https://i.pravatar.cc/100?u=john'),
          ),
        )
      ],
    );
  }
}