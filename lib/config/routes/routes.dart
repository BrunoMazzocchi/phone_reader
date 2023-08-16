import 'package:flutter/material.dart';
import 'package:phone_reader/features/comments/view/comments_view.dart';
import 'package:phone_reader/features/home/view/view.dart';
import 'package:phone_reader/features/post/widgets/post_information.dart';
import 'package:phone_reader/features/search/view/view.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  '/home': (_) => const HomeView(),
  '/post': (_) => const PostInformation(),
  '/comments': (_) => const CommentsView(),
  '/search': (_) => const SearchView(),
};
