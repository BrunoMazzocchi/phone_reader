
import 'package:flutter/material.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Container(
              height: 53,
              width: 53,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                image: const DecorationImage(
                  image: AssetImage('assets/images/avatar.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Bruno Mazzocchi',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                            color: LightTheme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '10m ago',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(
                            color: LightTheme.secondaryColor,
                          ),
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet.',
                  style:
                      Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: LightTheme.primaryColor,
                          ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reply',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(
                            color: LightTheme.primaryColor,
                          ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite_outline,
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '43',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                color: LightTheme.primaryColor,
                              ),
                        ),
                      ],
                    )
                  ],
                ),
                const Divider(
                  color: LightTheme.secondaryColor,
                  thickness: 0.1,
                ),
               ],
            ),
          )
        ],
      ),
    );
  }
}

