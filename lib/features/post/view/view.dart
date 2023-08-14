import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_reader/config/theme/light_theme.dart';
import 'package:phone_reader/features/post/widgets/author_data.dart';
import 'package:phone_reader/features/post/widgets/image_and_title.dart';
import 'package:phone_reader/features/post/widgets/post_information.dart';

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
              ImageAndTitle(imageUrl: imageUrl, title: title, author: author, time: time),
              const AuthorData(),
              const PostInformation(),
            ],
          ),
        ),
      ),
    );
  }
}

