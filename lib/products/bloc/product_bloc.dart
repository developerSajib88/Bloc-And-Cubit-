import 'package:block_study/products/bloc/products_event.dart';
import 'package:block_study/products/bloc/products_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart'as http;

import '../model/products_models.dart';
import '../product_controller/prodcut_constroller.dart';

class ProductBloc extends Bloc<ProductEvent,ProductState>{
  ProductModel? productModel;
  ProductBloc(): super(ProductInitialization()){

    on<FetchDataFromServer>((event, emit)async{
       productModel = await ProductController().getProducts();
       emit(ProductsLoaded(productModel: productModel));
    });
  }
}