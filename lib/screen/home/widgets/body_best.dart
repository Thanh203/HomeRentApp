import 'package:flutter/material.dart';

class TBodyBest extends StatelessWidget {
  const TBodyBest({super.key});

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
                    'Best for you',
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
            margin: const EdgeInsets.only(left: 24.0, right: 0, top: 15),
            height: 270,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const <Widget>[
                TBest(
                  image: 'assets/image/hotel1.jpeg',
                  name: 'Orchad House',
                  price: '2.500.000.000',
                  bed: '6',
                  lavabo: '4',
                ),
                TBest(
                  image: 'assets/image/hotel1.jpeg',
                  name: 'The Hollies House',
                  price: '2.000.000.000',
                  bed: '5',
                  lavabo: '2',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TBest extends StatelessWidget {
  const TBest({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.bed,
    required this.lavabo,
  });

  final String image;
  final String name;
  final String price;
  final String bed;
  final String lavabo;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 20, bottom: 20),
        width: 305,
        height: 75,
        child: Row(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    height: 70,
                    width: 74,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. $price / Year',
                      style: const TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 28, 171, 253)),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.bed_outlined,
                            size: 24, color: Color.fromARGB(132, 0, 0, 0)),
                        const SizedBox(width: 10),
                        Text(
                          '$bed Bedroom',
                          style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(132, 0, 0, 0)),
                        ),
                        const SizedBox(width: 30),
                        const Icon(Icons.bathroom_outlined,
                            size: 24, color: Color.fromARGB(132, 0, 0, 0)),
                        const SizedBox(width: 10),
                        Text(
                          '$lavabo Bathroom',
                          style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(132, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
