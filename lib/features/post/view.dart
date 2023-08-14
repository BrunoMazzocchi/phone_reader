import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_reader/config/icons/icons.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

class PostView extends StatelessWidget {
  const PostView({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.author,
    required this.time,
  });
  final String title;
  final String imageUrl;
  final String author;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: LightTheme.primaryColor,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
          side: const BorderSide(
            color: LightTheme.primaryColor,
          ),
        ),
        child: Transform.rotate(
          angle: 90 * 3.14 / 180,
          child: const Icon(
            Icons.arrow_back,
            color: LightTheme.primaryColor,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: LightTheme.primaryColor,
              size: 24,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.bookmark_border_outlined,
              color: LightTheme.primaryColor,
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.ios_share,
              color: LightTheme.primaryColor,
              size: 24,
            ),
          )
        ],
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
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
                                  image: AssetImage('assets/images/avatar.jpg'),
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
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: LightTheme.secondaryColor,
                                  ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
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
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
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
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
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
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: LightTheme.primaryColor,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "We do more with the resources available, reach any screen from a single codebase, and implement best practices for long-term growth.",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: LightTheme.primaryColor,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
