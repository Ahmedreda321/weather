import 'package:flutter/material.dart';
import 'package:weather_app/widgets/search_screen_widgets/close_button.dart';
import 'package:weather_app/widgets/search_screen_widgets/search_text_field.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: Colors.white,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CloseButtonWidget(),
          SizedBox(height: 20),
          SearchTextField(),
        ],
      ),
    );
  }
}
