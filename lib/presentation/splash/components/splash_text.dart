import 'package:flutter/material.dart';

class SplashText extends StatelessWidget {
  final String text;

  const SplashText({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: const Color(0xffa5a5a5),
      ),
      textAlign: TextAlign.center,
    );
  }
}
