
import 'package:flutter/material.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

  /// A widget that represents a news category.
  class BookmarkCategories extends StatelessWidget {
    /// Creates a [BookmarkCategories] widget.
    ///
    /// [category] is the name of the category.
    ///
    /// [isSelected] is a boolean that indicates whether the category is selected or not.
    const BookmarkCategories({
      required this.category,
      required this.isSelected,
      super.key,
    });

    /// The name of the category.
    final String category;

    /// A boolean that indicates whether the category is selected or not.
    final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: isSelected
              ? LightTheme.primaryColor
              : LightTheme.secondaryColor.withOpacity(0.2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 15,
          ),
          child: Text(
            category,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: isSelected ? Colors.white : LightTheme.secondaryColor,
                ),
          ),
        ),
      ),
    );
  }
}

