import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_screen_widgets/status_column.dart';

// ignore: camel_case_types
class WeatherStats extends StatelessWidget {
  const WeatherStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          childAspectRatio: 2,
        ),
        itemCount: statusItems.length,
        itemBuilder: (context, index) {
          final item = statusItems[index];
          return buildStatusColumn(
              title: item['title']!, value: item['value']!);
        },
      ),
    );
  }
}
