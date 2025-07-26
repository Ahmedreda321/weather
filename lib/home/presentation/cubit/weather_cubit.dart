import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/location_srevice.dart';
import '../../data/repositories/weather_repo.dart';
import 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final LocationService locationService;
  final WeatherRepo weatherRepo;
  final searchController = TextEditingController();
  WeatherCubit(this.weatherRepo , this.locationService) : super(const WeatherState.initial());
  
  
  void getCurrentWeather() async {
    final city = await locationService.getCurrentCityName();
    fetchWeather(city);
  }
  void fetchWeather(String city) async {
    emit(const WeatherState.loading());
    final result = await weatherRepo.getCurrentWeather(city);
    result.fold(
      (failure) => emit(WeatherState.error(failure.message)),
      (weather) => emit(WeatherState.loaded(weather)),
    );
  }
}
