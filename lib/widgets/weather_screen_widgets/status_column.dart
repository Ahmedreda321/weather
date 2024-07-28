import 'package:flutter/material.dart';

// ignore: camel_case_types
class buildStatusColumn extends StatelessWidget {
  const buildStatusColumn(
      {super.key, required this.title, required this.value});

  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
        ],
      );
    }
  }
}

List<Map<String, String>> statusItems = [
  {'title': 'Max Temperature', 'value': '15°C'},
  {'title': 'Min Temperature', 'value': '12°C'},
  {'title': 'Wind status', 'value': '7 mph'},
  {'title': 'Humidity', 'value': '85%'},
  {'title': 'Visibility', 'value': '6.4 miles'},
  {'title': 'Air pressure', 'value': '998 mb'},
];
