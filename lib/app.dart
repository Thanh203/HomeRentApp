import 'package:flutter/material.dart';
import 'package:home_rent_app/screen/home/home_screen.dart';
import 'package:home_rent_app/screen/home_detail/home_detail.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Rent App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 1, 0, 4)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        '/home_detail': (context) => const HomeDetailScreen(),
      },
    );
  }
}

