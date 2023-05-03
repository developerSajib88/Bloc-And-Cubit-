import 'package:block_study/home_screen/cubit/home_screen_cubit.dart';
import 'package:block_study/home_screen/cubit/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<HomeScreenCubit,HomeScreenState>(
              builder: (context,state){
                return Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
                  (state is HomeScreenUpdateState)? Text(state.count.toString()):const Text("0"),
                  const SizedBox(height: 20,),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    FloatingActionButton(
                        onPressed: ()=> context.read<HomeScreenCubit>().incrementState(),
                        child: const Icon(Icons.add,color: Colors.white,),
                    ),

                    FloatingActionButton(
                      onPressed: ()=> context.read<HomeScreenCubit>().decrementState(),
                      child: const Icon(Icons.minimize,color: Colors.white,),
                    )

                  ],),
                ],);
              }),

          BlocBuilder<MyCubit,MyState>(
              builder: (context,state){
                return Column(children: [
                  (state is UpdateState) ? Text(state.check.toString()): const Text("true"),

                  ElevatedButton(onPressed: ()=> context.read<MyCubit>().checkingUpdate(), child: const Text("change"))

                ],
                );
              }
          )


        ],
      )
    );
  }
}
