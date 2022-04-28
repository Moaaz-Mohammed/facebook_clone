import 'package:facebook_clone/Screens/mobile_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Screens/web_home.dart';
import 'shared/bloc/cubit.dart';
import 'shared/bloc/states.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..loadingPosts(),
      child: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ScreenTypeLayout(
              breakpoints:
                  ScreenBreakpoints(desktop: 1001, tablet: 801, watch: 200),
              mobile: MobileHome(),
              desktop: WebHome(),
            ),
          );
        },
      ),
    );
  }
}
