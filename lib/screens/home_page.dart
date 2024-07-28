import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SearchPage();
                      },
                    ),
                  );
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
          scrolledUnderElevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'SkyScan',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: Container() //WeatherInfoBody(weatherModel: ),
        // const Noweaterscreen(),
        );
  }
}
