
import 'package:flutter/material.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

class AuthorData extends StatelessWidget {
  const AuthorData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.message_outlined,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 30,
                  ),
                  child: Text(
                    "8 comments",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(
                          color: LightTheme.primaryColor,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite_border_outlined,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 30,
                  ),
                  child: Text(
                    "34 likes",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(
                          color: LightTheme.primaryColor,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.share_outlined,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 30,
                  ),
                  child: Text(
                    "Share",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(
                          color: LightTheme.primaryColor,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
