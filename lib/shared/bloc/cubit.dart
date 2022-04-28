import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isLoaded = true;

  void loadingPosts() {
    Future.delayed(const Duration(seconds: 2), () {
      if (isLoaded = false) {
        emit(LoadingPostsState());
      }
      emit(PostsLoadedState());
    });
  }
}
