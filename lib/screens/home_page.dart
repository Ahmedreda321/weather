import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/screens/weather_screen.dart';
import 'package:weather_app/widgets/navigation.dart';
import 'package:weather_app/widgets/shimmer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF30A2C5),
      appBar: AppBar(
        elevation: 0.0,
        // backgroundColor: const Color(0xFF30A2C5),
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).push(
                SlideTransitionPage(
                  page: const SearchPage(),
                  transitionDuration: const Duration(milliseconds: 700),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
        scrolledUnderElevation: 0.0,
        centerTitle: true,
        title: const Text(
          'SkyScan',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Montserrat'),
        ),
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, stat) {
          if (stat is GetWeatherInitial) {
            return const NewWidget();
          } else if (stat is GetWeatherLoading) {
            return const WeatherShimmerScreen();
          } else if (stat is GetWeatherloded) {
            return WeatherScreen();
          } else {
            return const Center(
              child: Text(
                'Failed to get weather',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
            );
          }
        },
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        textAlign: TextAlign.center,
        'no weather yet, please search',
        style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat'),
      ),
    );
  }
}
