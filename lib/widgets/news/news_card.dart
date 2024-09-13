import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.category,
    required this.title,
    required this.subtitle
  });

  final String category;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8), 
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            'https://picsum.photos/300/300/?random=hotel_jkt',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(category, style: Theme.of(context).textTheme.labelMedium),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(title, style: Theme.of(context).textTheme.titleLarge),
            ),
            Text(subtitle, softWrap: true, style: Theme.of(context).textTheme.bodyMedium),
          ],),
        )
      ],)
    );
  }
}