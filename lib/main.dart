import 'package:facebook_clone/Screens/MobileHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'Components/Cubit/Cubit.dart';
import 'Components/Cubit/States.dart';
import 'Screens/WebHome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
    create: (context) => AppCubit()..LoadingPosts(),
    child: BlocConsumer<AppCubit, AppStates>(
    listener: (context, state) {},
    builder: (context, state) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenTypeLayout(
          breakpoints: ScreenBreakpoints(
              desktop: 1001, tablet: 800, watch: 200),
          mobile: MobileHome(),
          desktop: WebHome(),
        ),
      );
    },
      ),
    );
  }
}