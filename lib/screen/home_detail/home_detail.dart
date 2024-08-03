import 'package:flutter/material.dart';
import 'package:home_rent_app/screen/home_detail/widgets/contact.dart';
import 'package:home_rent_app/screen/home_detail/widgets/desc.dart';
import 'package:home_rent_app/screen/home_detail/widgets/header_hdetail.dart';

class HomeDetailScreen extends StatefulWidget {
  const HomeDetailScreen({super.key});

  @override
  State<HomeDetailScreen> createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            THeaderHDetail(),
            TDesc(),
            TContact(),
          ],
        ),
      )),
    );
  }
}
