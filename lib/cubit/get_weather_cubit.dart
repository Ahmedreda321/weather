// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/Services/data_sev.dart';
import 'package:weather_app/models/weather_model.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());
  WeatherModel? weatherModel;
  void fetchWeather({required String city}) async {
    emit(
      GetWeatherLoading(),
    );
    try {
      weatherModel = await DataServ(
        dio: Dio(),
      ).getData(city: city);
      emit(
        GetWeatherloded(),
      );
    } on Exception catch (e) {
      emit(
        GetWeatherError(
          error: e.toString(),
        ),
      );
    }
  }
}
