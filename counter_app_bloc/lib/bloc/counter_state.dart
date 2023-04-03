part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterChanged extends CounterState {
  final int counter;

  CounterChanged(this.counter);
}

class WeatherChanged extends CounterState {
  final WeatherModel model;

  WeatherChanged(this.model);
}

class WeatherError extends CounterState {
  final String message;

  WeatherError(this.message);
}

class ThemeChanged extends CounterState {
  final bool isDarkMode;

  ThemeChanged(this.isDarkMode);
}
