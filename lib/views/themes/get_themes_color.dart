import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? weatherCondition) {
  switch (weatherCondition) {
    case null:
      return Colors.blue;
    case "Sunny":
    case "Clear":
      return Colors.orange;
    case "Partly cloudy":
    case "Cloudy":
      return Colors.grey;
    case "Overcast":
      return Colors.blueGrey;
    case "Mist":
    case "Fog":
    case "Freezing fog":
      return Colors.deepOrange;
    case "Patchy rain possible":
    case "Patchy rain nearby":
    case "Patchy light drizzle":
    case "Light drizzle":
      return Colors.lightBlue;
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
      return Colors.cyan;
    case "Light rain":
    case "Patchy light rain":
    case "Light freezing rain":
    case "Light rain shower":
    case "Moderate rain":
    case "Moderate rain at times":
    case "Heavy rain":
    case "Heavy rain at times":
    case "Torrential rain shower":
      return Colors.blue;
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
    case "Thundery outbreaks possible":
      return Colors.deepPurple;
    case "Patchy sleet possible":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
    case "Light snow":
    case "Patchy light snow":
    case "Moderate snow":
    case "Patchy moderate snow":
    case "Heavy snow":
    case "Patchy heavy snow":
    case "Blizzard":
    case "Blowing snow":
    case "Ice pellets":
    case "Light showers of ice pellets":
      return Colors.lightBlue;
    case "Hail":
    case "Heavy hail":
      return Colors.teal;
    case "Dust storm":
    case "Sandstorm":
      return Colors.brown;
    case "Tornado":
    case "Cyclone":
      return Colors.red;
    case "Smoke":
    case "Volcanic ash":
      return Colors.grey;
    case "Hot":
      return Colors.red;
    case "Cold":
      return Colors.lightBlue;

    default:
      return Colors.blue;
  }
}
