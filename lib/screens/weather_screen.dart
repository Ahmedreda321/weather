import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/widgets/weather_screen_widgets/header.dart';
import 'package:weather_app/widgets/weather_screen_widgets/temperature_widget.dart';
import 'package:weather_app/widgets/weather_screen_widgets/weather_stats.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF30A2C5),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: WeatherScreenBody(screenSize: screenSize),
      ),
    );
  }
}

class WeatherScreenBody extends StatelessWidget {
  const WeatherScreenBody({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getThemeColor(BlocProvider.of<GetWeatherCubit>(context)
                .weatherModel
                ?.weatherStatus),
            getThemeColor(BlocProvider.of<GetWeatherCubit>(context)
                .weatherModel
                ?.weatherStatus)[400]!,
            getThemeColor(BlocProvider.of<GetWeatherCubit>(context)
                .weatherModel
                ?.weatherStatus)[50]!,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeaderText(text: weatherModel!.date, fontSize: 16),
          const SizedBox(height: 10),
          buildHeaderText(
              text: weatherModel.cityName.toUpperCase(),
              fontSize: 40,
              fontWeight: FontWeight.bold),
          buildHeaderText(
              text: weatherModel.countryName,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          const SizedBox(height: 30),
          TemperatureWidget(
            screenSize: screenSize,
            maintemp: weatherModel.temperature.toString(),
          ),
          const SizedBox(height: 30),
          const WeatherStats(),
        ],
      ),
    );
  }
}
