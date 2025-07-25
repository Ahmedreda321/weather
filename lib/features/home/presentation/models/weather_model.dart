class WeatherModel {
  final String cityName;
  final String countryName;

  final String date;

  final double temperature;
  final double? maxtemp;
  final double? mintemp;

  final double? windStatus;
  final double? airPressure;
  final String? weatherStatus;

  WeatherModel({
    required this.cityName,
    required this.countryName,
    required this.date,
    required this.temperature,
    required this.maxtemp,
    required this.mintemp,
    required this.weatherStatus,
    required this.windStatus,
    required this.airPressure,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      countryName: json['location']['country'],
      date: json['forecast']['forecastday'][0]['date'],
      temperature: json['current']['temp_c'],
      maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherStatus: json['current']['condition']['text'],
      windStatus: json['current']['wind_kph'],
      airPressure: json['current']['pressure_mb'],
    );
  }
}
