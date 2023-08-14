import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_reader/config/theme/light_theme.dart';
import 'package:phone_reader/features/comments/widgets/comment_card.dart';

import '../widgets/post_properties.dart';

class CommentsView extends StatelessWidget {
  const CommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Comments",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: false,
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
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               PostProperties(),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CommentCard(), 
                    CommentCard(), 
                    CommentCard(), 
                    CommentCard(), 
                    CommentCard(), 
                    CommentCard(), 
                    CommentCard(), 
                    CommentCard(), 
                    CommentCard(), 
                    CommentCard(), 
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
