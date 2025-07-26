import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/weather.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState<T> with _$WeatherState<T> {
  const factory WeatherState.initial() = _Initial;

  const factory WeatherState.loading() = Loading;

  const factory WeatherState.loaded(Weather data) = Loaded;

  const factory WeatherState.error(String message) = Error;
}
