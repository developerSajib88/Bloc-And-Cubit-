import 'package:block_study/products/model/products_models.dart';
import 'package:equatable/equatable.dart';
abstract class ProductState extends Equatable{
  const ProductState();
}

class ProductInitialization extends ProductState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ProductsLoaded extends ProductState{
  ProductModel? productModel;
  ProductsLoaded({required this.productModel});
  @override
  // TODO: implement props
  List<Object?> get props => [productModel];
}