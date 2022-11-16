import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task2/fav_screen.dart';
import 'package:task2/product_detail.dart';

class NewHomeScreen extends StatelessWidget {
  List names = [
    {
      "images": "assets/images/Group.png",
      "title": "man shirts",
      "inStock": false
    },
    {
      "images": "assets/images/Group.png",
      "title": "man shirts",
      "inStock": false
    },
    {
      "images": "assets/images/Group.png",
      "title": "man shirts",
      "inStock": false
    },
    {
      "images": "assets/images/Group.png",
      "title": "man shirts",
      "inStock": false
    },
    {
      "images": "assets/images/Group.png",
      "title": "man shirts",
      "inStock": false
    },
    {
      "images": "assets/images/Group.png",
      "title": "man shirts",
      "inStock": false
    },
    {
      "images": "assets/images/Group.png",
      "title": "man shirts",
      "inStock": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "search",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return FavScreen();
                        },
                      ),
                    );
                  },
                  child: Icon(
                    Icons.favorite_border_sharp,
                    size: 30,
                  ),
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                ),
              ],
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                ),
                items: ['assets/images/Promotion Image.png'].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        // decoration: BoxDecoration(color: Colors.amber),
                        child: Image.asset(i),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "more Category",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset(names[index]["images"]),
                          backgroundColor: Colors.white,
                        ),
                        Text('man shirt')
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'flash sale',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "see more",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey)),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/images/image Product.png'),
                        Text('FS - Nike Air Max 270 React'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey)),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/images/image Product(1).png'),
                        Text('FS - QUILTED MAXI CROS'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/images/image Product.png'),
                        Text('FS - Nike Air Max 270 React'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'mega sale',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "see more",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset('assets/images/image Product (2).png'),
                      Text('MS - Nike Air Max 270 React'),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return ProductsDetail();
                                },
                              ),
                            );
                          },
                          child: Image.asset(
                              'assets/images/image Product (3).png')),
                      Text('MS - Nike Air Max 270 React'),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset('assets/images/image Product (2).png'),
                      Text('MS - Nike Air Max 270 React'),
                    ],
                  ),
                ),
              ]),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Image.asset('assets/images/image 51.png'),
            ),
            SizedBox(height: 10),
          ]),
        ),
      ),
    );
  }
}
