import 'package:flutter/material.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Reader',
      theme: LightTheme().getLightTheme(),
      home:  Container(),
    );
  }
}