import 'package:bloc/bloc.dart';
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

    on<ChangeCategoryEvent>(_changeCategorySelected); 
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
      ChangeCategoryEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
    } catch (e) {
      emit(HomeError());
    }
  }
}
