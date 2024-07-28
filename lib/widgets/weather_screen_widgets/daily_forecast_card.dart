import 'package:flutter/material.dart';

// ignore: camel_case_types
class buildDailyForecastCard extends StatelessWidget {
  const buildDailyForecastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Sunday',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          elevation: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/image 3.png',
                height: 80,
                width: 100,
              ),
              const SizedBox(height: 5),
              const Text(
                '10°C',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat'),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}
