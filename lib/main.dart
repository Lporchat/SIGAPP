import 'package:flutter/material.dart';
import 'package:leite/telas/homeScream.dart';
import 'telas/loginScream.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: loginScreem(),
      home: HomeScream(),
    );
  }
}
