


import 'package:cars_details_flutter_web/view/widgets/specification_widget.dart';
import 'package:cars_details_flutter_web/view/widgets/views_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'car_view_widget.dart';
import 'offers_widget.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(flex: 3 , child: CarViewWidget()),
                SizedBox(width: 40,),
                Expanded(flex: 2, child: ViewsWidget())
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(flex: 3 , child: SpecificationWidget()),
                SizedBox(width: 30,),
                Expanded(flex: 2, child: OffersWidget())
              ],
            ),
          ],
        )
      ),
    );
  }
}
