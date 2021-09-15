import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'States.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isLoaded = true;


  void LoadingPosts() {
    Future.delayed(Duration(seconds: 2),(){
      if(isLoaded = false)
        {
          emit(LoadingPostsState());
        }
      emit(PostsLoadedState());
    });
  }
}
