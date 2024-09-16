import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:imtihon/sahif1.dart'; // Bu joyga kerakli importni qo'shing

class ShoeStore extends StatelessWidget {
  final List<Map<dynamic, dynamic>> shoes = [
    {
      "color": Colors.blue,
      "name": "Blue",
      "price": "\$ 220.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Eng baland
    },
    {
      "color": Colors.red,
      "name": "Red",
      "price": "\$ 180.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorangdan pastroq
    },
    {
      "color": Colors.yellow,
      "name": "Yellow",
      "price": "\$ 200.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Qizil bilan teng
    },
    {
      "color": Colors.green,
      "name": "Green",
      "price": "\$ 210.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorang bilan teng
    },
    {
      "color": Colors.blue,
      "name": "Blue",
      "price": "\$ 220.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Eng baland
    },
    {
      "color": Colors.red,
      "name": "Red",
      "price": "\$ 180.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorangdan pastroq
    },
    {
      "color": Colors.yellow,
      "name": "Yellow",
      "price": "\$ 200.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Qizil bilan teng
    },
    {
      "color": Colors.green,
      "name": "Green",
      "price": "\$ 210.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorang bilan teng
    },
    {
      "color": Colors.blue,
      "name": "Blue",
      "price": "\$ 220.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Eng baland
    },
    {
      "color": Colors.red,
      "name": "Red",
      "price": "\$ 180.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorangdan pastroq
    },
    {
      "color": Colors.yellow,
      "name": "Yellow",
      "price": "\$ 200.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Qizil bilan teng
    },
    {
      "color": Colors.green,
      "name": "Green",
      "price": "\$ 210.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorang bilan teng
    },
    {
      "color": Colors.blue,
      "name": "Blue",
      "price": "\$ 220.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Eng baland
    },
    {
      "color": Colors.red,
      "name": "Red",
      "price": "\$ 180.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorangdan pastroq
    },
    {
      "color": Colors.yellow,
      "name": "Yellow",
      "price": "\$ 200.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Qizil bilan teng
    },
    {
      "color": Colors.green,
      "name": "Green",
      "price": "\$ 210.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorang bilan teng
    },
    {
      "color": Colors.blue,
      "name": "Blue",
      "price": "\$ 220.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Eng baland
    },
    {
      "color": Colors.red,
      "name": "Red",
      "price": "\$ 180.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorangdan pastroq
    },
    {
      "color": Colors.yellow,
      "name": "Yellow",
      "price": "\$ 200.00",
      "image": "rasm/k4.png",
      "height": 2.9, // Qizil bilan teng
    },
    {
      "color": Colors.green,
      "name": "Green",
      "price": "\$ 210.00",
      "image": "rasm/k4.png",
      "height": 2.6, // Havorang bilan teng
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 18, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                size: 30,
              ),
              Icon(
                Icons.menu,
                size: 30,
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nike shoe store",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: StaggeredGrid.count(
                    crossAxisCount: 4, // Umumiy ustunlar soni
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: shoes.map((shoe) {
                      return StaggeredGridTile.count(
                        crossAxisCellCount: 2, // Element kengligi
                        mainAxisCellCount: shoe["height"], // Element balandligi
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Rasm(
                                  rang: shoe["color"],
                                  salom: shoe["image"], // Korrigirovka
                                  nom: shoe["name"], // Korrigirovka
                                  reting: shoe["price"], // Korrigirovka
                                ),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: shoe["color"],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shoe["name"],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            "A April",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 60),
                                      Icon(Icons.check_circle_outline),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 30,
                                  right: -30,
                                  child: Image.asset(
                                    shoe["image"],
                                    fit: BoxFit.cover,
                                    height: 150,
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Text(
                                    shoe["price"],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
