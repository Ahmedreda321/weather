// ignore: file_names
import 'package:flutter/material.dart';

class Noweaterscreen extends StatelessWidget {
  const Noweaterscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'No weather yet',
        style: TextStyle(
            fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
