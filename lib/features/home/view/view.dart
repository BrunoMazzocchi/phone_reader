import 'package:flutter/material.dart';
import 'package:phone_reader/features/home/view/categories_list.dart';
import 'package:phone_reader/features/home/view/news_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesList(),
            NewsList(),
          ],
        ),
      ),
    );
  }
}
