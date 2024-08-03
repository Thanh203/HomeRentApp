import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class THeaderHDetail extends StatelessWidget {
  const THeaderHDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 410,
      height: 380,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1.05,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: const Image(
                image: AssetImage('assets/image/hotel1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0),
                      Color.fromRGBO(0, 0, 0, 1),
                    ],
                  ),
                  borderRadius:
                      BorderRadius.circular(20.0), 
                ),
              ),
            ),
          Positioned(
              top: 25,
              left: 20,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(52, 0, 0, 0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Iconsax.arrow_left_2_copy),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.white,
                ),
              )),
          Positioned(
              top: 25,
              right: 20,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(52, 0, 0, 0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Iconsax.archive_1_copy),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.white,
                ),
              )),
          const Positioned(
            bottom: 105,
            left: 20,
            child: Text(
              'Dreamsville House',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          const Positioned(
            bottom: 80,
            left: 20,
            child: Text(
              'JL. Sultan Iskandar Muda, Jakarta selatan',
              style: TextStyle(
                color: Color.fromARGB(255, 209, 209, 209),
                fontSize: 14,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(80, 252, 252, 252),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.bed_outlined,
                    size: 24,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  '6 Bedroom',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 209, 209, 209)),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(80, 252, 252, 252),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.bathroom_outlined,
                    size: 24,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  '4 Bathroom',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 209, 209, 209)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
