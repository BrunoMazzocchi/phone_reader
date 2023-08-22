part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class HomeInitialEvent extends HomeEvent {}

final class HomeLoadedEvent extends HomeEvent {}


final class HomeCategorySelectedEvent extends HomeEvent {
  HomeCategorySelectedEvent({
    required this.categoryId,
    required this.categories, 
  });
  final List<CategoryModel> categories; 
  final int categoryId;
}