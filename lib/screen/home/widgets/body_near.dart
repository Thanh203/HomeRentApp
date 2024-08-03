import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TBodyNear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 24.0, right: 24, top: 25),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Near from you',
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text(
                    'See more',
                    style: TextStyle(color: Color.fromARGB(171, 108, 108, 108)),
                  ),
                ])
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24.0, right: 0, top: 25),
            height: 270,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TNear(
                  image: 'assets/image/hotel1.jpeg',
                  onTap: () {
                    Navigator.pushNamed(context, '/home_detail');
                  },
                  khoangCach: '1.8',
                  nameHouse: 'Dreamsville House',
                  name: 'JL. Sultan Iskandar Muda',
                ),
                TNear(
                  image: 'assets/image/hotel2.jpeg',
                  onTap: () {},
                  khoangCach: '1.8',
                  nameHouse: 'Ascot House',
                  name: 'JL. Cilan Tengah',
                ),
                TNear(
                  image: 'assets/image/hotel3.jpeg',
                  onTap: () {},
                  khoangCach: '1.8',
                  nameHouse: 'Dreamsville House',
                  name: 'JL. Sultan Iskandar Muda',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TNear extends StatelessWidget {
  const TNear({
    super.key,
    required this.image,
    required this.khoangCach,
    required this.nameHouse,
    required this.name,
    required this.onTap,
  });

  final String image;
  final String khoangCach;
  final String nameHouse;
  final String name;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        width: 220,
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 0.78,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 10,
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
              bottom: 215,
              left: 90,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 93,
                    height: 39,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(115, 106, 106, 106),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Row(
                    children: [
                      const Column(
                        children: [
                          Icon(
                            Iconsax.location_copy,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        '$khoangCach km',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 35,
              left: 10,
              child: Text(
                nameHouse,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                name,
                style: const TextStyle(
                  color: Color.fromARGB(255, 209, 209, 209),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
