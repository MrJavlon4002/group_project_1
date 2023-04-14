import 'package:flutter/material.dart';

class WeatherInfoItem extends StatelessWidget {
  const WeatherInfoItem({Key? key, required this.imagePath, required this.text}) : super(key: key);


  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          scale: 0.6,
        ),
        const SizedBox(
          height: 10,
        ),
         Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
