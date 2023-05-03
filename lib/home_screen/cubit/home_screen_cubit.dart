import 'package:bloc/bloc.dart';
import 'package:block_study/home_screen/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState>{
  int count = 0;
  HomeScreenCubit():super(HomeScreenInitiate());

  void incrementState(){
    count++;
    emit(HomeScreenUpdateState(count: count));
  }

   decrementState(){
    count--;
    emit(HomeScreenUpdateState(count: count));
  }

}

class MyCubit extends Cubit<MyState>{
  int counter = 0;
  bool check = true;
  MyCubit():super(MyInitiate());

  void checkingUpdate(){
    counter++;
    check = false;
    emit(UpdateState(myCount: counter, check: check));

  }


}