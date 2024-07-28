import 'package:flutter/material.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({super.key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: screenSize.width * 0.7, // Responsive width
      height: screenSize.width * 0.7, // Responsive height
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xFF30A2C5),
              spreadRadius: 4,
              blurRadius: 15,
              offset: Offset(1, 6)),
        ],
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/image 4.png',
            height: screenSize.width * 0.16, // Responsive image size
            width: screenSize.width * 0.16, // Responsive image size
          ),
          const SizedBox(height: 10),
          const Text(
            '15°C',
            style: TextStyle(
              fontSize: 85,
              color: Colors.black,
              fontFamily: 'Montserrat',
            ),
          ),
        ],
      ),
    );
  }
}
