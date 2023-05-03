import 'package:block_study/home_screen/cubit/home_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'home_screen/home_screen.dart';
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
        BlocProvider(create: (BuildContext context)=> MyCubit())
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

