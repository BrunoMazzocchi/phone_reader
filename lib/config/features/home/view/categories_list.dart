
import 'package:flutter/material.dart';
import 'package:phone_reader/config/features/home/widgets/news_category.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: SizedBox(
        height: 25,
        child: ListView(
          padding: const EdgeInsets.only(
            left: 11,
          ),
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            NewsCategory(category: 'For you', isSelected: true),
            NewsCategory(category: 'Top', isSelected: false),
            NewsCategory(category: 'World', isSelected: false),
            NewsCategory(category: 'Politics', isSelected: false),
            NewsCategory(category: 'Enterteinment', isSelected: false),
          ],
        ),
      ),
    );
  }
}
