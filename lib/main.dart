import 'package:block_study/home/cubit/home_screen_cubit.dart';
import 'package:block_study/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context)=> HomeScreenCubit()),
        ],
        child: const MaterialApp(
          home: HomeScreen(),
        )
    );
  }
}
