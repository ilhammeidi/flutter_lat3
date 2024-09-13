import 'package:flutter/material.dart';
import 'package:flutter_latihan3/model/news_data.dart';
import 'package:flutter_latihan3/widgets/news/news_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.newsList});

  final List newsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.length,
      itemBuilder: ((context, index) {
        NewsObj news = newsList[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: NewsCard(category: news.category, title: news.title, subtitle: news.description),
        );
    }));
  }
}