import '../../../../core/constants/app_strings.dart';
import '../../presentation/models/weather.dart';
import '../models/weather_reponse.dart';

extension WeatherMapper on WeatherReponse {
  Weather toPresentation() => Weather(
        temperature: current?.tempC?.toString() ?? AppStrings.empty,
        condition: current?.condition?.text ?? AppStrings.empty,
        humidity: current?.humidity?.toString() ?? AppStrings.empty,
        city: location?.name ?? AppStrings.empty,
        country: location?.country ?? AppStrings.empty,
        localTime: location?.localtime ?? AppStrings.empty,
        precipMm: current?.precipMm?.toString() ?? AppStrings.empty,
        uv: current?.uv?.toString() ?? AppStrings.empty,
      );
}
