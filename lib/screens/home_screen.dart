import 'package:flutter/material.dart';
import 'package:traveltourism/screens/profile.dart';


import 'attractions.dart';
import 'homepage.dart';
import 'hotel.dart';
import 'myhome.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;

  final _pageOptions = [
    MyHome(),
    Attractions(),
    Hotel(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_location, size: 30),
                title: Text('Attractions')),
            BottomNavigationBarItem(
                icon: Icon(Icons.hotel, size: 30), title: Text('Hotels')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, size: 30),
                title: Text('Profile')),

          ],
          selectedItemColor: Colors.red,
          elevation: 5.0,
          unselectedItemColor: Colors.green[900],
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          }),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const HomePage())),
          child: const Icon(Icons.add),
        )
    );
  }
}
