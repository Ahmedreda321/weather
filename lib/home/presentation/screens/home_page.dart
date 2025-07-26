import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/weather_cubit.dart';
import '../cubit/weather_state.dart';
import '../widgets/navigation.dart';
import '../widgets/shimmer_widget.dart';
import 'search_screen.dart';
import 'weather_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF30A2C5),
      appBar: AppBar(
        elevation: 0.0,
         backgroundColor: const Color(0xFF30A2C5),
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
      body: BlocBuilder<WeatherCubit, WeatherState>(
        buildWhen: (previous, current) =>
            current is Loaded || current is Error || current is Loading,
        builder: (context, state) => state.maybeWhen(
            loading: () => const WeatherShimmerScreen(),
            loaded: (weather) => WeatherScreen(weather: weather),
            error: (message) => Center(
                  child: Text(
                    message,
                  ),
                ),
            orElse: () => const SizedBox.shrink()),
      ),
    );
  }
}
