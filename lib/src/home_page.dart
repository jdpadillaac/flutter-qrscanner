import 'package:flutter/material.dart';
import 'package:qrreaderapp/src/adress_page.dart';
import 'package:qrreaderapp/src/map_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _callPage(0),
      bottomNavigationBar: _bottomNavigationBar(),
    );
}

  Widget _callPage(int currentPage) {
    switch(currentPage) {
      case 0: return MapsPage();
      case 1: return AddressPage();
      default: return MapsPage();
    }
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Maps'),
        BottomNavigationBarItem(
            icon: Icon(Icons.brightness_5), label: 'Direcciones')
      ],
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
