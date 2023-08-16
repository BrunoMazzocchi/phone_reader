import 'package:flutter/material.dart';
import 'package:phone_reader/features/bookmark/widgets/bookmark_categories_list.dart';
import 'package:phone_reader/features/widgets/news_card.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          BookmarkCategoriesList(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 27,
            ),
            child: NewsCard(
              imageUrl: "assets/images/monarch.jpeg",
              title:
                  "Monarch population soars 4,900 percent since last year in thrilling 2021 western migration",
              author: "Andy Corbley",
              category: "World",
              time: "1m",
            ),
          ),
        ],
      ),
    );
  }
}
