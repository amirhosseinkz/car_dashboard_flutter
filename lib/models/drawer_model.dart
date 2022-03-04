

import 'package:flutter/cupertino.dart';

class DrawerModel{

  DrawerModel({required this.title , required this.icon , this.isActive = false});

  String title;
  IconData icon;
  bool isActive;


}