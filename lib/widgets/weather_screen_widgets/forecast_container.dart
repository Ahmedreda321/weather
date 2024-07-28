import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_screen_widgets/daily_forecast_card.dart';

class ForecastContainer extends StatelessWidget {
  const ForecastContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 289,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text(
              'The Next 5 days',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  5,
                  (index) => const buildDailyForecastCard(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
