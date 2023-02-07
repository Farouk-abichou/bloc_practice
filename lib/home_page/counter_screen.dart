

import 'package:bloc_practice/home_page/counter_cubit.dart';
import 'package:bloc_practice/home_page/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
   CounterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state){

          CounterCubit cubit = CounterCubit.get(context);

          return Scaffold(
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: (){
                        cubit.increaseNumber();
                      },
                      icon: const Icon(Icons.add)
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                   Text(
                    '${cubit.number}',
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: (){
                        cubit.decreaseNumber();
                      },
                      icon: const Icon(Icons.minimize)
                  ),


                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
