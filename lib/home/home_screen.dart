import 'package:block_study/home/cubit/home_screen_cubit.dart';
import 'package:block_study/home/cubit/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeScreenCubit>().setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocBuilder<HomeScreenCubit,HomeScreenState>(
            builder: (context,state){
              return Container(width: double.infinity,height: double.infinity,
                child: (state is HomeScreenLoaded) ? ListView.builder(itemCount: state.productsData!.products.length,
                    itemBuilder: (BuildContext context,index){
                      return ListTile(
                        title: Text(state.productsData!.products[index].title),
                      subtitle: Text(state.productsData!.products[index].description),
                      );
                    }
                ): const Center(child: Text("No Product"),)
              );
            },
          )
      ),
    );
  }
}
