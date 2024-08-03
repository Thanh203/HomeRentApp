import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class THeader extends StatelessWidget {
  const THeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(color: Color.fromARGB(171, 108, 108, 108)),
                ),
                Row(
                  children: [
                    Text(
                      'Jakarta',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Icon(Iconsax.arrow_down_1_copy),
                  ],
                )
              ],
            ),
            CustomNotificationIcon(),
          ],
        ),
      ),
    );
  }
}

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          child: const Icon(Iconsax.notification_copy, size: 35),
        ),
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
