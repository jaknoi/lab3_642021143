import 'package:flutter/material.dart';
import 'package:lab3_642021143/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 236, 165, 72),
            background: Color.fromARGB(255, 255, 0, 187)),
        useMaterial3: true,
      ),
      home: Firstpage(),
    );
  }
}
