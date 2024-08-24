import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class DataServ {
  Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apiKey = "9cbb590efc914d459e624303240407";
  DataServ({required this.dio});
  Future<WeatherModel> getData({required String city}) async {
    try {
      Response response = await dio.get(
          "$baseUrl/forecast.json?key=$apiKey&q=$city&days=1&aqi=no&alerts=no");
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String message = e.response?.data['error']['message'] ??
          'Oops something went wrong, please try later';

      throw Exception(message);
    } catch (e) {
      throw Exception(e);
    }
  }
}
