import 'package:flutter/material.dart';

class WeatherShimmerScreen extends StatelessWidget {
  const WeatherShimmerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF30A2C5),
      body: Padding(
        padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NewWidget(
              width: 100,
              height: 20,
            ),
            SizedBox(height: 8),
            NewWidget(
              width: 250,
              height: 60,
            ),
            SizedBox(height: 8),
            NewWidget(
              width: 120,
              height: 25,
            ),
            SizedBox(height: 24),
            CircleAvatar(
              radius: 180,
              backgroundColor: Colors.white12,
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NewWidget(
                  width: 80,
                  height: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                NewWidget(
                  width: 80,
                  height: 20,
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NewWidget(
                  width: 80,
                  height: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                NewWidget(
                  width: 80,
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(8),
      ),
      width: width,
      height: height,
    );
  }
}
