import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      onSubmitted: (value) {
        var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
        getWeatherCubit.fetchWeather(city: value);
        Navigator.pop(context);
      },
      style: _textFieldTextStyle,
      decoration: InputDecoration(
        hintText: 'SEARCH LOCATION',
        hintStyle: _hintTextStyle,
        filled: true,
        fillColor: Colors.grey.shade300,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 20.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  static const TextStyle _textFieldTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'Montserrat',
  );

  static const TextStyle _hintTextStyle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontFamily: 'Montserrat',
  );
}
