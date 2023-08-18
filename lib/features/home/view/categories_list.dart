import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_reader/features/home/bloc/home_bloc.dart';
import 'package:phone_reader/features/home/widgets/news_category.dart';

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
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoaded) {
              return ListView.builder(
                padding: const EdgeInsets.only(
                  left: 11,
                ),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.categories.length,
                itemBuilder: (context, index) {
                return NewsCategory(
                  isSelected: false,
                  category: state.categories[index].name,
                );
              });
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
