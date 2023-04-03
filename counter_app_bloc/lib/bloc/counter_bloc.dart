import 'dart:math';

import 'package:counter_app_bloc/repository.dart';
import 'package:counter_app_bloc/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(this.repository) : super(CounterInitial()) {
    on<IncrementEvent>((event, emit) async {
      if (_isDarkMode) {
        counter += 2;
      } else {
        counter++;
      }
      normalizeCounter();

      emit(CounterChanged(counter));
    });
    on<DecrementEvent>((event, emit) async {
      if (_isDarkMode) {
        counter -= 2;
      } else {
        counter--;
      }
      normalizeCounter();

      emit(CounterChanged(counter));
    });
    on<ThemeEvent>((event, emit) {
      _isDarkMode = !_isDarkMode;
      emit(ThemeChanged(_isDarkMode));
    });
    on<UpdateWeather>((event, emit) async {
      try {
        final position = await _determinePosition();

        model =
            await repository.getWeather(position.latitude, position.longitude);
        emit(WeatherChanged(model!));
      } catch (e) {
        emit(WeatherError('Wheather is not found'));
      }
    });
  }

  bool _isDarkMode = false;
  int counter = 0;
  WeatherModel? model;
  final CounterRepository repository;
  normalizeCounter() {
    counter = max(min(10, counter), 0);
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location servise is disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permission denied, we cannot request permission');
    }

    return await Geolocator.getCurrentPosition();
  }
}
