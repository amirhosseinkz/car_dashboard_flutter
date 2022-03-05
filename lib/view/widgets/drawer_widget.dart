


import 'package:cars_details_flutter_web/models/drawer_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer_section_widget.dart';

class DrawerWidget extends StatefulWidget {
   DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final bool isActive = false;

  List<DrawerModel> drawerList = [
    DrawerModel(
        icon:  Icons.card_travel ,
        title: "Buy Chars",
        isActive: false,

    ),
    DrawerModel(
        icon:  Icons.local_grocery_store_outlined  ,
        title: "Sell Chars",
        isActive: false
    ),
    DrawerModel(
        icon:  Icons.favorite_outline_outlined  ,
        title: "Liked Chars",
        isActive: false
    ),
    DrawerModel(
        icon:  Icons.chat_outlined  ,
        title: "Messages",
        isActive: false
    ),
    DrawerModel(
        icon:  Icons.person ,
        title: "Profiles",
        isActive: false
    ),
  ];

   activeSection(int index) {
     setState(() {


     for (var element in drawerList) {
       element.isActive = false;
     }
     drawerList[index].isActive = true;
     });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30 , 30 , 0 , 30),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text('UpCars' , style: TextStyle(color: Colors.white , fontSize: 22 , fontWeight: FontWeight.bold),),


            const SizedBox(height: 100,),
            Expanded(
              flex: 3,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context , index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: (){
                          activeSection(index);
                          },
                        child: DrawerSectionWidget(
                          drawerModel: DrawerModel(
                              icon:  drawerList[index].icon,
                              title: drawerList[index].title,
                              isActive: drawerList[index].isActive,

                          ),),
                      ),
                    );
                  },
              itemCount: 5,
              )
            ),

            const Spacer(),
            InkWell(
              onTap: () {

              },
              child: Row(
                children: [
                  Icon(Icons.logout , color: Colors.white),
                  SizedBox(width: 10,),
                  Text('Log Out' , style: TextStyle(color: Colors.white),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
