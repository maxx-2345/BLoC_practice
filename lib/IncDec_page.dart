import 'package:bloc_example/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

class IncdecPage extends StatelessWidget {
  const IncdecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterIncremented());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(height: 5,),
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterDecremented());
              // counterCubit.decrement();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize),
          ),
          SizedBox(height: 5,),
          FloatingActionButton(
              onPressed: (){
                counterBloc.add(CounterReset());
              },
            tooltip: 'Reset',
            child: const Icon(Icons.restart_alt),
          )
        ],
      ),
    );
  }
}

