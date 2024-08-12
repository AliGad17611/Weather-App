import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitialState());
   WeatherModel? weatherModel;

  Future<void> getWeather({required String cityName}) async {
    emit(GetWeatherLoadingState());
    try {
      weatherModel =
          await WeatherService(dio: Dio()).getWeather(cityName: cityName);
      log(weatherModel!.cityName);

      emit(GetWeatherLoadedState(weatherModel: weatherModel!));
    } catch (e) {
      log(e.toString());
      emit(GetWeatherErrorState());
    }
  }
}
