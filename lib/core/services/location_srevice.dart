import 'package:geocoding/geocoding.dart' as geo; // أضف 'as geo'
import 'package:location/location.dart';

class LocationService {
  final Location _location;
  LocationService (this._location);

  Future<String> getCurrentCityName() async {
    try {
      final locationData = await _location.getLocation();

      final placemarks = await geo.placemarkFromCoordinates(
        locationData.latitude!,
        locationData.longitude!,
      );

      if (placemarks.isEmpty) throw Exception('No city found');

      final city =
          placemarks.first.locality ?? placemarks.first.subAdministrativeArea;
      if (city == null) throw Exception('Cannot determine city name');

      return city;
    } catch (e) {
      throw Exception('Failed to get city: $e');
    }
  }
}
