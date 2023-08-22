import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:phone_reader/data/repositories/category_repository.dart';
import 'package:phone_reader/domain/entities/category/response/category_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  CategoryRepository remoteCategories;
  HomeBloc(this.remoteCategories) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});

    on<HomeLoadedEvent>(_loadHomePage);

    on<HomeCategorySelectedEvent>(_changeCategorySelected);
  }

  void _loadHomePage(HomeLoadedEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final categories = await remoteCategories.getCategories();
      emit(HomeLoaded(categories: categories));
    } catch (e) {
      emit(HomeError());
    }
  }

  void _changeCategorySelected(
      HomeCategorySelectedEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final categories = event.categories;
      final newCategories = categories.map((e) {
        if (e.id == event.categoryId) {
          return e.copyWith(isSelected: true);
        }
        return e.copyWith(isSelected: false);
      }).toList();
      emit(HomeLoaded(categories: newCategories));
    } catch (e) {
      emit(HomeError());
    }
  }
}
