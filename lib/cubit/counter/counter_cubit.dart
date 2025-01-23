import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  // ignore: unused_element
  void incrementCounter() {
    final newValue = state.counter + 1;
    if (newValue == 10) {
      emit(PositiveCounter());
    } else {
      emit(CounterIncrement(newValue));
    }
  }

  void decrementCounter() {
    final newValue = state.counter - 1;
    if (newValue == -10) {
      emit(NegativeCounter());
    } else {
      emit(CounterDecrement(newValue));
    }
  }
}
