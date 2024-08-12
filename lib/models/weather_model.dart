class WeatherModel {
  String cityName;
  DateTime date;
  String icon;
  double avgTemp;
  double minTemp;
  double maxTemp;
  String weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.icon,
    required this.avgTemp,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherCondition,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      icon: json['current']['condition']['icon'],
      avgTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      weatherCondition: json['current']['condition']['text'],
    );
  }
}
