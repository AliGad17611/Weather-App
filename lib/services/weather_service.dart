import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '620d16f1b80e4598811234956240208';
  WeatherService({required this.dio});
  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      final response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops something went wrong please try again';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops something went wrong please try again');
    }
  }
}
