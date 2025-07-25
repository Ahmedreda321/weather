import '../../../../core/network/api_service.dart';
import '../models/weather_reponse.dart';

class RemotDataSource {
  final ApiService apiService;

  RemotDataSource(this.apiService);

  Future<WeatherReponse> getCurrentWeather(String city) async{
    return await apiService.getCurrentWeather(city);
  }
}
