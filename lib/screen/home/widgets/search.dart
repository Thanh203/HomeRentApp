import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TSearch extends StatefulWidget {
  const TSearch({super.key});

  @override
  State<TSearch> createState() => _TSearchState();
}

class _TSearchState extends State<TSearch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            margin: const EdgeInsets.only(left: 18.0, right: 8.0),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(30, 225, 225, 225),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  labelText: 'Sreach address, or near you',
                  border: InputBorder.none,
                  prefixIcon: Icon(Iconsax.search_normal_1_copy),
                  labelStyle:
                      TextStyle(color: Color.fromARGB(154, 138, 138, 138))),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(left: 2.0, right: 18.0),
            padding: const EdgeInsets.only(left: 8.0, right: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(160, 218, 251, 1),
                  Color.fromRGBO(10, 142, 217, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            height: 55,
            child: const Icon(
              Iconsax.setting_5,
              size: 35,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
