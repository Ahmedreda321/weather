import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/widgets/weather_screen_widgets/status_column.dart';

// ignore: camel_case_types
class WeatherStats extends StatelessWidget {
  const WeatherStats({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          childAspectRatio: 2,
        ),
        children: [
          buildStatusColumn(
            title: 'Max Temperature',
            value: weatherModel!.maxtemp.toString(),
          ),
          buildStatusColumn(
            title: 'Min Temperature',
            value: weatherModel.mintemp.toString(),
          ),
          buildStatusColumn(
            title: 'Wind',
            value: weatherModel.windStatus.toString(),
          ),
          buildStatusColumn(
            title: 'Pressure',
            value: weatherModel.airPressure.toString(),
          ),
        ],
      ),
    );
  }
}
