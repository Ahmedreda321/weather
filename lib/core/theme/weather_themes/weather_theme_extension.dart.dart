import 'package:flutter/material.dart';

import '../app_colors.dart';

extension WeatherThemeExtension on String {
  ThemeData get toWeatherTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _getColorScheme(),
    );
  }

  ColorScheme _getColorScheme() {
    switch (toLowerCase()) {
      case 'sunny':
      case 'clear':
        return ColorScheme.fromSeed(
          seedColor: AppColors.sunny,
          brightness: Brightness.light,
        );
      case 'rainy':
      case 'rain':
        return ColorScheme.fromSeed(
          seedColor: AppColors.rainy,
          brightness: Brightness.dark,
        );
      case 'cloudy':
      case 'partly cloudy':
        return ColorScheme.fromSeed(
          seedColor: AppColors.cloudy,
          brightness: Brightness.light,
        );
      default:
        return ColorScheme.fromSeed(
          seedColor: AppColors.clear,
          brightness: Brightness.light,
        );
    }
  }
}
