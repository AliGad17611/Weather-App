import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SearchView(),
                  ),
                );
              },
              icon: const Icon(Icons.search)),
        ],
        elevation: 5,
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
        if (state is GetWeatherInitialState) {
          return const NoWeatherBody();
        } else if (state is GetWeatherLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetWeatherLoadedState) {
          return WeatherInfoBody(
            weather: state.weatherModel,
          );
        } else {
          return const Center(
            child: Text("oops something went wrong please try again"),
          );
        }
      }),
    );
  }
}
