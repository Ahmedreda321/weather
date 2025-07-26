import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:location/location.dart';

import '../../home/data/datasources/remot_data_source.dart';
import '../../home/data/repositories/weather_repo.dart';
import '../network/api_service.dart';
import '../network/dio_factory.dart';
import '../services/location_srevice.dart';

GetIt injector = GetIt.instance;

Future<void> setupInjector() async {
  Dio dio = DioFactory.getDio();
  // ApiService instance
  injector.registerLazySingleton<ApiService>(() => ApiService(dio));
// Register the InternetConnectionChecker
  injector.registerLazySingleton<InternetConnectionChecker>(
    () => InternetConnectionChecker.createInstance(),
  );

  // Register location service
  injector.registerLazySingleton<Location>(
    () => Location(),
  );
  injector.registerLazySingleton<LocationService>(
    () => LocationService(injector()),
  );

  // register home repository
  injector.registerLazySingleton<WeatherRepo>(
    () => WeatherRepo(
      remoteDataSource: injector(),
      networkInfo: injector(),
    ),
  );

  // Register remote data source
  injector.registerLazySingleton<RemotDataSource>( 
    () => RemotDataSource(injector()),
  );
}
