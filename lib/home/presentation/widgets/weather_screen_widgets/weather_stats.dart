import 'package:flutter/material.dart';

import 'status_column.dart';

class WeatherStats extends StatelessWidget {
  const WeatherStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          childAspectRatio: 2,
        ),
        children: [
          StatusColumn(
            title: 'Max Temperature',
            value: ,
          ),
          StatusColumn(
            title: 'Min Temperature',
            value:,
          ),
          StatusColumn(
            title: 'Wind',
            value: ,
          ),
          StatusColumn(
            title: 'Pressure',
            value: ,
          ),
        ],
      ),
    );
  }
}
