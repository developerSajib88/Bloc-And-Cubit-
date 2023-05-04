import 'package:block_study/products/bloc/product_bloc.dart';
import 'package:block_study/products/bloc/products_event.dart';
import 'package:block_study/products/bloc/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ProductBloc>().add(FetchDataFromServer());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductBloc,ProductState>(
        builder: (context,state){
          return (state is ProductsLoaded)?
              ListView.builder(
                itemCount: state.productModel!.comments.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text(state.productModel!.comments[index].user.username.toString()),
                      subtitle: Text(state.productModel!.comments[index].body.toString()),
                    );
                  }
              ): const SizedBox();
        },
      ),
    );
  }
}
