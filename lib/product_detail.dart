import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductsDetail extends StatelessWidget {
  List mightLike = [
    {
      "image": "assets/images/image Product.png",
      "title": "FS - Nike Air Max 270 React...",
      "price": "\$299,43",
    },
    {
      "image": "assets/images/image Product(1).png",
      "title": "FS - QUILTED MAXI CROS...",
      "price": "\$299,43",
    },
    {
      "image": "assets/images/image Product.png",
      "title": "FS - Nike Air Max 270 React...",
      "price": "\$299,43",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
              ),
              items: ['assets/images/Product Image(4).png'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset(i),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "Nike Air Zoom Pegasus 36 Miami",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Color(0xff223263)),
                  ),
                ),
                Icon(Icons.notifications_active),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "\$299,43",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Select Size",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff223263)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  "Select Color",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff223263)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  "Specification",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff223263)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Text Shown
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Shown:",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    "Laser Blue/Anthracite/Watermelon/White",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Style:",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "CD0113-400",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "The Nike Air Max 270 React ENG combines a "
              "full-length React foam midsole with a 270 Max Air"
              " unit for unrivaled comfort and a striking visual "
              "experience.",
              style: TextStyle(fontSize: 12, color: Color(0xff9098B1)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Review Product",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Text(
                  "See More",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/images/Profile Picture.png'),
                  ),
                  title: Text("James Lawson"),
                  subtitle: Text(
                      "air max are always very comfortable fit, clean and just perfect in every way."
                      " just the box was too small and scrunched the sneakers up a little bit,"
                      " not sure if the box was always this small but the 90s are"
                      " and will always be one of my favorites."),
                  // trailing: Text("December 10, 2016"),
                  // shape: Border.all(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Product Picture03.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/Product Picture01.png'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "December 10, 2016",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "You Might Also Like",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mightLike.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset(mightLike[index]["image"]),
                      Text(mightLike[index]["title"]),
                      Text(
                        mightLike[index]["price"],
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
