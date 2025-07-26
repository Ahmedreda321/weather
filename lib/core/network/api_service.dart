import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../home/data/models/weather_reponse.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

// **************************************************************************
// Weather API
// **************************************************************************
  @GET(ApiConstants.currentWeatherEndpoint)
  Future<WeatherReponse> getCurrentWeather(@Query('q') String city);
}
