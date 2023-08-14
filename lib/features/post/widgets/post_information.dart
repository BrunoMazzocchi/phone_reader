import 'package:flutter/material.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

class PostInformation extends StatelessWidget {
  const PostInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "We do more with the resources available, reach any screen from a single codebase, and implement best practices for long-term growth.",
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: LightTheme.primaryColor,
            ),
      ),
    );
  }
}
