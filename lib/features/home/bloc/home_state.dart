part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  HomeLoaded({
    required this.categories,
  });

  final List<CategoryModel> categories;
}

final class HomeError extends HomeState {}