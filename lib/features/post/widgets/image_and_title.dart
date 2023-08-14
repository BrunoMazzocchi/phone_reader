
import 'package:flutter/material.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

class ImageAndTitle extends StatelessWidget {
  const ImageAndTitle({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.time,
  });

  final String imageUrl;
  final String title;
  final String author;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: imageUrl,
          child: Image(
            height: 229,
            width: double.maxFinite,
            fit: BoxFit.cover,
            image: AssetImage(imageUrl),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      color: LightTheme.primaryColor,
                    ),
                maxLines: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 53,
                        width: 53,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/avatar.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'By $author',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(
                              color: LightTheme.secondaryColor,
                            ),
                      )
                    ],
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
            )
          ],
        ),
      ],
    );
  }
}
