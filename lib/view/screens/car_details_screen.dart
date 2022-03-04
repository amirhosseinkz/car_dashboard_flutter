

import 'package:cars_details_flutter_web/view/widgets/details_widget.dart';
import 'package:cars_details_flutter_web/view/widgets/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black,
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1, child:  DrawerWidget(),),

            Expanded(
              flex: 5, child:  DetailsWidget(),),
          ],
        ),
      ),
    );
  }
}
