part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class HomeInitialEvent extends HomeEvent {}

final class HomeLoadedEvent extends HomeEvent {}

final class ChangeCategoryEvent extends HomeEvent {
  ChangeCategoryEvent({
    required this.categoryId,
  });

  final int categoryId;
}