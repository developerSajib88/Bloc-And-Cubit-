import 'package:block_study/home/model/product_model.dart';
import 'package:equatable/equatable.dart';
abstract class HomeScreenState extends Equatable{
  const HomeScreenState();
}

class HomeScreenInitiate extends HomeScreenState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class HomeScreenLoading extends HomeScreenState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}


class HomeScreenLoaded extends HomeScreenState{

  ProductsData? productsData;
  HomeScreenLoaded({required this.productsData});
  

  @override
  // TODO: implement props
  List<Object?> get props => [productsData];

}