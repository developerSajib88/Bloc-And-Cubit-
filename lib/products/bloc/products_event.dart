import 'package:equatable/equatable.dart';

abstract class ProductEvent extends Equatable{
}

class FetchDataFromServer extends ProductEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}