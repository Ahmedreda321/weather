import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());
  void fetchWeather({required String city}) async {
   
  }
}
