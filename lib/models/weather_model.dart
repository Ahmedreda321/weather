class WeatherModel {
  final String? cityName;
  final double? temperature;
  final double? maxtemp;
  final double? mintemp;
  final String? weatherStateName;
  final String? weatherStateAbbr;
  WeatherModel(
      {required this.cityName,
      required this.temperature,
      required this.maxtemp,
      required this.mintemp,
      required this.weatherStateName,
      required this.weatherStateAbbr});
}
