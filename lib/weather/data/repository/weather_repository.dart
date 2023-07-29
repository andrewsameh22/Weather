import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domain/entities/weather.dart';

import '../../domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseremoteDataSource;

  WeatherRepository(this.baseremoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await baseremoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
