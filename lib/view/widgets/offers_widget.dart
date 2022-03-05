



import 'package:cars_details_flutter_web/models/offer_model.dart';
import 'package:flutter/material.dart';

import 'offer_card_widget.dart';

class OffersWidget extends StatelessWidget {
   OffersWidget({Key? key}) : super(key: key);

  List<OfferModel> offersList = [
    OfferModel(
      name:"Sara Frank" ,
      price: "£30,000",
      address: "Miami, USA 🇺🇸" ,
      assetAddress: "assets/face1.jpeg",
    ),
    OfferModel(
      name:"Jack Frank" ,
      price: "£50,000",
      address: "Florida, USA 🇺🇸" ,
      assetAddress: "assets/face2.jpeg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        color: Colors.white10,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Offers" , textAlign: TextAlign.start , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Last 1 Week" , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
                    ],
                  ),

                  Row(
                    children:  [

                      Text("04" , style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Container(
                        width: 35,
                        height: 35,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreen[200]!.withOpacity(0.3),
                        ),
                        child: Center(child: Icon(Icons.settings , color: Colors.lightGreen[600])),
                      ),


                    ],
                  )
                ]
            ),
            OfferCardWidget(offerModel: offersList[0],),
            OfferCardWidget(offerModel: offersList[1],),

            Text("See all offers" , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
          ],
        )

    );
  }
}
