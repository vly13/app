import 'package:flutter/material.dart';
import 'package:task2/home_screen.dart';
import 'package:task2/new_home_screen.dart';

class FavScreen extends StatelessWidget {
  List products = [
    {
      "image": 'assets/images/image Product.png',
      "title": 'Product 1',
      "suptitle": '299L.E'
    },
    {
      "image": 'assets/images/image Product (1).png',
      "title": 'Product2',
      "suptitle": '299L.E'
    },
    {
      "image": 'assets/images/image Product (2).png',
      "title": 'Product3',
      "suptitle": '299L.E'
    },
    {
      "image": 'assets/images/image Product (3).png',
      "title": 'Product4',
      "suptitle": '299L.E'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(
                        MaterialPageRoute(
                          builder: (context) {
                            return NewHomeScreen();
                          },
                        ),
                      );
                    },
                    child: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Favorite Prodect',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 700,
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, num) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black26),
                      ),
                      child: Column(
                        children: [
                          Image.asset(products[num]["image"]),
                          Text(products[num]["title"]),
                          Text(
                            products[num]["suptitle"],
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
