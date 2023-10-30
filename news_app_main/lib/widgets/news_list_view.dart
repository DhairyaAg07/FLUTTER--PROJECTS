import 'package:flutter/material.dart';
import 'package:news_app_main/models/article_model.dart'; // Updated import path for ArticleModel
// import 'package:news_app_main/services/news_service.dart'; // Updated import path for NewsService

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
        childCount: articles.length,
      ),
    );
  }
}
