import 'package:flutter/material.dart';
import 'package:home_rent_app/screen/home/widgets/body_best.dart';
import 'package:home_rent_app/screen/home/widgets/body_near.dart';
import 'package:home_rent_app/screen/home/widgets/header.dart';
import 'package:home_rent_app/screen/home/widgets/category.dart';
import 'package:home_rent_app/screen/home/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const THeader(),
              const TSearch(),
              TCategory(),
              TBodyNear(),
              const TBodyBest(),
            ],
          ),
        )
      ),
    );
  }
}
