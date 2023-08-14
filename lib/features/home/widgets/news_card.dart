import 'package:flutter/material.dart';
import 'package:phone_reader/config/icons/icons.dart';
import 'package:phone_reader/config/theme/light_theme.dart';
import 'package:phone_reader/features/post/view.dart';

/// A widget that displays a news card with an image, title, author, category, and time.
class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.category,
    required this.time,
  });

  /// The URL of the image to display in the news card.
  final String imageUrl;

  /// The title of the news article to display in the news card.
  final String title;

  /// The author of the news article to display in the news card.
  final String author;

  /// The category of the news article to display in the news card.
  final String category;

  /// The time that the news article was published, to display in the news card.
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostView(
                title: title,
                imageUrl: imageUrl,
                author: author,
                time: time,
              ),
            )),
        child: SizedBox(
          height: 140,
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 3,
                child: Hero(
                  tag: imageUrl,
                  child: Image(
                    height: 140,
                    width: 137,
                    fit: BoxFit.fitHeight,
                    image: AssetImage(imageUrl),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                            ),
                        maxLines: 4,
                      ),
                    ),
                    Text(
                      "By $author",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: LightTheme.secondaryColor,
                          ),
                    ),
                    SizedBox(
                      width: 187,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                category,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: LightTheme.categoryColor,
                                    ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: LightTheme.secondaryColor,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "$time ago",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: LightTheme.secondaryColor,
                                    ),
                              ),
                            ],
                          ),
                          const Icon(CustomIcons.newsMenu)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
