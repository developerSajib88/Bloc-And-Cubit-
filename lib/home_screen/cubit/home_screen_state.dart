import 'package:equatable/equatable.dart';

abstract class HomeScreenState extends Equatable{
  const HomeScreenState();
}

class HomeScreenInitiate extends HomeScreenState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class HomeScreenUpdateState extends HomeScreenState{
  int count;
  HomeScreenUpdateState({required this.count});
  @override
  // TODO: implement props
  List<Object?> get props => [count];
}


abstract class MyState extends Equatable{
 const MyState();
}

class MyInitiate extends MyState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class UpdateState extends MyState{

  int myCount;
  bool check;

  UpdateState({
    required this.myCount,
    required this.check
  });

  @override
  // TODO: implement props
  List<Object?> get props => [myCount,check];
}