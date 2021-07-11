import 'package:flutter/material.dart';
import 'package:mock_dentaldost/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mock DentalDost",
      home: MainPage(),
      //there are only one screen so I didn't use route method
    );
  }
}
