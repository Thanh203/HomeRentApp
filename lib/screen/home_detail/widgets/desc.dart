import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_rent_app/utlis/constants/colors.dart';

class TDesc extends StatelessWidget {
  const TDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
            'Description',
            style: TextStyle(
              fontSize: 18,
            ),
          ),),
          
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.colorTextGray,
                  ),
                ),
                TextSpan(
                  text: ' Show More',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 80, 176, 255),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
