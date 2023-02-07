


import 'package:bloc_practice/home_page/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterINitState());

  static CounterCubit get(BuildContext context){
    return BlocProvider.of(context);
  }

  int number = 1;

  void increaseNumber(){
    number++;
    emit(CounterIncreaseNumber());
  }

  void decreaseNumber(){
    number--;
    emit(CounterDecreaseNumber());
  }
}