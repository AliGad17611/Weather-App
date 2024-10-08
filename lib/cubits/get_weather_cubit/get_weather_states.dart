
import 'package:weather_app/models/weather_model.dart';

class GetWeatherState {}

class GetWeatherInitialState extends GetWeatherState {}

class GetWeatherLoadingState extends GetWeatherState {}

class GetWeatherLoadedState extends GetWeatherState {

  final WeatherModel weatherModel;

  GetWeatherLoadedState({required this.weatherModel});

}
class GetWeatherMissingCityErrorState extends GetWeatherState {}
class GetWeatherInvalidCityErrorState extends GetWeatherState {}


class GetWeatherErrorState extends GetWeatherState {
  
}
