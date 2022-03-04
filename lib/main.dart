import 'package:cars_details_flutter_web/view/screens/car_details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Car Details',
      debugShowCheckedModeBanner: false,
      home: CardDetailsScreen()
    );
  }
}

