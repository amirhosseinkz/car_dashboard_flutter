


import 'package:cars_details_flutter_web/models/drawer_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerSectionWidget extends StatelessWidget {
  const DrawerSectionWidget({Key? key, required this.drawerModel}) : super(key: key);

  final DrawerModel drawerModel;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10 , 20 , 0 , 20),
      color: drawerModel.isActive ? Colors.greenAccent : Colors.transparent,
      child: Row(
        children: [
          Icon( drawerModel.icon, color: drawerModel.isActive ? Colors.black : Colors.white),
          SizedBox(width: 10,),
          Text(drawerModel.title , style: TextStyle(color: drawerModel.isActive ? Colors.black : Colors.white),),
        ],
      ),
    );
  }
}
