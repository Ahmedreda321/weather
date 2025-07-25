import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/location_srevice.dart';
import '../../data/repositories/weather_repo.dart';
import 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  final LocationService locationService;
  final WeatherRepo weatherRepo;

  GetWeatherCubit(this.weatherRepo , this.locationService) : super(const GetWeatherState.initial());
  
  void getCurrentWeather() async {
    final city = await locationService.getCurrentCityName();
    fetchWeather(city);
  }
  void fetchWeather(String city) async {
    emit(const GetWeatherState.loading());
    final result = await weatherRepo.getCurrentWeather(city);
    result.fold(
      (failure) => emit(GetWeatherState.error(failure.message)),
      (weather) => emit(GetWeatherState.loaded(weather)),
    );
  }
}
