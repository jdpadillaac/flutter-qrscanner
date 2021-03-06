import 'package:flutter/material.dart';
import 'package:qrreaderapp/src/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'rq-scanner',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage()
      },
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent
      ),
    );
  }
}
