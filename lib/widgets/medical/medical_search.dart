import 'package:flutter/material.dart';

class MedicalSearch extends StatelessWidget {
  const MedicalSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20)
      ),
      child: const Row(children: [
        Icon(Icons.search, size: 56),
        SizedBox(width: 16),
        Expanded(child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'How we can help you?',
            labelStyle: TextStyle(fontSize: 24)
          ),
        ),)
      ])
    );
  }
}