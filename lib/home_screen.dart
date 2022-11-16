import 'package:flutter/material.dart';
import 'package:task2/login_pge.dart';
import 'package:task2/register_page.dart';
import 'package:task2/new_home_screen.dart';
import 'package:task2/fav_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int navigationindex=0;

// List<Widget> screenList = [
//
//   new_home_screen(),
//   search(),
//   cart(),
//   offer(),
//   person(),
// ];


@override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            navigationindex= index;
          });
        },
        currentIndex: navigationindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"home" ),
          BottomNavigationBarItem(icon: Icon(Icons.search),label:"search" ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer),label:"offer" ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "person"),
        ],
      ),
    );
  }
}
