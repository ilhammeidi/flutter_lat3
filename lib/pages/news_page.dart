import 'package:flutter/material.dart';
import 'package:flutter_latihan3/model/news_data.dart';
import 'package:flutter_latihan3/widgets/news/news_list.dart';
import 'package:flutter_latihan3/widgets/news/search_header.dart';
import 'package:flutter_latihan3/widgets/news/tag_filter.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  String _keyword = '';
  String _tag = 'All';

  // final List allNewsData = newsData;
  List _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = newsData;
  }

  void _filterItem() {
    setState(() {
      _filteredItems = newsData
        .where(
          (item) => item.title.toLowerCase().contains(_keyword)
          && (_tag != 'All' ? item.category.contains(_tag) : true)
        ).toList();
    });
  }

  void _handleTag(String val) {
    setState(() {
      _tag = val;
      _filterItem();
    });
  }

  void _handleSearch(String query) {
    debugPrint(query);
    setState(() {
      _keyword = query;
      _filterItem();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: SearchHeader(
          onSelect: _handleSearch,
          onChange: _handleSearch,
        )
      ),
      body: Column(children: [
        TagFilter(onSelect: _handleTag),
        Expanded(
          child: NewsList(newsList: _filteredItems)
        )
      ])
    );
  }
}