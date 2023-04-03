import 'package:counter_app_bloc/weather_model.dart';
import 'package:dio/dio.dart';

class CounterRepository {
  final Dio dio;

  CounterRepository(this.dio);

  Future<WeatherModel> getWeather(double lat, double lon) async {
    final String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=6524354205ea10f1b2a9a460b17d52b1&units=metric&lang=ru';
    final response = await dio.get(url);
    return WeatherModel.fromJson(response.data);
  }
}
