part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  final int counter;
  const CounterState(this.counter);
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(0);
}

class CounterIncrement extends CounterState {
  const CounterIncrement(super.counter);
}

class PositiveCounter extends CounterState {
  const PositiveCounter() : super(10);
}

class NegativeCounter extends CounterState {
  const NegativeCounter() : super(-10);
}

class CounterDecrement extends CounterState {
  const CounterDecrement(super.counter);
}
