import 'package:flutter/material.dart';
import 'dart:math' as math;

class TagFilter extends StatefulWidget {
  const TagFilter({super.key, required this.onSelect});

  final void Function(String) onSelect;

  @override
  State<TagFilter> createState() => _TagFilterState();
}

class _TagFilterState extends State<TagFilter> {
  final List<String> tagList = ['All', 'Culinary', 'Sport', 'Politics', 'Social', 'Adventure', 'Gaming', 'Music', 'Movie', 'Entertainment', 'Technology'];
  String _selected = 'All';

  void handleSelect(String item) {
    setState(() {
      _selected = item;
      widget.onSelect(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container (
      padding: const EdgeInsets.symmetric(vertical: 4),
      height: 100,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          transform: GradientRotation(math.pi / 2),
          colors: [Color(0xff00f5ab), Color(0xff00e1ff)],
          stops: [0, 1],
          begin: Alignment(0.1, 0.3),
          end: Alignment(0.8, -0.9),
        )
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: tagList.asMap().entries.map((entry){
          String item = entry.value;
          int index = entry.key;

          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 16 : 8),
            child: ChoiceChip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.transparent),
              ),
              elevation: 0,
              label: Text(item, style: TextStyle(color: item == _selected ? Colors.white : Colors.black),),
              selected: item == _selected,
              checkmarkColor: item == _selected ? Colors.white : Colors.black,
              onSelected: (_) => handleSelect(item),
              backgroundColor: Colors.deepPurple[50],
              selectedColor: Colors.black,
            ),
          );
        }).toList(),
      )
    );
  }
}