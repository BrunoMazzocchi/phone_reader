import 'package:flutter/material.dart';
import 'package:phone_reader/config/features/home/widgets/news_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 27,
      ),
      child: Column(
        children: [
          NewsCard(
            imageUrl: "assets/images/monarch.jpeg",
            title:
                "Monarch population soars 4,900 percent since last year in thrilling 2021 western migration",
            author: "Andy Corbley",
            category: "World",
            time: "1m",
          ),
          Divider(
            height: 40,
          ),
          NewsCard(
            imageUrl: "assets/images/stormtrooper.jpg",
            title:
                "The Horrifying Star Wars Holidays Special Has Been Given An Unofficial 4K Upgrade",
            author: "Jane Smith",
            category: "Entertainment",
            time: "5m",
          ),
          Divider(
            height: 40,
          ),
          NewsCard(
            imageUrl: "assets/images/sat.png",
            title:
                "NASA’s 10 billion James Webb Space Telescope Launches An Epic Mission To Study Early Universe",
            author: "Maureen Jones",
            category: "Science",
            time: "20m",
          ),
          Divider(
            height: 40,
          ),
          NewsCard(
            imageUrl: "assets/images/flutter.png",
            title:
                "We do more with the resources available, reach any screen from a single codebase, and implement best practices for long-term growth.",
            author: "VGV",
            category: "For You",
            time: "1h",
          ),
          Divider(
            height: 40,
          ),
        ],
      ),
    );
  }
}
