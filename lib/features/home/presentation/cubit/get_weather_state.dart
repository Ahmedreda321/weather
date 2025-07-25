import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/weather.dart';

part 'get_weather_state.freezed.dart';

@freezed
class GetWeatherState<T> with _$GetWeatherState<T> {
  const factory GetWeatherState.initial() = _Initial;

  const factory GetWeatherState.loading() = Loading;

  const factory GetWeatherState.loaded(Weather data) = Loaded;

  const factory GetWeatherState.error(String message) = Error;
}
