import 'package:flutter/material.dart';

class TCategory extends StatefulWidget {
  final List<String> items = ['House', 'Hotel', 'Vila', 'Apartment', 'Motel'];


  @override
  _TCategoryState createState() => _TCategoryState();
}

class _TCategoryState extends State<TCategory> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12.0, right: 0, top: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: widget.items.asMap().entries.map((entry) {
                    int index = entry.key;
                    String item = entry.value;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: selectedIndex == index
                              ? const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(174, 225, 255, 1),
                                    Color.fromRGBO(82, 192, 255, 1),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                )
                              : const LinearGradient(
                                  colors: [
                                    Color.fromARGB(22, 158, 158, 158),
                                    Color.fromARGB(22, 158, 158, 158),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent, 
                            shadowColor: selectedIndex == index
                                ? Colors.blueGrey.withOpacity(0.2)
                                : const Color.fromARGB(0, 158, 158, 158),
                            elevation: 5.0,
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            constraints: const BoxConstraints(
                                maxWidth: 100, minHeight: 50),
                            child: Text(
                              item,
                              style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : const Color.fromARGB(76, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
