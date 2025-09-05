import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes/core/features/home/view/screen_home/home.dart';
import 'package:recipes/core/features/home/view/screen_home/splash_home.dart';

import 'core/features/home/recipes/cubit/recipes_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipesCubit()..getDataCubit(),
      child: MaterialApp(home: Splashhome()),
    );
  }
}
