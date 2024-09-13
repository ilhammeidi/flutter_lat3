import 'package:flutter/material.dart';
import 'dart:math' as math;

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key, required this.onSelect});

  final void Function(String) onSelect;

  static final List<String> _kOptions = [
    'scelerisque',
    'pellentesque',
    'aliquam',
    'curabitur'
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            transform: GradientRotation(math.pi / -2),
            colors: [Color(0xff00f5ab), Color(0xff00e1ff)],
            stops: [0, 1],
            begin: Alignment(0.1, 0.3),
            end: Alignment(0.8, -0.9),
          )
        ),
      ),
      title: Autocomplete<String>(
        optionsBuilder: (TextEditingValue searchVal) {
          if (searchVal.text == '') {
            return const Iterable<String>.empty();
          }
          return _kOptions.where((String option) {
            return option.contains(searchVal.text.toLowerCase());
          });
        },
        fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
          return TextFormField(
            controller: textEditingController,
            focusNode: focusNode,
            onFieldSubmitted: (String value) {
              onFieldSubmitted();
              debugPrint('You just typed a new entry  $value');
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              suffixIcon: const Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(width: 1, color: Colors.black)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(width: 2, color: Colors.white)
              )
            )
          );
        },
        onSelected: (String selection) {
          debugPrint('You just selected $selection');
          onSelect(selection);
        },
      )
    );
  }
}