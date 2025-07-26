import 'package:dartz/dartz.dart';
import 'package:sky_scan/core/network/error_handeler.dart';
import 'package:sky_scan/home/data/mapper/weather_mapper.dart';

import '../../../../core/network/network_info.dart';
import '../../../../core/errors/failures.dart';
import '../../presentation/models/weather.dart';
import '../datasources/remot_data_source.dart';

class WeatherRepo {
  final RemotDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  WeatherRepo({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, Weather>> getCurrentWeather(String city) async {
    if (await networkInfo.isConnected) {
      try {
        final weatherResponse = await remoteDataSource.getCurrentWeather(city);
        return Right(weatherResponse.toPresentation());
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
