class Weather {
  final String temperature;
  final String condition;
  final String humidity;
  final String city;
  final String country;
  final String localTime;
  final String precipMm;
  final String uv;

  const Weather({
    required this.temperature,
    required this.condition,
    required this.humidity,
    required this.city,
    required this.country,
    required this.localTime,
    required this.precipMm,
    required this.uv,
  });
}
