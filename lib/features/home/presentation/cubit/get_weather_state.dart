part of 'get_weather_cubit.dart';

@immutable
sealed class GetWeatherState {}

final class GetWeatherInitial extends GetWeatherState {}

final class GetWeatherLoading extends GetWeatherState {}

final class GetWeatherloded extends GetWeatherState {}

final class GetWeatherError extends GetWeatherState {
  final String error;
  GetWeatherError({required this.error});
}
