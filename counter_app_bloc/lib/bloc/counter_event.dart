part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

class UpdateWeather extends CounterEvent {}

class ThemeEvent extends CounterEvent {}
