import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import the provider package
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchPage extends StatelessWidget {
  final Function() updateUi;

  SearchPage({required this.updateUi});

  @override
  Widget build(BuildContext context) {
    String cityName = '';
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter City Name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  cityName = value;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (cityName.isNotEmpty) {
                  WeatherService weatherService = WeatherService();
                  WeatherModel weatherData =
                      await weatherService.getWeather(cityName: cityName);
                  Provider.of<WeatherProvider>(context, listen: false)
                      .setWeatherData(weatherData, cityName);
                  updateUi();
                  Navigator.pop(context);
                }
              },
              child: Text('Get Weather'),
            )
          ],
        ),
      ),
    );
  }
}
