import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'States.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  //bool isDark = false;

  // void changeAppMode() {
  //   isDark = !isDark;
  //   emit(AppChangeModeState());
  // }

  bool isLoaded = false;

  void LoadingPosts(){
    if(isLoaded=false)
    Future.delayed(Duration(seconds: 2)).then((value){
      Center(child: CircularProgressIndicator());
    });
    else
      {
        Center(child: CircularProgressIndicator());
      }
    emit(LoadingPostsState());
  }
}
