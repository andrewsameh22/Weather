import 'package:flutter/material.dart';
import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domain/usecases/get_weather_by_country.dart';

import 'weather/data/repository/weather_repository.dart';
import 'weather/domain/repository/base_weather_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(baseRemoteDataSource);
  Weather weather = (await GetWeatherByCountryName(baseWeatherRepository)
      .execute("Egypt")) as Weather;
  print(weather);
  runApp(const Weather());
}

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
