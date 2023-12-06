import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/additional_info.dart';
import 'package:weather_app/secrets.dart';
import 'hourly_forecast.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Future<Map<String, dynamic>> getCurrentWeather() async {
    try {
      String cityName = 'London';
      final res = await http.get(
        Uri.parse(
            'https://api.openweathermap.org/data/2.5/weather?q=$cityName&APPID=$openWeatherApiKey'),
      );

      final data = jsonDecode(res.body);

      if (data['cod'] != 200) {
        throw 'An unexpected error occured';
      }
      return data;

      // data['main']['temp'];
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: FutureBuilder(
        future: getCurrentWeather(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          final data = snapshot.data!;

          final currentTemp = data['main']['temp'];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // main card
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                "$currentTemp K",
                                style: const TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 16),
                              const Icon(Icons.cloud, size: 70),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text(
                                'Rain',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // weather forecast cards
                const Text(
                  'Weather Forecast',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 12),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      HourlyForecastItem(
                        icon: Icons.cloud,
                        text: '03:00',
                        value: '301:12',
                      ),
                      HourlyForecastItem(
                        icon: Icons.sunny,
                        text: '03:00',
                        value: '356:09',
                      ),
                      HourlyForecastItem(
                        icon: Icons.cloud,
                        text: '06:00',
                        value: '287:76',
                      ),
                      HourlyForecastItem(
                        icon: Icons.sunny,
                        text: '09:00',
                        value: '306:56',
                      ),
                      HourlyForecastItem(
                        icon: Icons.cloud,
                        text: '12:00',
                        value: '544:32',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // additional info
                const Text(
                  'Additional Information',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AddInfo(
                        icon: Icons.water_drop,
                        text: "Humidity",
                        value: "94",
                      ),
                      AddInfo(
                        icon: Icons.air_outlined,
                        text: "Wind Speed",
                        value: "7.68",
                      ),
                      AddInfo(
                        icon: Icons.beach_access,
                        text: "Pressure",
                        value: "1000",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
