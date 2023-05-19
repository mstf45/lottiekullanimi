import 'package:flutter/material.dart';
import 'package:lottiekullanimi/lottie_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LottiePages(),
    );
  }
}