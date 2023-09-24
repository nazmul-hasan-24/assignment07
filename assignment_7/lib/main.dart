import 'package:assignment_7/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment Number 07',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textButtonTheme: const TextButtonThemeData(
              style: ButtonStyle(
                  elevation: MaterialStatePropertyAll<double>(1),
                  backgroundColor: MaterialStatePropertyAll(Colors.cyan),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  ),
                  ),
      home: const MyHomePage(),
    );
  }
}


