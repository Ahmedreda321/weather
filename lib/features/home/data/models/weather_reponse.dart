class WeatherReponse {
  final Location? location;
  final Current? current;

  const WeatherReponse({
    required this.location,
    required this.current,
  });
  factory WeatherReponse.fromJson(Map<String, dynamic> json) {
    return WeatherReponse(
      location: Location.fromJson(json['location']),
      current: Current.fromJson(json['current']),
    );
  }
}

class Current {
  final double? tempC;
  final Condition? condition;
  final double? feelslikeC;
  final int? humidity;
  final double? windKph;
  final int? precipMm;
  final int? visKm;
  final double? uv;

  const Current({
    required this.tempC,
    required this.condition,
    required this.feelslikeC,
    required this.humidity,
    required this.windKph,
    required this.precipMm,
    required this.visKm,
    required this.uv,
  });

  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      tempC: json['temp_c'],
      condition: Condition.fromJson(json['condition']),
      feelslikeC: json['feelslike_c'],
      humidity: json['humidity'],
      windKph: json['wind_kph'],
      precipMm: json['precip_mm'],
      visKm: json['vis_km'],
      uv: json['uv'],
    );
  }
}

class Condition {
  final String? text;

  const Condition({
    required this.text,
  });
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
    );
  }
}

class Location {
  final String? name;
  final String? country;
  final String? localtime;

  Location({
    required this.name,
    required this.country,
    required this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      country: json['country'],
      localtime: json['localtime'],
    );
  }
}
