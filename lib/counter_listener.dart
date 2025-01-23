import 'package:bloc_application/cubit/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterListener extends StatefulWidget {
  const CounterListener({super.key});

  @override
  State<CounterListener> createState() => _CounterListenerState();
}

class _CounterListenerState extends State<CounterListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterCubit, CounterState>(
        listener: (context, state) {
          if (state is PositiveCounter) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("The Counter Reachs 10")),
            );
          }
          if (state is NegativeCounter) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("The Counter Reachs -10")),
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("Counter Listener"),
          ),
          body: BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${state.counter}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              );
            },
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context
                      .read<CounterCubit>()
                      .incrementCounter(); // Call increment method
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  context
                      .read<CounterCubit>()
                      .decrementCounter(); // Call decrement method
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ));
  }
}
