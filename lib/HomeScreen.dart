import 'package:flutter/material.dart';
import 'package:heralab3/Screens/HomeScreen.dart';
import 'package:heralab3/Screens/ProfileScreen.dart';
import 'package:heralab3/Screens/Search%20Screen.dart';

import 'Model.dart';
import 'Screens/ChartScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int index=0;
 int currentindex=0;// currentindex or index2 etc kuch b name dy skty ho
var myScreen=[
  HomeScreens(),
  SearchScreen(),
  ChartScreen(),
  ProfileScreen(),


 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: myScreen[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.orange,
        backgroundColor: Colors.purple,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (int index) {
           setState(() {
             currentindex=index;
           });
          },
          items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
       BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
       BottomNavigationBarItem(icon: Icon(Icons.card_travel_sharp),label: 'cart'),
       BottomNavigationBarItem(icon: Icon(Icons.person),label: 'person'),
]
      ),
    );
  }
}
