import 'package:flutter/material.dart';

class StatusColumn extends StatelessWidget {
  const StatusColumn(
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
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 27.0,
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
