import 'package:flutter/material.dart';
import 'package:home_rent_app/utlis/constants/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TContact extends StatelessWidget {
  final LatLng _location = const LatLng(37.7749, -122.4194);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 25, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: const Image(
                              image: AssetImage('assets/image/minhthanh.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Garry Allen',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Owner',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.colorTextGray),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      color: AppColors.colorBTContact,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.phone,
                      size: 18,
                      color: AppColors.white,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AppColors.colorBTContact,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Iconsax.messages_2,
                      size: 18,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 25, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 18),
                child: const Text(
                  'Gallery',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                children: [
                  const TImageG(image: 'assets/image/phong1.webp'),
                  const TImageG(image: 'assets/image/phong2.jpeg'),
                  const TImageG(image: 'assets/image/phong3.webp'),
                  Container(
                    margin: EdgeInsets.zero,
                    height: 80,
                    width: 80,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Align(
                            alignment: Alignment.center,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image(
                                image: AssetImage('assets/image/phong4.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        const Positioned(
                          top: 22,
                          left: 20,
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 20,
                          left: 29,
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: Stack(
                  children: [
                    Container(
                      child: SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: GoogleMap(
                            initialCameraPosition: CameraPosition(
                              target: _location,
                              zoom: 14.0,
                            ),
                            markers: {
                              Marker(
                                markerId: const MarkerId('location'),
                                position: _location,
                              ),
                            },
                            zoomControlsEnabled: false,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      height: 80,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0),
                              Color.fromRGBO(255, 255, 255, 1),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 5,
                      left: 20,
                      child: Text(
                        'Rp. 2.500.000.000 / Year',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 28,
                      left: 20,
                      child: Text(
                        'Price',
                        style: TextStyle(
                          color: AppColors.colorTextGray,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 122,
                            height: 43,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(160, 218, 251, 1),
                                  Color.fromRGBO(10, 142, 217, 1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const Row(
                            children: [
                              Text(
                                'Rent Now',
                                style: TextStyle(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TImageG extends StatelessWidget {
  const TImageG({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          height: 80,
          width: 80,
          child: AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
