import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/widgets/navigation.dart';
import 'package:weather_app/widgets/weather_screen_widgets/forecast_container.dart';
import 'package:weather_app/widgets/weather_screen_widgets/header.dart';
import 'package:weather_app/widgets/weather_screen_widgets/temperature_widget.dart';
import 'package:weather_app/widgets/weather_screen_widgets/weather_stats.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF30A2C5),
      appBar: AppBar(
        actions: [
          IconButton(
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF30A2C5), Color(0xFF00242F)],
          ),
        ),
        child: SingleChildScrollView(
          //  physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              buildHeaderText(text: 'Today, May 7th, 2021', fontSize: 14),
              const SizedBox(height: 10),
              buildHeaderText(
                  text: 'Barcelona', fontSize: 40, fontWeight: FontWeight.bold),
              buildHeaderText(
                  text: 'Spain', fontSize: 20, fontWeight: FontWeight.bold),
              const SizedBox(height: 30),
              TemperatureWidget(screenSize: screenSize),
              const SizedBox(height: 30),
              const WeatherStats(),
              const SizedBox(height: 30),
              const ForecastContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
