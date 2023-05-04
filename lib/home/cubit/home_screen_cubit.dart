
import 'package:block_study/home/controller/product_controller.dart';
import 'package:block_study/home/cubit/home_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/product_model.dart';

class HomeScreenCubit extends Cubit<HomeScreenState>{
  ProductsData? productsData;
  HomeScreenCubit():super(HomeScreenInitiate());

  Future setData()async{
    productsData = await ProductController.getProductData();
    emit(HomeScreenLoaded(productsData: productsData));
  }


}